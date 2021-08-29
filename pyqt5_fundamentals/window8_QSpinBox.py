#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QSpinBox: Creates a textbox with increment buttons for numbers.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create a spin box (integers):
    spin1 = QtWidgets.QSpinBox(window)    # default range limit is from 0 to 99, integers only.
    spin1.setRange(15, 35)    # customize range limit
    spin1.setSingleStep(5)    # customize increment amount

    # Create a spin box (floats):
    spin2 = QtWidgets.QDoubleSpinBox(window)    # default range limit is from 0.00 to 99.99.
    spin2.move(100, 0)
    spin2.setRange(22.5, 47.5)    # customize range limit
    spin2.setSingleStep(0.25)    # customize increment amount

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()