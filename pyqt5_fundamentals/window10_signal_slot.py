#!/usr/bin/env python3      
from PyQt5 import QtWidgets
import sys
import random

"""
Signal-Slot: Send a signal when the user interacts with a slot.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create some GUI:
    line = QtWidgets.QLineEdit(window)
    line.setText("Robot velocity")
    line.setReadOnly(True)
    button = QtWidgets.QPushButton(window)
    button.move(0, 25)
    button.setText("Track robot")

    # Signal-Slot:
    def buttonCallback():
        robot_vel = random.gauss(5, 0.3)
        line.setText("{:.2f} m/s".format(robot_vel))

    button.clicked.connect(buttonCallback)

    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()