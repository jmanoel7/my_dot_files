# -*- coding: utf8 -*-
# XML Helper for GEdit
#
# Copyright (c) 2007 Matej Cepl <matej@ceplovi.cz>
# Additional Author : Ajith Sen G. S. <ajithsengs@gmail.com>
# Additional Author : Oliver Sauder <os@esite.ch>
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
import gettext
import sys

from gi.repository import GObject, Gedit, Gio, Gtk
from libxmlhelper import GUI, XML
from lxml import etree

Debug = False


def print_debug(string):
    if Debug:
        print >> sys.stderr, string


class Endness:
    end = 0
    start = 1
    single = 2

class XMLHelperAppActivatable(GObject.Object, Gedit.AppActivatable):
    __gtype_name__ = 'XMLHelperPlugin'

    app = GObject.property(type=Gedit.App)

    def __init__(self):
        GObject.Object.__init__(self)

    def do_activate(self):
        self.app.set_accels_for_action("win.end_tag", ['<Ctrl>e'])
        self.app.set_accels_for_action("win.last_tag", ['<Ctrl>r'])
        self.app.set_accels_for_action("win.indent_xml", ['<Ctrl><Shift>f'])

        # Translate actions below, hardcoding domain here to avoid
        # complications now
        lambda s: gettext.dgettext('devhelp', s)

        self.menu_ext = self.extend_menu("tools-section")
        menu_model = Gio.Menu()

        for menu_name, action in (
            ('EndTag', 'end_tag'),
            ('LastTag', 'previous_tag'),
            ('ValidateXML', 'validate_xml'),
            ('ValidateSchema', 'validate_schema'),
            ('ConvertXML', 'convert_xml'),
            ('GenerateXML', 'generate_xml'),
            ('IndentXML', 'indent_xml'),
        ):
            item = Gio.MenuItem.new(_(menu_name), "win.%s" % action)
            menu_model.append_item(item)

        submenu = Gio.MenuItem.new_submenu('_XML Helper', menu_model)
        self.menu_ext.append_menu_item(submenu)

    def do_deactivate(self):
        self.app.set_accels_for_action("win.end_tag", [])
        self.app.set_accels_for_action("win.last_tag", [])
        self.app.set_accels_for_action("win.indent_xml", [])
        self.menu_ext = None


