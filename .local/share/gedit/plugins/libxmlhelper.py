"""
-*- coding: utf8 -*-
Library containing functions for generating schema and XML documents called
in XML Helper for GEdit

Author : Ajith Sen G. S. <ajithsengs@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
"""
import random
import re
import time

from datetime import datetime, timedelta

from gi.repository import Gtk
from lxml import etree


class XML(object):
    __XML_NAMESPACE__ = "http://www.w3.org/2001/XMLSchema"
    __XML__ = "{%s}" % __XML_NAMESPACE__

    def __init__(self):
        self.INFO = {}
        self.ROOT_ELEMENT = None
        self.ELEMENTS = {}
        self.elements = {}
        self.root_schema_element = None

    """Module for creating schema from XML Document """

    def create_schema_element(self, s, root_element=False, parent=None):
        """
        It creates and return a schema element
        """
        if root_element:
            return etree.Element(xml.__XML__ + s)
        return etree.SubElement(parent, xml.__XML__ + s)

    def is_boolean(self, value):
        """
        Function for checking whether the boolean is of decimal type
        """
        if value == "true" or value == "false":
            return "xs:boolean"
        else:
            return "xs:string"

    def is_time(self, value):
        """Function for checking whether the value is of time type"""

        for format in ("%H:%M:%S.%f", "%H:%M:%S", "%H:%M:%S.%f+%H:%M",
                       "%H:%M:%S.%f-%H:%M", "%H:%M:%S+%H:%M",
                       "%H:%M:%S-%H:%M"):
            try:
                time.strptime(value, format)
                return "xs:time"
            except:
                pass

        return self.is_boolean(value)

    def is_date(self, value):
        """Functions for checking whether the value is of date type"""

        for format in ("%Y-%m-%d", "%Y-%m-%d+%H:%M", "%Y-%m-%d-%H:%M"):
            try:
                time.strptime(value, format)
                return "xs:date"
            except:
                pass

        return self.is_time(value)

    def is_datetime(self, value):
        """Functions for checking whether the value is of datetime type"""

        for format in ("%Y-%m-%dT%H:%M:%S.%f", "%Y-%m-%dT%H:%M:%S",
                       "%Y-%m-%dT%H:%M:%S.%f+%H:%M",
                       "%Y-%m-%dT%H:%M:%S.%f-%H:%M",
                       "%Y-%m-%dT%H:%M:%S+%H:%M", "%Y-%m-%dT%H:%M:%S-%H:%M"):
            try:
                time.strptime(value, format)
                return "xs:dateTime"
            except:
                pass

        return self.is_date(value)

    def is_decimal(self, value):
        """Function for checking whether the value is of decimal type"""

        try:
            float(value)
            return "xs:decimal"
        except:
            return self.is_datetime(value)

    def is_integer(self, value):
        """Function for checking whether the value is of integer type"""

        try:
            int(value)
            return "xs:integer"
        except:
            return self.is_decimal(value)

    def get_type(self, value, current_type):
        """Function for getting the type of an element or attribute"""

        if current_type == "":
            return self.is_integer(value)

        if current_type == "xs:boolean":
            return self.is_boolean(value)

        if current_type == "xs:integer":
            return self.is_integer(value)

        if current_type == "xs:decimal":
            return self.is_decimal(value)

        if current_type == "xs:dateTime":
            return self.is_datetime(value)

        return current_type

    def xml_walk(self, root, callback=None, path=''):
        """Function for walking through the tree structure"""

        tag = str(root.tag)
        if tag == '<built-in function Comment>':
            return
        path = "%s/%s" % (path, root.tag)

        if callback:
            callback(root, path)

        children = root.getchildren()
        if children:
            for child in children:
                self.xml_walk(child, callback, path)

    def xml_pass1(self, root, path):
        """Pass 1 of XML tree"""

        children = [child for child in root.getchildren()
                    if str(child.tag) != '<built-in function Comment>']
        attributes = root.keys()

        try:
            element_info = self.elements[path]
            element = element_info['element']
        except:
            element = self.create_schema_element('element',
                                                 parent=self.
                                                 root_schema_element)
            element.attrib['name'] = str(root.tag)
            element_info = {'element': element}
            self.elements[path] = element_info

            if children or len(attributes):
                complexTypeElement = self.create_schema_element('complexType',
                                                                parent=element)
                sequenceElement = None
                if children:
                    sequenceElement = \
                        self.create_schema_element('sequence',
                                                   parent=complexTypeElement)

                element_info['complexTypeElement'] = complexTypeElement
                element_info['sequenceElement'] = sequenceElement

                element_info['hasChildren'] = True
            else:
                element_info['hasChildren'] = False

        else:
            if children or len(attributes):
                complexTypeElement = element_info['complexTypeElement']
                sequenceElement = None
                if children:
                    sequenceElement = element_info['sequenceElement']

        try:
            children_info = element_info['children']
        except:
            element_info['children'] = {}
            children_info = element_info['children']

        if children:
            element_info['hasChildren'] = True

            child_tags = [child.tag for child in children]

            for child in children:
                child_path = "%s/%s" % (path, child.tag)

                try:
                    children_info[child_path]
                except:
                    children_info[child_path] = {
                        'min': 1,
                        'max': 0,
                        'created': False}

                child_info = children_info[child_path]

                n = child_tags.count(child.tag)
                child_info['min'] = min(child_info['min'], n)
                child_info['max'] = max(child_info['max'], n)

            for child in children:
                child_path = "%s/%s" % (path, child.tag)

                if children_info[child_path]['created']:
                    continue

                child_info = children_info[child_path]
                child_element = self.create_schema_element('element',
                                                           parent=
                                                           sequenceElement)
                child_element.attrib['ref'] = str(child.tag)
                children_info[child_path]['created'] = True
                children_info[child_path]['element'] = child_element

        try:
            attributes_info = element_info['attributes']
        except:
            element_info['attributes'] = {}
            attributes_info = element_info['attributes']
            attributes_info = attributes_info  # FIXME Unused variable

        try:
            element_info['attributes_list']
        except:
            element_info['attributes_list'] = set()
        attributes_list = element_info['attributes_list']

        if attributes:
            for attribute in attributes:
                attributes_list.add(attribute)

    def xml_pass2(self, root, path):
        """Pass 2 of XML tree"""

        element_info = self.elements[path]
        element = element_info['element']

        if not element_info['hasChildren']:
            element.attrib['type'] = ""

        children_info = element_info['children']
        children = [child for child in root.getchildren()
                    if str(child.tag) != '<built-in function Comment>']

        attributes_info = element_info['attributes']
        attributes = root.keys()
        attributes = attributes
        attributes_list = element_info['attributes_list']

        for child in children:
            child_path = "%s/%s" % (path, child.tag)
            child_info = children_info[child_path]
            child_element = child_info['element']

            if child_info['max'] > 1:
                child_element.attrib['maxOccurs'] = 'unbounded'

        for attribute in attributes_list:
            attribute_path = "%s/@%s" % (path, attribute)
            try:
                attributes_info[attribute_path]
            except:
                attributes_info[attribute_path] = {
                    'created': False,
                    'required': True
                }

            attribute_info = attributes_info[attribute_path]

            if not attribute_info['created']:
                attribute_element = \
                    self.create_schema_element('attribute',
                                               parent=element_info[
                                                   'complexTypeElement'])
                attribute_element.attrib['name'] = str(attribute)
                attribute_info['created'] = True
                attribute_info['element'] = attribute_element
                attribute_info['type'] = ""

    def xml_pass3(self, root, path):
        """Pass 3 of XML tree"""

        element_info = self.elements[path]
        element = element_info['element']

        if not element_info['hasChildren']:
            type = ''
            for node in root.xpath("//%s" % root.tag):
                type = self.get_type(node.text, type)

            element.attrib['type'] = type

        children_info = element_info['children']
        children = [child for child in root.getchildren()
                    if str(child.tag) != '<built-in function Comment>']

        attributes_info = element_info['attributes']
        attributes = root.keys()
        attributes_list = element_info['attributes_list']

        for child in children:
            child_path = "%s/%s" % (path, child.tag)
            child_info = children_info[child_path]
            child_element = child_info['element']  # FIXME unused variable

        for attribute in attributes_list - set(attributes):
            attribute_path = "%s/@%s" % (path, attribute)
            attribute_info = attributes_info[attribute_path]
            attribute_element = attribute_info['element']
            attribute_info['required'] = False

        for attribute in attributes:
            attribute_path = "%s/@%s" % (path, attribute)
            attribute_info = attributes_info[attribute_path]
            attribute_element = attribute_info['element']  # FIXME unused
            attribute_info['type'] = self.get_type(root.attrib[attribute],
                                                   attribute_info['type'])

    def xml_pass4(self, root, path):
        """Pass 4 of XML tree"""

        element_info = self.elements[path]
        element = element_info['element']  # FIXME unused variable

        children_info = element_info['children']  # FIXME unused variable
        children = [child for child in root.getchildren()
                    if str(child.tag) != '<built-in function Comment>']

        attributes_info = element_info['attributes']
        attributes = root.keys()
        # FIXME unused variable
        attributes_list = element_info['attributes_list']

        for attribute in attributes:
            attribute_path = "%s/@%s" % (path, attribute)
            attribute_info = attributes_info[attribute_path]
            attribute_element = attribute_info['element']
            attribute_element.attrib['type'] = attribute_info['type']
            if attribute_info['required']:
                attribute_element.attrib['use'] = "required"

    """Module for generating XML from a Schema file"""

    def random_date(self, start, end):
        """Function for generating a random date"""

        delta = end - start
        int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
        random_second = random.randrange(int_delta)
        return (start + timedelta(seconds=random_second))

    def generate_random(self, desc, *args, **kargs):
        """Generator function for generating random data"""

        f = re.findall("\[(.*?)\]", desc)

        data = []
        for i, s in enumerate(f):
            S = s
            try:
                p = re.search("\((.*?)\)", s).groups()[0].split(',')
                s = re.sub("\(.*?\)", "", s)
            except:
                p = []

            try:
                q = re.search("\{(.*?)\}", s).groups()[0].split(',')
                s = re.sub("\{.*?\}", "", s)
            except:
                q = []

            length, typ, index = \
                re.match("([^a-z]+)?([A-Za-z]+)(\d+)?", s).groups()
            data.append(['[%s]' % S, typ, index, length, p, q])

        while True:
            history = {'d': [], 'f': [], 'l': [], 'D': [], 'T': [], 'c': []}
            S = desc
            for s, typ, index, length, arg, cnt in data:
                x = ''
                if index is not None:
                    x = history[typ][int(index)]
                else:
                    if typ == 'd':
                        l = len(cnt)
                        if l == 2:
                            m, n = int(cnt[0]), int(cnt[1])
                        elif l == 1:
                            m, n = int(cnt[0]), int(cnt[0])
                        elif l == 0:
                            m, n = 1, 1

                        v = []
                        c = random.randint(m, n)
                        for j in range(c):
                            l = len(arg)
                            if l == 2:
                                a, b = int(arg[0]), int(arg[1])
                            elif l == 1:
                                a, b = 0, int(arg[0])
                            elif l == 0:
                                a, b = 0, 9

                            x = random.randint(a, b)

                            if length is not None:
                                x = ('%%%sd' % length) % x
                            else:
                                x = str(x)

                            v.append(x)

                        x = ''.join(v)

                    elif typ == 'f':
                        l = len(cnt)
                        if l == 2:
                            m, n = int(cnt[0]), int(cnt[1])
                        elif l == 1:
                            m, n = int(cnt[0]), int(cnt[0])
                        elif l == 0:
                            m, n = 1, 1

                        v = []
                        c = random.randint(m, n)
                        for j in range(c):
                            l = len(arg)
                            if l == 2:
                                a, b = int(arg[0]), int(arg[1])
                            elif l == 1:
                                a, b = 0, int(arg[0])
                            elif l == 0:
                                a, b = 0, 1

                            x = random.random() * (b - a) + a

                            if length is not None:
                                x = ('%%%sf' % length) % x
                            else:
                                x = str(x)

                            v.append(x)

                        x = ''.join(v)

                    elif typ == 'l':
                        v = kargs[arg[0]]
                        n = random.randint(0, len(v) - 1)
                        x = str(v[n])

                    elif typ == 'D':
                        l = len(arg)
                        fmt = '%Y-%m-%d'
                        d1 = '1990-01-01'
                        d2 = '2010-01-01'

                        if l == 3:
                            a, b, f = arg[0], arg[1], arg[2]
                        elif l == 2:
                            a, b, f = arg[0], arg[1], fmt
                        elif l == 1:
                            a, b, f = d1, arg[1], fmt
                        elif l == 0:
                            a, b, f = d1, d2, fmt

                        try:
                            aa = datetime.strptime(a, f)
                            bb = datetime.strptime(b, f)
                        except:
                            aa = datetime.strptime(a, fmt)
                            bb = datetime.strptime(b, fmt)

                        x = self.random_date(aa, bb).strftime(f)

                    elif typ == 'T':
                        l = len(arg)
                        fmt = '%H:%M:%S'
                        d1 = '00:00:00'
                        d2 = '23:59:59'

                        if l == 3:
                            a, b, f = arg[0], arg[1], arg[2]
                        elif l == 2:
                            a, b, f = arg[0], arg[1], fmt
                        elif l == 1:
                            a, b, f = d1, arg[1], fmt
                        elif l == 0:
                            a, b, f = d1, d2, fmt

                        try:
                            a = datetime.strptime(a, f)
                            b = datetime.strptime(b, f)
                        except:
                            a = datetime.strptime(a, fmt)
                            b = datetime.strptime(b, fmt)

                        x = self.random_date(a, b).strftime(f)

                    elif typ == 'c':
                        if len(arg) < 1:
                            C = 'a-z'
                        else:
                            C = arg[0]

                        z = []
                        for a, b in re.findall('(\w)-(\w)', C):
                            for i in range(ord(a), ord(b) + 1):
                                z.append(chr(i))
                            C = re.sub('%s-%s' % (a, b), '', C)

                        for i in C:
                            z.append(i)

                        l = len(cnt)
                        if l == 2:
                            m, n = int(cnt[0]), int(cnt[1])
                        elif l == 1:
                            m, n = int(cnt[0]), int(cnt[0])
                        elif l == 0:
                            m, n = 1, 1

                        v = []
                        c = random.randint(m, n)

                        for i in range(c):
                            v.append(z[random.randint(0, len(z) - 1)])

                        x = ''.join(v)

                    history[typ].append(x)
                S = S.replace(s, x, 1)
            yield S

    def random_data(self, desc, *args, **kargs):
        """Function for calling generator function which generates
        random data"""

        for i in self.generate_random(desc, *args, **kargs):
            return i

    def schema_preprocess(self, root, path):
        """Function for collecting preliminary data on elements required
        for the next pass"""

        if root.tag != '{http://www.w3.org/2001/XMLSchema}element':
            return

        if self.ROOT_ELEMENT is None:
            self.ROOT_ELEMENT = root
        name = root.get('name')
        if name is not None:
            children = root.getchildren()
            info = {'attrib': [], 'seq': [], 'node_attrib': {}}
            if children:
                complex = children[0]
                for child in complex.getchildren():
                    if child.tag == \
                            '{http://www.w3.org/2001/XMLSchema}sequence':
                        for c in child.getchildren():
                            info['seq'].append([c.get('ref'), c.attrib])

                    elif child.tag == \
                            '{http://www.w3.org/2001/XMLSchema}attribute':
                        info['attrib'].append(child.attrib)
            else:
                info['node_attrib'] = root.attrib

            self.ELEMENTS[name] = root
            self.INFO[name] = info

    def get_random_attribute(self, typ):
        """Function for getting random data for attributes"""

        result = ''
        if typ == 'xs:integer':
            result = self.random_data('[d(0, %d)]' % 10 ** 10)
        elif typ == 'xs:decimal':
            result = self.random_data('[0.3f(-1000, 1000)]')
        elif typ == 'xs:date':
            result = self.random_data('[D(2000-01-01, 2010-12-31)]')
        elif typ == 'xs:time':
            result = self.random_data('[T(09:00:00, 18:00:00)]')
        elif typ == 'xs:dateTime':
            result = self.random_data(
                '[D(2000-01-01T00:00:00, 2010-12-31T23:59:59,' +
                ' %Y-%m-%dT%H:%M:%S)]')
        elif typ == 'xs:boolean':
            result = ['true', 'false'][random.randint(0, 1)]
        else:
            """string type or any other unrecognized type"""
            result = self.random_data('[c(A-Za-z){5, 20}]')

        return result

    def create_random_element(self, element):
        """Creates and returns an element to the XML tree"""

        name = element.get('name')
        info = self.INFO[name]
        seq, node_attrib, attrib = info['seq'], info['node_attrib'], \
            info['attrib']
        result = etree.Element(name)

        if seq:
            for e, a in seq:
                _min, _max = 1, 1
                if a.get('maxOccurs', None) == 'unbounded':
                    _max = 3

                for n in range(random.randint(_min, _max)):
                    node = self.create_random_element(self.ELEMENTS[e])
                    if node is False:
                        return False
                    result.append(node)
        else:
            try:
                typ = node_attrib['type']
            except:
                msg = "Falied to generate XML because one or more " + \
                    "element(s) do not specify its type in the schema file."
                g = GUI()
                g.msgBox(msg)
                return False
            if typ == 'xs:integer':
                result.text = self.random_data('[d(0, %d)]' % 10 ** 10)
            elif typ == 'xs:decimal':
                result.text = self.random_data('[0.3f(-1000, 1000)]')
            elif typ == 'xs:date':
                result.text = self.random_data('[D(2000-01-01, 2010-12-31)]')
            elif typ == 'xs:time':
                result.text = self.random_data('[T(09:00:00, 18:00:00)]')
            elif typ == 'xs:dateTime':
                result.text = self.random_data('[D(2000-01-01T00:00:00, ' +
                                               '2010-12-31T23:59:59, ' +
                                               '%Y-%m-%dT%H:%M:%S)]')
            elif typ == 'xs:boolean':
                result.text = ['true', 'false'][random.randint(0, 1)]
            else:
                """string type or any other unrecognized type"""
                result.text = self.random_data('[c(A-Za-z){5, 20}]')

        for attr in attrib:
            ok = False
            if attr.get('use', None) == 'required':
                ok = True
            else:
                ok = True if random.randint(0, 100) < 30 else False
            if ok:
                result.attrib[attr.get('name')] = \
                    self.get_random_attribute(attr['type'])
        return result

    def writeFile(self, output_file, doc):
        """Function for writing the tree into a file"""

        sch = open(output_file, "w")
        sch.write('<?xml version = "1.0" encoding = "UTF-8"?>\n')
        doc.write(sch, pretty_print=True)
        return


