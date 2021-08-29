#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QFormLayout: Allows easy label->input layout management.
             Consists of two columns (and arbitrary amount of rows).
             First column is the label, and the second column is the user-input box for that label.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create labels:
    label1 = QtWidgets.QLabel(window)
    label2 = QtWidgets.QLabel(window)
    label1.setText("Position x: ")
    label2.setText("Position y: ")

    # Create input lines:
    line1 = QtWidgets.QLineEdit(window)
    line2 = QtWidgets.QLineEdit(window)

    # Define a form layout management:
    layout = QtWidgets.QFormLayout()
    layout.addRow(label1, line1)
    layout.addRow(label2, line2)
    window.setLayout(layout)

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()
