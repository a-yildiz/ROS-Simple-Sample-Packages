#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Thresholding: Define a threshold px value and assign a new value to pixels w.r.t. the threshold.
              Is applied to grayscale images.

              Global Thresholding: There is a single threshold value that is used throughout the entire image.
              Adaptive Thresholding: The threshold changes dynamically, usually w.r.t. some Gaussian dynamics.
"""

class RobotCamera():
    def __init__(self):
        rospy.init_node("camera_processing")
        rospy.Subscriber("/camera/rgb/image_raw", Image, self.cameraCallback)
        self.bridge = CvBridge()
        rospy.spin()

    def cameraCallback(self, raw_input):
        # Bridge input to output:
        img = self.bridge.imgmsg_to_cv2(raw_input, "mono8")    # by replacing `bgr8`, we load the image as grayscale directly

        # Apply Global Thresholding:
        threshold_boundary = 127        # if the (grayscale) px value exceeds this, something will be done
        threshold_value = 255           # assign this value for those over the threshold
        _, img_thresholded = cv2.threshold(img, threshold_boundary, threshold_value, cv2.THRESH_BINARY)

        # Apply Adaptive Thresholding:
        adap_threshold_value = 255      # assign this value for those over the adaptive threshold
        adap_threshold_blocksize = 11   # param for adaptive Gaussian thresholding, choose with trial-and-error
        adap_threshold_constant = 2     # param for adaptive Gaussian thresholding, choose with trial-and-error
        img_adap_thresholded = cv2.adaptiveThreshold(img, adap_threshold_value, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, adap_threshold_blocksize, adap_threshold_constant)

        # Display output:
        cv2.imshow("Grayscaled Camera", img)
        cv2.imshow("Global Thresholded Camera", img_thresholded)
        cv2.imshow("Adaptive Thresholded Camera", img_adap_thresholded)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()