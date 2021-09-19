#!/usr/bin/env python3      
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry

"""
Run this script/node after `roslaunch labyrinth turtlebot3_and_labyrinth.launch`
or `roslaunch simple_applications turtlebot3_empty_world.launch`.

The position of the turtlebot can now be controlled using the GUI that we have designed.
"""

# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'robot_control.ui'
#
# Created by: PyQt5 UI code generator 5.14.1
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(570, 360)
        MainWindow.setMinimumSize(QtCore.QSize(570, 360))
        MainWindow.setMaximumSize(QtCore.QSize(570, 360))
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.label_6 = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setBold(True)
        font.setItalic(True)
        font.setUnderline(True)
        font.setWeight(75)
        font.setKerning(True)
        self.label_6.setFont(font)
        self.label_6.setObjectName("label_6")
        self.gridLayout_2.addWidget(self.label_6, 0, 1, 1, 1)
        self.formLayout = QtWidgets.QFormLayout()
        self.formLayout.setObjectName("formLayout")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setObjectName("label")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.label)
        self.lineEdit_lin_vel = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEdit_lin_vel.setReadOnly(True)
        self.lineEdit_lin_vel.setObjectName("lineEdit_lin_vel")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.FieldRole, self.lineEdit_lin_vel)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setObjectName("label_2")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.label_2)
        self.lineEdit_ang_vel = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEdit_ang_vel.setReadOnly(True)
        self.lineEdit_ang_vel.setObjectName("lineEdit_ang_vel")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.FieldRole, self.lineEdit_ang_vel)
        self.gridLayout_2.addLayout(self.formLayout, 1, 1, 1, 1)
        self.label_5 = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setBold(True)
        font.setItalic(True)
        font.setUnderline(True)
        font.setWeight(75)
        font.setKerning(True)
        self.label_5.setFont(font)
        self.label_5.setObjectName("label_5")
        self.gridLayout_2.addWidget(self.label_5, 2, 0, 1, 1)
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.pushButton_stop = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_stop.setObjectName("pushButton_stop")
        self.gridLayout.addWidget(self.pushButton_stop, 1, 1, 1, 1)
        self.pushButton_forw = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_forw.setObjectName("pushButton_forw")
        self.gridLayout.addWidget(self.pushButton_forw, 0, 1, 1, 1)
        self.pushButton_back = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_back.setObjectName("pushButton_back")
        self.gridLayout.addWidget(self.pushButton_back, 2, 1, 1, 1)
        self.pushButton_left = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_left.setObjectName("pushButton_left")
        self.gridLayout.addWidget(self.pushButton_left, 1, 0, 1, 1)
        self.pushButton_right = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_right.setObjectName("pushButton_right")
        self.gridLayout.addWidget(self.pushButton_right, 1, 2, 1, 1)
        self.gridLayout_2.addLayout(self.gridLayout, 3, 0, 1, 1)
        self.label_7 = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setBold(True)
        font.setItalic(True)
        font.setUnderline(True)
        font.setWeight(75)
        font.setKerning(True)
        self.label_7.setFont(font)
        self.label_7.setObjectName("label_7")
        self.gridLayout_2.addWidget(self.label_7, 4, 1, 1, 1)
        self.formLayout_2 = QtWidgets.QFormLayout()
        self.formLayout_2.setObjectName("formLayout_2")
        self.lineEdit_pos_x = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEdit_pos_x.setReadOnly(True)
        self.lineEdit_pos_x.setObjectName("lineEdit_pos_x")
        self.formLayout_2.setWidget(0, QtWidgets.QFormLayout.FieldRole, self.lineEdit_pos_x)
        self.label_4 = QtWidgets.QLabel(self.centralwidget)
        self.label_4.setObjectName("label_4")
        self.formLayout_2.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.label_4)
        self.lineEdit_pos_y = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEdit_pos_y.setReadOnly(True)
        self.lineEdit_pos_y.setObjectName("lineEdit_pos_y")
        self.formLayout_2.setWidget(1, QtWidgets.QFormLayout.FieldRole, self.lineEdit_pos_y)
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setObjectName("label_3")
        self.formLayout_2.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.label_3)
        self.gridLayout_2.addLayout(self.formLayout_2, 5, 1, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 570, 22))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Robot Control Interface"))
        self.label_6.setText(_translate("MainWindow", "Velocity Dashboard:"))
        self.label.setText(_translate("MainWindow", "Linear Velocity (m/s):"))
        self.label_2.setText(_translate("MainWindow", "Angular Velocity (rad/s):"))
        self.label_5.setText(_translate("MainWindow", "Robot Control:"))
        self.pushButton_stop.setText(_translate("MainWindow", "Stop"))
        self.pushButton_forw.setText(_translate("MainWindow", "Forward"))
        self.pushButton_back.setText(_translate("MainWindow", "Backward"))
        self.pushButton_left.setText(_translate("MainWindow", "Left"))
        self.pushButton_right.setText(_translate("MainWindow", "Right"))
        self.label_7.setText(_translate("MainWindow", "Position Dashboard:"))
        self.label_4.setText(_translate("MainWindow", "Position Y (m):"))
        self.label_3.setText(_translate("MainWindow", "Position X (m):"))


    """ Everything above is from Qt Designer. 
        Below is a convenient spot for us define our ROS-related objects. 
    """
    def ros_setup(self):
        rospy.init_node("robot_interface")
        self.pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
        self.twist_msg = Twist()    # empty instantiation, to later publish.
        rospy.Subscriber("/odom", Odometry, self.odomCallback)

        # Modify the purpose of the buttons that we have defined earlier:
        self.pushButton_stop.clicked.connect(self.robotStop)
        self.pushButton_forw.clicked.connect(self.robotUp)
        self.pushButton_back.clicked.connect(self.robotDown)
        self.pushButton_left.clicked.connect(self.robotLeft)
        self.pushButton_right.clicked.connect(self.robotRight)

        # Initialize the values of the line edits we created:
        self.lineEdit_lin_vel.setText(str(0.0))
        self.lineEdit_ang_vel.setText(str(0.0))
        self.lineEdit_pos_x.setText(str(0.0))
        self.lineEdit_pos_y.setText(str(0.0))

    def odomCallback(self, msg):
        x = round(msg.pose.pose.position.x, ndigits=4)
        y = round(msg.pose.pose.position.y, ndigits=4)
        self.lineEdit_pos_x.setText(str(x))
        self.lineEdit_pos_y.setText(str(y))

    def robotStop(self):
        self.twist_msg.linear.x = 0.0
        self.twist_msg.angular.z = 0.0
        self.pub.publish(self.twist_msg)
        self.updateLineEdits()

    def robotUp(self):
        self.twist_msg.linear.x = 0.3
        self.twist_msg.angular.z = 0.0
        self.pub.publish(self.twist_msg)
        self.updateLineEdits()

    def robotDown(self):
        self.twist_msg.linear.x = -0.3
        self.twist_msg.angular.z = 0.0
        self.pub.publish(self.twist_msg)
        self.updateLineEdits()

    def robotLeft(self):
        # self.twist_msg.linear.x = 0.0
        self.twist_msg.angular.z = 0.5
        self.pub.publish(self.twist_msg)
        self.updateLineEdits()

    def robotRight(self):
        # self.twist_msg.linear.x = 0.0
        self.twist_msg.angular.z = -0.5
        self.pub.publish(self.twist_msg)
        self.updateLineEdits()

    def updateLineEdits(self):
        self.lineEdit_lin_vel.setText(str(self.twist_msg.linear.x))
        self.lineEdit_ang_vel.setText(str(self.twist_msg.angular.z))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    ui.ros_setup()

    MainWindow.show()
    sys.exit(app.exec_())
