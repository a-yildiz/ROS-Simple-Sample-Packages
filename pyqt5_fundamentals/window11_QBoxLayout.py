#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QBoxLayout: Allows horizontal or vertical layout management.
            Buttons and other similar elements in the GUI are dynamically re-sized w.r.t. window dimensions. 
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Define some GUI elements:
    button1 = QtWidgets.QPushButton(window)
    button2 = QtWidgets.QPushButton(window)
    button1.setText("Button 1")
    button2.setText("Button 2")

    """ Swap the comments between the two blocks of code to change orientation of layout. """
    # # Define a horizontal box layout management:
    # layout = QtWidgets.QHBoxLayout()
    # layout.addWidget(button1)
    # layout.addWidget(button2)
    # window.setLayout(layout)

    # Define a vertical box layout management:
    layout = QtWidgets.QVBoxLayout()
    layout.addWidget(button1)
    layout.addWidget(button2)
    window.setLayout(layout)

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()