#!/usr/bin/env python3      
import rospy
from geometry_msgs.msg import Twist
from simple_applications.srv import CircularMotion

"""
Run this script/node after `roslaunch simple_applications turtlebot3_empty_world.launch`.
Use the client node `circularmotion_client.py` to specify a radius.
Then, the turtlebot will draw the corresponding circle.
"""

def motion():
    rospy.init_node("move_circular")
    pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
    rospy.Service("circular_service", CircularMotion, lambda x: serviceCallback(x, pub))
    rospy.spin()    # spins the `serviceCallback` in an infinite-loop.

def serviceCallback(request, pub):
    radius = request.radius
    twist_msg = Twist()          # empty instantiation.
    twist_msg.linear.x = 0.5     # [m/s]
    twist_msg.angular.z = twist_msg.linear.x / radius       # Formula of angular vel: w = v / r

    while not rospy.is_shutdown():
        pub.publish(twist_msg)
    

if __name__ == "__main__":
    print("Service is now online.")
    motion()