#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

"""
Run this script/node after `roslaunch opencv_img_processing turtlebot3_and_cone.launch`. 
When you look at `rostopic list`, you can see a topic named `/camera/rgb/image_raw`.
After inspecting `rostopic type /camera/rgb/image_raw` we observe that it is `sensor_msgs/Image`.
We will convert (a.k.a. bridge) camera raw image into visuals suited for OpenCV. Hence, we import `CvBridge`. 
We use `cv2` for data-processing.
"""

class RobotCamera():
    def __init__(self):
        rospy.init_node("camera_processing")
        rospy.Subscriber("/camera/rgb/image_raw", Image, self.cameraCallback)
        self.bridge = CvBridge()
        rospy.spin()

    def cameraCallback(self, raw_input):
        # Bridge input to output:
        output1 = self.bridge.imgmsg_to_cv2(raw_input, "bgr8")
        output2 = cv2.cvtColor(output1, cv2.COLOR_BGR2GRAY)
        output3 = cv2.cvtColor(output1, cv2.COLOR_BGR2HSV)

        # Split the original image to separate BGR channels: 
        b, g, r = cv2.split(output1)    # note that output1 == cv2.merge((b, g, r))
        
        # Display output:
        cv2.imshow("Robot Camera BGR",  output1)
        cv2.imshow("Robot Camera Gray", output2)
        cv2.imshow("Robot Camera HSV",  output3)

        cv2.imshow("Robot Camera Blue",  b)
        cv2.imshow("Robot Camera Green", g)
        cv2.imshow("Robot Camera Red",   r)

        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    RobotCamera()