#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QPushButton: Creates a button to push.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create button:
    button = QtWidgets.QPushButton(window)
    button.setText("Click here to achieve nothing!")
    # button.setEnabled(False)    # uncomment to make button un-clickable.

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()