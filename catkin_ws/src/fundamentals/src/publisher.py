#!/usr/bin/env python3
import rospy
from fundamentals.msg import BatteryStatus

## This is a Publisher node.

def publishMessage():
    rospy.init_node("publisher_node", anonymous=True)   # making Anonymous adds random numbers to name under `rosnode list`.
    pub = rospy.Publisher("/battery_topic/status_subtopic/percentage_subsubtopic", BatteryStatus, queue_size=100)
    rate = rospy.Rate(10)
    
    while not rospy.is_shutdown():
        percentage = "%25 battery remaining"
        rospy.loginfo("I am publishing the message: {}".format(percentage))
        pub.publish(percentage)
        rate.sleep()

if __name__ == "__main__":
    publishMessage()

## Remember to one-time `chmod +x` this file after saving.