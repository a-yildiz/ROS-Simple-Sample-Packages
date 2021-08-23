#!/usr/bin/env python3      
import rospy
from fundamentals.msg import BatteryStatus

## This is a Subscriber node.

def subscriberCallback(incoming_msg):
    rospy.loginfo("I am hearing the message: {}".format(incoming_msg.percentage))

def ListenToMessage():
    rospy.init_node("subscriber_node")
    rospy.Subscriber("/battery_topic/status_subtopic/percentage_subsubtopic", BatteryStatus, subscriberCallback)
    rospy.spin()

if __name__ == "__main__":
    ListenToMessage()

## Remember to one-time `chmod +x` this file after saving.