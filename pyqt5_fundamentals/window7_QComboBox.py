#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys

"""
QComboBox: Creates a dropdown menu to select an option from.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create a combo box:
    combo = QtWidgets.QComboBox(window)

    # Create options in the combo box:
    combo.addItem("/cmd_vel")
    combo.addItem("/unknown_sensor")
    combo.addItem("/scan")

    # Modify combo box attributes:
    combo.move(300, 150)
    combo.setItemText(1, "/odom")    # changes option 1 in combo box.

    print("There are {} options in the combo box.".format(combo.count()))

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()