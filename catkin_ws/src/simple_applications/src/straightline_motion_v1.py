#!/usr/bin/env python3      
import rospy
from geometry_msgs.msg import Twist

"""
Run this script/node after `roslaunch simple_applications turtlebot3_empty_world.launch`.
If you run `rostopic list` you will see that there is a topic called `/cmd_vel`, and we are essentially goint to publish to that.
By running `rostopic info /cmd_vel` we see that the datatype is `geometry_msgs/Twist`.
Then, looking at `rosmsg info geometry_msgs/Twist` we observe the fields of this struct: `linear` and `angular`.
"""

def motion():
    rospy.init_node("move_straight_line")
    pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)

    target_distance_to_travel = 7.0   # [m]
    current_position = 0.0  # initialization
    
    twist_msg = Twist()    # empty instantiation.
    twist_msg.linear.x = 0.5   # [m/s]
    
    t0 = rospy.Time.now().to_sec()
    while (current_position < target_distance_to_travel):    # loop until target distance is reached.
        pub.publish(twist_msg)
        t1 = rospy.Time.now().to_sec()
        current_position = twist_msg.linear.x * (t1-t0)   # [m = m/s * s]

    twist_msg.linear.x = 0.0    # publish the message as 0.0 to stay put at final location
    pub.publish(twist_msg)
    rospy.loginfo("Target reached!")


if __name__ == "__main__":
    motion()