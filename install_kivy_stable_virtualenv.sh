#!/bin/sh

virtualenv-2.7 -p python2.7 venv

venv/bin/pip install cython

hg clone https://bitbucket.org/pygame/pygame
cd pygame
../venv/bin/python setup.py build
../venv/bin/python setup.py install
sudo ../venv/bin/python setup.py install
cd ..
rm -rf pygame

venv/bin/pip install kivy

git clone https://github.com/brousch/buildozer.git
cd buildozer
../venv/bin/python setup.py install
cd ..
rm -rf buildozer
