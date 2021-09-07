#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Masking: Remove a portion of the image using spatial filtering. See https://www.tutorialspoint.com/dip/concept_of_masks
         Used as the process underneath numerous image processing applications; including edge detection, motion detection, and noise reduction.
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

        # Apply masking:
        grayed_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        _, mask = cv2.threshold(grayed_img, 50, 255, cv2.THRESH_BINARY_INV)
        masked_img = cv2.bitwise_and(img, img, mask=mask)

        # Print colors of single px:
        print("--------------")
        print("Default Camera: ", img[0,0])
        print("Mask: ", mask[0,0])
        print("Masked Camera: ", masked_img[0,0])

        # Display output:
        cv2.imshow("Default Camera", img)
        cv2.imshow("Mask", mask)
        cv2.imshow("Masked Camera", masked_img)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()