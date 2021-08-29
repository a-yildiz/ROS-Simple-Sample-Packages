#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QLabel: Texts on the windows that typically describe sections, buttons, etc.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Add label:
    label = QtWidgets.QLabel(window)
    label.setText("Camera Control Panel")
    label.move(300, 150)    # upper left corner of `window` is ax = ay = 0. 

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()