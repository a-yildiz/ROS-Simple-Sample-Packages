#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Affine Transformation: Uses a 2x3 transformation matrix, and is essentially a combination of translation, rotation, and scaling.
                       You only need to specify the coordinates of a three points, before and after the affine transformation.
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

        # Calculate the affine transformation matrix:
        loc0 = np.float32([[30,500], [200,500], [30,600]])    # coordinates of the three points before the affine transformtion
        loc1 = np.float32([[15,250], [100,250], [15,300]])    # coordinates of the three points after the affine transformtion
        M = cv2.getAffineTransform(loc0, loc1)
        affined_img_size = (640,480)
        img_affined = cv2.warpAffine(img, M, affined_img_size)

        # Display output:
        cv2.imshow("Default Camera", img)
        cv2.imshow("Affined Camera", img_affined)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()