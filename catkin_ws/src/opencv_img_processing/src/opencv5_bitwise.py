#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Bitwise operations: and: select the lesser bit color value.
                    or:  select the larger bit color value.
                    xor: output the abs difference of two bit color values.
                    not: inverse the bit color value (a.k.a abs difference from 255).
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

        # Bitwise operations:
        and_images = cv2.bitwise_and(img, pure_red)
        or_images  = cv2.bitwise_or(img, pure_red)
        xor_images = cv2.bitwise_xor(img, pure_red)
        not_img    = cv2.bitwise_not(img)

        # Print colors of single px:
        print("--------------")
        print("Default Camera: ", img[0,0])
        print("Pure Red: ", pure_red[0,0])
        print("And with Pure Red: ", and_images[0,0])
        print("Or with Pure Red: ", or_images[0,0])
        print("Xor with Pure Red: ", xor_images[0,0])
        print("Not Default Camera: ", not_img[0,0])

        # Display output:
        cv2.imshow("Default Camera", img)
        cv2.imshow("And with Pure Red", and_images)
        cv2.imshow("Or with Pure Red", or_images)
        cv2.imshow("Xor with Pure Red", xor_images)
        cv2.imshow("Not Default Camera", not_img)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()