class XMLHelperWindowActivatable(GObject.Object, Gedit.WindowActivatable):
    window = GObject.property(type=Gedit.Window)

    def __init__(self):
        GObject.Object.__init__(self)
        self._dialog = None

    def do_activate(self):
        action = Gio.SimpleAction(name="end_tag")
        action.connect('activate', self.end_tag)
        self.window.add_action(action)

        action = Gio.SimpleAction(name="last_tag")
        action.connect('activate', self.previous_tag)
        self.window.add_action(action)

        action = Gio.SimpleAction(name="validate_xml")
        action.connect('activate', self.validate_xml)
        self.window.add_action(action)

        action = Gio.SimpleAction(name="validate_schema")
        action.connect('activate', self.validate_schema)
        self.window.add_action(action)

        action = Gio.SimpleAction(name="convert_xml")
        action.connect('activate', self.convert_xml)
        self.window.add_action(action)

        action = Gio.SimpleAction(name="generate_xml")
        action.connect('activate', self.generate_xml)
        self.window.add_action(action)

        action = Gio.SimpleAction(name="indent_xml")
        action.connect('activate', self.indent_xml)
        self.window.add_action(action)

        # run whatever needs to be run FIXME
        self._update()

    def do_deactivate(self):
        pass

    def do_update_state(self):
        # update state
        self._update()

    def __get_tag(self, iter):
        if not(iter.forward_char()):
            raise RuntimeError("we are in trouble")
        search_ret = iter.forward_search(">",
                                         Gtk.TextSearchFlags.TEXT_ONLY, None)
        if search_ret:
            beg_end, end_end = search_ret
            ret_str = iter.get_text(beg_end)
            if (ret_str[-1] == "/") or (ret_str[:3] == "!--"):
                has_end_tag = Endness.single
                ret_str = ret_str.rstrip("/")
            elif ret_str[0] == "/":
                has_end_tag = Endness.end
                ret_str = ret_str.lstrip("/")
            else:
                has_end_tag = Endness.start
            # cut element's parameters
            ret_str = ret_str.split()[0]
            print_debug("tag found is %s and the value of has_end_tag is %s" %
                        (ret_str, has_end_tag))
            return ret_str, has_end_tag
        else:
            raise IOError("Never ending tag at line %d" % (iter.get_line()+1))

    def find_last_endable_tag(self, position):
        tag_stack = []
        res = position.backward_search("<", Gtk.TextSearchFlags.TEXT_ONLY,
                                       None)
        while res:
            start_match, end_match = res
            tag, is_end_tag = self.__get_tag(start_match)
            if is_end_tag == Endness.end:
                tag_stack.append(tag)
                print_debug("Push tag '%s'" % tag)
            elif is_end_tag == Endness.single:
                print_debug("Ignoring single tag '%s'" % tag)
            elif len(tag_stack) != 0:  # stack not empty
                popped_tag = tag_stack.pop()
                print_debug("Popped tag '%s'" % popped_tag)
                if popped_tag != tag:
                    raise IOError("mismatching tags.\nFound %s" +
                                  " and expecting %s." % (tag, popped_tag))
            else:  # stack is empty and this is not end tag == we found it
                print_debug("We found tag '%s'" % tag)
                return tag
            start_match.backward_char()
            res = start_match.backward_search("<",
                                              Gtk.TextSearchFlags.TEXT_ONLY,
                                              None)

        # not totally sure what following means, but doesn't look right to me
        if len(tag_stack) != 0:
            raise IOError("whatever")
        if not(res):  # There is no open tag in the current buffer
            return None

    def end_tag(self, a, b):
        buffer = self.window.get_active_view().get_buffer()
        inp_mark = buffer.get_iter_at_mark(buffer.get_insert())
        tagname = self.find_last_endable_tag(inp_mark)
        if tagname:
            buffer.insert(inp_mark, '</%s>' % tagname)

    def previous_tag(self, a, b):
        buffer = self.window.get_active_view().get_buffer()
        inp_mark = buffer.get_iter_at_mark(buffer.get_insert())
        res = inp_mark.backward_search("<",
                                       Gtk.TextSearchFlags.TEXT_ONLY, None)
        if res:
            start_match, end_match = res
            tag, is_end_tag = self.__get_tag(start_match)
            if is_end_tag == Endness.end:
                buffer.insert(inp_mark, '<%s>' % tag)

#        # store per window data in the window object
#        windowdata = dict()
#        window.set_data("XMLHelperWindowDataKey", windowdata)
#        windowdata["ui_id"] = manager.add_ui_from_string(end_tag_str)

    def _remove_menu(self):
        manager = self.window.get_ui_manager()
        manager.remove_ui(self._ui_id)
        manager.remove_action_group(self._action_group)
        manager.ensure_update()

    def _update(self):
        tab = self.window.get_active_tab()