class GUI(object):
    def msgBox(self, msg, cont=False):
        """A function for displaying a GTK message box"""

        message = Gtk.MessageDialog(None, Gtk.DialogFlags.MODAL,
                                    Gtk.MessageType.INFO,
                                    Gtk.ButtonsType.NONE, msg)
        if cont:
            message.add_button("Continue", Gtk.ResponseType.OK)
        message.add_button(Gtk.STOCK_QUIT, Gtk.ResponseType.CLOSE)
        response = message.run()
        if response == Gtk.ResponseType.OK:
            message.destroy()
            return True
        elif response == Gtk.ResponseType.CLOSE:
            message.destroy()
            return False

    def saveFile(self, msg, file_desc, file_type):
        """A function for displaying a GTK save file dialog and return
        the filename"""

        chooser = Gtk.FileChooserDialog(title=msg,
                                        action=Gtk.FileChooserAction.SAVE,
                                        buttons=(Gtk.STOCK_CANCEL,
                                        Gtk.ResponseType.CANCEL,
                                        Gtk.STOCK_SAVE, Gtk.ResponseType.OK))

        filter = Gtk.FileFilter()
        filter.set_name(file_desc)
        filter.add_pattern(file_type)
        chooser.add_filter(filter)

        filter = Gtk.FileFilter()
        filter.set_name("All files")
        filter.add_pattern("*")
        chooser.add_filter(filter)

        response = chooser.run()
        if response == Gtk.ResponseType.OK:
            output_file = chooser.get_filename()
        elif response == Gtk.ResponseType.CANCEL:
            output_file = False

        chooser.destroy()
        return output_file

    def openFile(self, msg, file_desc, file_type):
        """A function for displaying a GTK open file dialog and return
        the filename"""

        chooser = Gtk.FileChooserDialog(title=msg,
                                        action=Gtk.FileChooserAction.OPEN,
                                        buttons=(Gtk.STOCK_CANCEL,
                                        Gtk.ResponseType.CANCEL,
                                        Gtk.STOCK_OPEN, Gtk.ResponseType.OK))

        filter = Gtk.FileFilter()
        filter.set_name(file_desc)
        filter.add_pattern(file_type)
        chooser.add_filter(filter)

        filter = Gtk.FileFilter()
        filter.set_name("All files")
        filter.add_pattern("*")
        chooser.add_filter(filter)

        response = chooser.run()
        if response == Gtk.ResponseType.OK:
            input_file = chooser.get_filename()
        elif response == Gtk.ResponseType.CANCEL:
            input_file = False

        chooser.destroy()
        return input_file
