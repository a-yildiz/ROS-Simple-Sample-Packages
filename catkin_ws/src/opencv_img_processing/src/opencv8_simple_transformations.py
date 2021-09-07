#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Geometric Transformations: We consider the following three transformations.
                           - Scaling
                           - Translation
                           - Rotation
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

        # Scaling img:
        new_img_size = (100,100)
        img_scaled = cv2.resize(img, new_img_size)

        # Translating img:
        translation_matrix = np.float32([[1,0,150], [0,1,200]])   # translate 150 and 200 units in the x and y-directions, respectively.
        translated_img_size = (640,480)
        img_translated = cv2.warpAffine(img, translation_matrix, translated_img_size)

        # Rotating img:
        rotation_pivot_pt = (320,240)
        rotation_degrees = 90
        keep_scale = 1
        rotation_matrix = cv2.getRotationMatrix2D(rotation_pivot_pt, rotation_degrees, keep_scale)
        rotated_img_size = (640,480)
        img_rotated = cv2.warpAffine(img, rotation_matrix, rotated_img_size)

        # Display output:
        cv2.imshow("Default Camera", img)
        cv2.imshow("Scaled Camera", img_scaled)
        cv2.imshow("Translated Camera", img_translated)
        cv2.imshow("Rotated Camera", img_rotated)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()