#        self._action_group.set_sensitive(tab is not None)

        if not tab and self._dialog and \
                self._dialog.get_transient_for() == self.window:
            self._dialog.response(Gtk.ResponseType.CLOSE)

    def validate_xml(self, action):
        """Function for validating an XML document against a W3C schema"""

        g = GUI()

        msg = "Save before continuing"
        if g.msgBox(msg, cont=True) is False:
            return

        """Select a W3C schema"""
        msg = "Select Schema File"
        file_desc = "XML Schema"
        file_type = "*.xsd"
        schema_file = g.openFile(msg, file_desc, file_type)
        if schema_file is False:
            return

        xml_file = self.window.get_active_document().get_uri_for_display()

        """Validate the XML document against the W3C schema"""
        try:
            xmlschema_doc = etree.parse(schema_file)
            xmlschema = etree.XMLSchema(xmlschema_doc)
        except Exception, e:
            msg = schema_file+" is not a valid schema file\n\n"+str(e)
        else:
            try:
                inp_doc = etree.parse(xml_file)
            except Exception, e:
                error_message = "%s: %s" % (e.__class__.__name__, e.msg)
                msg = xml_file + " is not a valid XML file\n\n"+error_message
            else:
                try:
                    xmlschema.assertValid(inp_doc)
                except Exception, e:
                    msg = "This document is not valid for " + \
                        schema_file + "\n\n"+str(e)
                else:
                    msg = "This document is valid for " + schema_file

        g.msgBox(msg)

    def validate_schema(self, action):
        """Function for validating a W3C schema"""

        g = GUI()

        schema_file = self.window.get_active_document().get_uri_for_display()

        """Validate the Schema against W3C standards"""
        try:
            xmlschema_doc = etree.parse(schema_file)
            etree.XMLSchema(xmlschema_doc)
        except Exception as e:
            msg = "Invalid Schema\n\n"+str(e)
        else:
            msg = "Valid Schema"

        g.msgBox(msg)

    def convert_xml(self, action):
        """Function for generating a schema file from an XML document"""

        g = GUI()
        x = XML()

        input_file = self.window.get_active_document().get_uri_for_display()

        """Validate the XML Document against W3C standards"""
        try:
            tree = etree.parse(open(input_file))
        except Exception, e:
            error_message = "%s: %s" % (e.__class__.__name__, e.msg)
            msg = input_file + " is not a valid XML file\n\n" + error_message
            g.msgBox(msg)
            return

        msg = "Save before continuing"
        if g.msgBox(msg, cont=True) is False:
            return

        """Select a schema file to save to"""
        msg = "Save Schema File"
        file_desc = "XML Schema"
        file_type = "*.xsd"
        output_file = g.saveFile(msg, file_desc, file_type)
        if output_file is False:
            return

        x.root_schema_element = x.create_schema_element('schema',
                                                        root_element=True)
        x.root_schema_element.attrib['elementFormDefault'] = "qualified"

        root_element = tree.getroot()
        x.xml_walk(root_element, x.xml_pass1)
        x.xml_walk(root_element, x.xml_pass2)
        x.xml_walk(root_element, x.xml_pass3)
        x.xml_walk(root_element, x.xml_pass4)
        doc = etree.ElementTree(x.root_schema_element)
        x.writeFile(output_file, doc)

    def generate_xml(self, action):
        """Function for generating an XML document from a W3C schema"""

        g = GUI()
        x = XML()

        """Validate the Schema against W3C standards"""
        input_file = self.window.get_active_document().get_uri_for_display()
        try:
            tree = etree.parse(open(input_file))
        except Exception, e:
            error_message = "%s: %s" % (e.__class__.__name__, e.msg)
            msg = input_file + " is not a valid Schema file\n\n" + \
                error_message
            g.msgBox(msg)
            return

        msg = "Save before continuing"
        if g.msgBox(msg, cont=True) is False:
            return

        """Select an XML file to save to"""
        msg = "Save XML File"
        file_desc = "XML Document"
        file_type = "*.xml"
        output_file = g.saveFile(msg, file_desc, file_type)
        if output_file is False:
            return

        root_element = tree.getroot()
        x.xml_walk(root_element, x.schema_preprocess)

        root = x.create_random_element(x.ROOT_ELEMENT)
        if root is False:
            return
        doc = etree.ElementTree(root)
        x.writeFile(output_file, doc)

    def indent_xml(self, action, b):
        """Function for indenting an XML document"""

        doc = self.window.get_active_document()
        text = doc.get_text(doc.get_start_iter(), doc.get_end_iter(), True)
        xml_document = etree.fromstring(text)
        encoding = doc.get_encoding().get_charset()
        xml = etree.tostring(xml_document, pretty_print=True,
                             xml_declaration=True, encoding=encoding)
        doc.set_text(xml)

    def deactivate(self):
        windowdata = self.window.get_data("XMLHelperWindowDataKey")
        manager = self.window.get_ui_manager()
        manager.remove_ui(windowdata["ui_id"])
        manager.remove_action_group(windowdata["action_group"])

    def update_ui(self):
        view = self.window.get_active_view()
        windowdata = self.window.get_data("XMLHelperWindowDataKey")
        windowdata["action_group"].set_sensitive(bool(view
                                                 and view.get_editable()))
