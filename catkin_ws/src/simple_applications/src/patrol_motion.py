#!/usr/bin/env python3      
import rospy
from geometry_msgs.msg import Twist

"""
Uses the parameters in `../params/patrol_parameters.yaml`.
The turtlebot will patrol back and forth in a straight line.
Run this script/node after `roslaunch simple_applications turtlebot3_empty_world_patrol.launch`
which also automatically loads the required params.

Note that you could have also manually loaded params using `rosparam load ../params/p.yaml`.
"""

def iseven(num):
    return num % 2.0 == 0.0

def motion():
    rospy.init_node("move_patrol")
    pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
    
    twist_msg = Twist()     # empty instantiation.
    robot_velocity = 0.5    # [m/s]

    # Load params from the .yaml file:
    no_of_times = rospy.get_param("/patrol_no_of_times")
    distance = rospy.get_param("/patrol_distance")

    rospy.loginfo("Patrol started!")
    patrol_counter = 0
    while patrol_counter < no_of_times:
        t0 = rospy.Time.now().to_sec()
        position_change = 0

        if iseven(patrol_counter):
            twist_msg.linear.x = robot_velocity
        else:
            twist_msg.linear.x = -robot_velocity

        while position_change < distance:
            pub.publish(twist_msg)
            t1 = rospy.Time.now().to_sec()
            position_change = robot_velocity * (t1-t0)   # [m = m/s * s]

        patrol_counter += 1
    rospy.loginfo("Patrol ended!")


if __name__ == "__main__":
    motion()