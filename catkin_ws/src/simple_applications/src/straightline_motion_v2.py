#!/usr/bin/env python3      
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from rospy.exceptions import ROSInitException, ROSInterruptException

"""
Run this script/node after `roslaunch simple_applications turtlebot3_empty_world.launch`.
If you run `rostopic list` you will see another topic called `/odom` with datatype `nav_msgs/Odometry`.
This is the reason that we are now also importing `Odometry` from `nav_msgs`. Run `rosmsg info nav_msgs/Odometry` to see 
the fields of this struct.

Also, note that we did not have to use `rospy.spin() here even though we have a subscriber. Remember that spinning is merely an
infinite-loop that keeps the program running. Here, we have defined our own custom loop, and therefor did not need to spin.

Difference from v1:
- We now have a publisher and a subscriber.
- Both of these are in this same file.
- Instead of using x = v*t, we are using the Odometry to more accurately observe where the robot is.
"""

class Motion():
    def __init__(self):
        self.target_distance_to_travel = 7.0    # [m]
        self.current_position = 0.0             # initialization.
        self.control = True                     # initialization.

        rospy.init_node("move_straight_line")
        rospy.Subscriber("/odom", Odometry, self.odomCallback)
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


if __name__ == "__main__":
    try:
        Motion()
    except rospy.ROSInterruptException:
        print("Ctrl+C detected!")