#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Arithmetic: Add or subtract images from one another.
"""

class RobotCamera():
    def __init__(self):
        rospy.init_node("camera_processing")
        rospy.Subscriber("/camera/rgb/image_raw", Image, self.cameraCallback)
        self.bridge = CvBridge()
        rospy.spin()

    def cameraCallback(self, raw_input):
        # Bridge input to output:
        img = self.bridge.imgmsg_to_cv2(raw_input, "bgr8")

        # Open from file:
        pure_red = cv2.imread("../images/pure_red.png")   # originally shaped 200 x 200 x 3
        pure_red = cv2.resize(pure_red, (640,480))       # re-sizing to 640 x 480 x 3

        # Some arithmetic operations:
        img_w_red = cv2.add(img, pure_red)
        img_w_red_weighted = cv2.addWeighted(img, 0.9, pure_red, 0.1, gamma=0)
        img_wo_red = cv2.subtract(img, pure_red)

        # Display output:
        cv2.imshow("Default Camera", img)
        cv2.imshow("Camera with Red Added", img_w_red)
        cv2.imshow("Camera with Red Added (Weighted)", img_w_red_weighted)
        cv2.imshow("Camera with Red Subtracted", img_wo_red)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()