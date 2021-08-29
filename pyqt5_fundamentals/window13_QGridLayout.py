#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QGridLayout: Allows easy grid-shape layout management.
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
    button3 = QtWidgets.QPushButton(window)
    button4 = QtWidgets.QPushButton(window)
    button1.setText("Button 1")
    button2.setText("Button 2")
    button3.setText("Button 3")
    button4.setText("Button 4")

    # Define a grid layout management:
    layout = QtWidgets.QGridLayout()
    layout.addWidget(button1, 1, 1)    # you also denote the position of the button w.r.t. the layout.
    layout.addWidget(button2, 1, 2)    # typically, you'd add these elements within a loop.
    layout.addWidget(button3, 2, 1)
    layout.addWidget(button4, 2, 2)

    window.setLayout(layout)

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()