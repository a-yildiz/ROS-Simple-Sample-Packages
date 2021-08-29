#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QRadioButton: Creates a list of options to select only one from.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create a radio button set:
    rbutton1 = QtWidgets.QRadioButton(window)
    rbutton2 = QtWidgets.QRadioButton(window)
    rbutton3 = QtWidgets.QRadioButton(window)

    # Move buttons (initially spawned on top of each other):
    rbutton1.move(0, 0)
    rbutton2.move(0, 20)
    rbutton3.move(0, 40)

    # Describe buttons:
    rbutton1.setText("Option 1")
    rbutton2.setText("Option 2")
    rbutton3.setText("Option 3")

    # Modify button attributes:
    rbutton3.setCheckable(False)    # rbutton3 is no longer selectable.

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()