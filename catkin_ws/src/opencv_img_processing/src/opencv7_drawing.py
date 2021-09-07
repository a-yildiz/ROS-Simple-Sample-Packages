#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 

Drawing: Add some shapes/lines or text over an image.
         These will become useful when later applying object recognition.
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

        # Draw a line over img:
        line_start_pos = (50,50)
        line_end_pos = (350,350)
        line_color = (255,0,0)   # a.k.a. pure blue
        line_thickness = 5       # px
        cv2.line(img, line_start_pos, line_end_pos, line_color, line_thickness)

        # Draw a rectangle over img:
        rect_upper_left_corner = (0,0)
        rect_lower_right_corner = (500,250)
        rect_line_color = (0,255,0)   # a.k.a. pure green
        rect_line_thickness = 3       # px
        cv2.rectangle(img, rect_upper_left_corner, rect_lower_right_corner, rect_line_color, rect_line_thickness)

        # Draw a circle over img:
        circ_center_pos = (500,300)
        circ_radius = 25              # px
        circ_line_color = (0,0,255)   # a.k.a. pure red
        circ_line_thickness = -1      # fill-in
        cv2.circle(img, circ_center_pos, circ_radius, circ_line_color, circ_line_thickness)

        # Add a text over img:
        text_start_pos = (0,450)
        text_font = cv2.FONT_HERSHEY_SIMPLEX
        text_size = 2
        text_color = (255,255,255)    # a.k.a. pure white
        text_thickness = 2
        cv2.putText(img, "ROS is fun!", text_start_pos, text_font, text_size, text_color, text_thickness)

        # Display output:
        cv2.imshow("Robot Camera", img)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()