#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QCheckBox: Creates a checkbox that can be ticked.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create a checkbox set:
    cbox1 = QtWidgets.QCheckBox(window)
    cbox2 = QtWidgets.QCheckBox(window)
    cbox3 = QtWidgets.QCheckBox(window)

    # Move buttons (initially spawned on top of each other):
    cbox1.move(0, 0)
    cbox2.move(0, 20)
    cbox3.move(0, 40)

    # Describe buttons:
    cbox1.setText("Option 1")
    cbox2.setText("Option 2")
    cbox3.setText("Option 3")

    # Modify button attributes:
    cbox3.setCheckable(False)    # cbox3 is no longer selectable.

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()