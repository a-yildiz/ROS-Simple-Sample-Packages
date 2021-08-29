#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QLineEdit: Creates a textbox for user input.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Add line edit:
    le = QtWidgets.QLineEdit(window)    # accepts as string.
    le.setText("Enter robot position here")
    # le.setReadOnly(True)    # uncomment to set default text as immutable.
    # le.setEchoMode(QtWidgets.QLineEdit.Password)    # uncomment to hide the text

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()