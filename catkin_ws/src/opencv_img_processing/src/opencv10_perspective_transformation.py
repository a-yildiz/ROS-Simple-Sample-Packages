#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import numpy as np

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_yellow_lane.launch`. 

Perspective Transformation: Uses a 3x3 transformation matrix.
                            Especially useful for applications like lane tracking where we'd prefer to view the camera
                            input similar to bird's eye view, through perspective transformation.
                            You need to specify the coordinates of a four points, before and after the perspective transformation.

After the perspective transformation, notice that we are solely observing the yellow lanes, as would be desired for trajectory planning.
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

        # Calculate the perspective transformation matrix:
        loc0 = np.float32([[0,250], [640,250], [0,480], [640, 480]])    # coordinates of the three points before the perspective transformtion
        loc1 = np.float32([[0,0], [640,0], [0,480], [640, 480]])        # coordinates of the three points after the perspective transformtion
        M = cv2.getPerspectiveTransform(loc0, loc1)
        perspectived_img_size = (640,480)
        img_perspectived = cv2.warpPerspective(img, M, perspectived_img_size)

        # Display output:
        cv2.imshow("Default Camera", img)
        cv2.imshow("Perspectived Camera", img_perspectived)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()