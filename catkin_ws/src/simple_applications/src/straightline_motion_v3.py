#!/usr/bin/env python3      
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from rospy.exceptions import ROSInitException, ROSInterruptException

from simple_applications.msg import Distance

"""
Run this script/node after `roslaunch simple_applications turtlebot3_empty_world.launch`.

Difference from v2:
- Instead of having a pre-defined `target_distance_to_travel` of 7.0, we receive from a custom defined message.
- In a seperate terminal, run `rostopic pub /travel_distance <your_value>` to enter a value for `target_distance_to_travel`.
"""

class Motion():
    def __init__(self):
        self.target_distance_to_travel = 0.0    # initialization.
        self.current_position = 0.0   # initialization.
        self.control = True        # initialization.

        rospy.init_node("move_straight_line")
        rospy.Subscriber("/odom", Odometry, self.odomCallback)
        rospy.Subscriber("/travel_distance", Distance, self.inputCallback)
        pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
        twist_msg = Twist()    # empty instantiation.

        rate = rospy.Rate(10)   # rate of publisher.
        while not rospy.is_shutdown():
            if self.control:
                twist_msg.linear.x = 0.5    # [m/s]
                pub.publish(twist_msg)
            else:
                twist_msg.linear.x = 0.0    # [m/s]
                pub.publish(twist_msg)
                rospy.loginfo("Target reached!")

            rate.sleep()

    def odomCallback(self, message):
        self.current_position = message.pose.pose.position.x    # See `rosmsg info nav_msgs/Odometry`.

        if self.current_position <= self.target_distance_to_travel:
            self.control = True
        else:
            self.control = False

    def inputCallback(self, message):
        self.target_distance_to_travel = message.amount


if __name__ == "__main__":
    try:
        Motion()
    except rospy.ROSInterruptException:
        print("Ctrl+C detected!")