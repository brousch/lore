#!/usr/bin/env python2.7

import gittle

import kivy
kivy.require('1.7.2')
from kivy.app import App
from kivy.uix.boxlayout import BoxLayout

__version__ = '0.1'


class Lore(BoxLayout):
    pass


class LoreApp(App):
    def build(self):
        return Lore()


if __name__ == '__main__':
    app = LoreApp()
    app.run()
