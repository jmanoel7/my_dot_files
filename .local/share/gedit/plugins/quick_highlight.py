# -*- coding: utf-8 -*-

#  Copyright (C) 2014 Martin Blanchard
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor,
#  Boston, MA 02110-1301, USA.

from gi.repository import GObject, GtkSource, Gedit

from gettext import bindtextdomain, dgettext
from gmpdefs import *

try:
    gettext.bindtextdomain(GETTEXT_PACKAGE, GETTEXT_LOCALEDIR)
    _ = lambda s: gettext.dgettext(GETTEXT_PACKAGE, s)
except:
    _ = lambda s: s


class QuickHighlightViewActivatable(GObject.Object, Gedit.ViewActivatable):
    __gtype_name__ = "QuickHighlightViewActivatable"

    view = GObject.Property(type=Gedit.View)

    def __init__(self):
        GObject.Object.__init__(self)

    def do_activate(self):
        document = self.view.get_buffer()
        self.settings = GtkSource.SearchSettings()
        self.search = GtkSource.SearchContext(buffer=document)
        if document is not None and self.search is not None:
            document.connect("notify::style-scheme", self.on_style_changed)
            document.connect("mark-set", self.on_mark_set)
            self.get_a_match_style(document.get_style_scheme())
            self.search.set_settings(self.settings)

    def do_deactivate(self):
        pass

    def do_update_state(self):
        pass

    def on_style_changed(self, document, spec):
        if document is not None:
            self.get_a_match_style(document.get_style_scheme())

    def on_mark_set(self, document, iter, mark):
        if document is None or mark is None:
            return
        insert = document.get_insert()
        if mark != insert:
            return
        if document.get_selection_bounds():
            start, end = document.get_selection_bounds()
            text = document.get_text(start, end, False)
            if text is not None and len(text.strip(" \t")) > 0:
                self.settings.set_search_text(text)
                self.search.set_highlight(True)
            else:
               self.settings.set_search_text(None)
               self.search.set_highlight(False)
        else:
            self.settings.set_search_text(None)
            self.search.set_highlight(False)

    def get_a_match_style(self, scheme):
        if scheme is None or self.search is None:
            return
        style = scheme.get_style("current-line")
        if style is not None:
            self.search.set_match_style(style)
            self.settings.set_search_text(None)
            self.search.set_highlight(False)


# ex:ts=4:et:
