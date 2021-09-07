#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Morphological Transformations: Morphology is a broad set of image processing operations that relate to he shape or morphology of features in an image.
                               Uses a kernel matrix, and is applied to binary (e.g. thresholded) images. We consider the following transformations.
                               - Erosion
                               - Dilation
                               - Morph. Gradient (diff. between Dilation & Erosion)
                               - Opening
                               - Closing            
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
        _, img_thresholded = cv2.threshold(img, threshold_boundary, threshold_value, cv2.THRESH_BINARY_INV)

        # Apply Erosion, Dilation, Morph. Gradient:
        kernel_size = (11,11)
        kernel = np.ones(kernel_size, np.uint8)
        img_eroded = cv2.erode(img_thresholded, kernel)
        img_dilated = cv2.dilate(img_thresholded, kernel)
        img_morph_gradient = img_dilated - img_eroded

        # Apply Opening, Closing:
        img_opened = cv2.morphologyEx(img_thresholded, cv2.MORPH_OPEN, kernel)
        img_closed = cv2.morphologyEx(img_thresholded, cv2.MORPH_CLOSE, kernel)

        # Display output:
        cv2.imshow("Grayscaled Camera", img)
        cv2.imshow("Global Thresholded Camera", img_thresholded)
        cv2.imshow("Eroded Camera", img_eroded)
        cv2.imshow("Dilated Camera", img_dilated)
        cv2.imshow("Morphological Gradient of Camera", img_morph_gradient)
        cv2.imshow("Opened Camera", img_opened)
        cv2.imshow("Closed Camera", img_closed)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()