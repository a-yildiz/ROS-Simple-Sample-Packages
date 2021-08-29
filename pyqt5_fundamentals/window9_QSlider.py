#!/usr/bin/env python3      
from PyQt5 import QtWidgets, QtCore
import sys

"""
QSlider: Creates a slider for the user to move.
"""

def create_window():
    # Define window:
    obj = QtWidgets.QApplication(sys.argv)
    window = QtWidgets.QWidget()

    # Set window attributes:
    window.setWindowTitle("My PyQt5 Interface")
    window.setGeometry(250, 100, 600, 300)    # upper left corner of monitor is ax = ay = 0. 

    # Create a slider:
    slider = QtWidgets.QSlider(QtCore.Qt.Horizontal, window)
    slider.setTickPosition(QtWidgets.QSlider.TicksBelow)    # comment to remove ticks below the slider
    slider.setTickInterval(2)

    # Modify slider attributes:
    slider.setMinimum(0)        # this and the line below work the same way as `slider.setRange`.
    slider.setMaximum(10)       # but one of them can be optional.
    slider.setValue(8)          # set default value of slider.
    
    # Display window:
    window.show()
    sys.exit(obj.exec_())


if __name__ == "__main__":
    create_window()