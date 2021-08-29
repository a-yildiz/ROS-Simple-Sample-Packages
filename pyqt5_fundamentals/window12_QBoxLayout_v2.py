#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QBoxLayout: Allows horizontal or vertical layout management.
            Buttons and other similar elements in the GUI are dynamically re-sized w.r.t. window dimensions. 
            You may also choose to insert layout managents inside one another. 
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
    
    # Define a horizontal box layout management:
    layout_hor = QtWidgets.QHBoxLayout()
    layout_hor.addWidget(button1)
    layout_hor.addWidget(button2)

    # Define a vertical box layout management:
    layout_ver = QtWidgets.QVBoxLayout()
    layout_ver.addWidget(button3)
    layout_ver.addWidget(button4)

    # Insert `layout_hor` inside `layout_ver`:
    layout_ver.addLayout(layout_hor)
    window.setLayout(layout_ver)

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()