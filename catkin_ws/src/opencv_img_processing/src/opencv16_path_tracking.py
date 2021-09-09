#!/usr/bin/env python3      
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_red_path.launch`. 

Path Tracking: A very simple path tracking example, using P-controller.
"""

def get_red_color_bounds():
    # Pure red color definition:
    red_BGR = np.uint8([[[0,0,255]]])                         # Blue, Green, Red
    red_HSV = cv2.cvtColor(red_BGR, cv2.COLOR_BGR2HSV)        # Hue, Saturation, Value
    print(f"Pure red BGR: {red_BGR}")
    print(f"Pure red HSV: {red_HSV}")

    # Define lower and upper bound of red color:
    red_HSV_Hue = red_HSV.flatten()[0]
    red_HSV_lower_bound = np.array([red_HSV_Hue - 10, 100, 100])    # common practice: -10 Hue, 100, 100
    red_HSV_upper_bound = np.array([red_HSV_Hue + 10, 255, 255])    # common practice: +10 Hue, 255, 255
    print(f"Red HSV Lower Bound: {red_HSV_lower_bound}")
    print(f"Red HSV Lower Bound: {red_HSV_upper_bound}")

    return red_HSV_lower_bound, red_HSV_upper_bound

class PathTracking():
    def __init__(self):
        rospy.init_node("path_tracking")
        rospy.Subscriber("/camera/rgb/image_raw", Image, self.cameraCallback)
        self.pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
        
        self.red_lb, self.red_ub = get_red_color_bounds()
        self.bridge = CvBridge()
        self.twist_msg = Twist()    # empty instantiation.
        rospy.spin()

    def cameraCallback(self, raw_input):
        # Convert raw image to HSV:
        img = self.bridge.imgmsg_to_cv2(raw_input, "bgr8")
        img_HSV = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Create and apply a mask:
        mask = cv2.inRange(img_HSV, self.red_lb, self.red_ub)
        img_masked = cv2.bitwise_and(img, img, mask=mask)
        
        # Calculate mask image moments and centroids: (See https://wikipedia.org/wiki/Image_moment)
        M = cv2.moments(mask)
        try:
            cx = int(M['m10']/M['m00'])
            cy = int(M['m01']/M['m00'])
        except ZeroDivisionError:
            self.twist_msg.linear.x = 0.0
            self.twist_msg.angular.z = 0.0
            self.pub.publish(self.twist_msg)
            rospy.loginfo("No red path in sight!")
            exit()    # this just exits the callback, but `rospy.spin()` is still active.

        # Draw the mask centroid over img:
        circ_center_pos = (int(cx),int(cy))
        circ_radius = 5                # px
        circ_line_color = (255,0,0)    # a.k.a. pure blue
        circ_line_thickness = -1       # fill-in
        cv2.circle(img, circ_center_pos, circ_radius, circ_line_color, circ_line_thickness)

        # Treat center of camera input as robot center of mass:
        h,w,d = img.shape
        circ_center_pos = (int(w/2),int(h/2))
        circ_radius = 5                # px
        circ_line_color = (0,255,0)    # a.k.a. pure green
        circ_line_thickness = -1       # fill-in
        cv2.circle(img, circ_center_pos, circ_radius, circ_line_color, circ_line_thickness)

        # Calculate angular path deviation, and rotate robot if required:
        angular_path_deviation = cx - w/2
        self.twist_msg.linear.x = 0.2
        self.twist_msg.angular.z = -angular_path_deviation/500    # gain value of P-controller, chosen by user
        self.pub.publish(self.twist_msg)

        # Display output:
        cv2.imshow("Default Webcam Display", img)
        cv2.imshow("Applied Mask", mask)
        cv2.imshow("Masked Webcam Display", img_masked)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    PathTracking()