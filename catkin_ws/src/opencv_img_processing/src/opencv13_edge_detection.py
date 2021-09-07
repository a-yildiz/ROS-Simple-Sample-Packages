#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Edge Detection: Detect the edges of objects on camera.
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

        # Find edges on image:
        threshold1 = 50    # first threshold for the hysteresis, choose with trial-and-error
        threshold2 = 200    # second threshold for the hysteresis, choose with trial-and-error
        aperture_size = 5	# aperture size for the Sobel operator, choose with trial-and-error
        img_edges = cv2.Canny(img, threshold1, threshold2, aperture_size)

        # Display output:
        cv2.imshow("Grayscaled Camera", img)
        cv2.imshow("Edges of Object in Camera", img_edges)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()