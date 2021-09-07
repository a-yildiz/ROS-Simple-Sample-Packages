#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Contour Detection: Detect the contours of objects on camera.
"""

class RobotCamera():
    def __init__(self):
        rospy.init_node("camera_processing")
        rospy.Subscriber("/camera/rgb/image_raw", Image, self.cameraCallback)
        self.bridge = CvBridge()
        rospy.spin()

    def cameraCallback(self, raw_input):
        # Bridge input to output:
        img_bgr = self.bridge.imgmsg_to_cv2(raw_input, "bgr8")
        img_mono = self.bridge.imgmsg_to_cv2(raw_input, "mono8")

        # Apply Global Thresholding:
        threshold_boundary = 55        # if the (grayscale) px value exceeds this, something will be done
        threshold_value = 255           # assign this value for those over the threshold
        _, img_thresholded = cv2.threshold(img_mono, threshold_boundary, threshold_value, cv2.THRESH_BINARY_INV)

        # Find contours on image:
        contours, hierarchy = cv2.findContours(img_thresholded, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
        contour_line_color = (0,255,0)   # a.k.a. pure green
        contour_line_thickness = 2

        # Flatten all points in all contours: 
        all_points_in_contour = [item for sublist in contours for item in sublist]
        points = np.asarray(all_points_in_contour, dtype=np.int32)

        # Find minimum enclosing circle:
        (x,y), r = cv2.minEnclosingCircle(points)
        circle_centroid = (int(x), int(y))
        circle_radius = int(r)
        circle_line_color = (255,0,0)   # a.k.a. pure blue
        circle_line_thickness = 3

        # Find minimum bounding rectangle:
        x,y,w,h =cv2.boundingRect(points)
        rect_line_color = (255,255,255)   # a.k.a. pure white
        rect_line_thickness = 3

        # Display output:
        cv2.drawContours(img_bgr, contours, -1, contour_line_color, contour_line_thickness)
        cv2.circle(img_bgr, circle_centroid, circle_radius, circle_line_color, circle_line_thickness)
        cv2.rectangle(img_bgr, (x,y), (x+w, y+h), rect_line_color, rect_line_thickness)
        cv2.imshow("Contoured Camera", img_bgr)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()