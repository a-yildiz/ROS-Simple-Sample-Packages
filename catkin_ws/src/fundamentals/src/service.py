#!/usr/bin/env python3      
import rospy
from fundamentals.srv import TimePast

## This is a Service node.

def CalculateTime(request):
    # t = x/v
    robot_velocity = 0.5
    t = request.target_distance / 0.5 
    rospy.loginfo("Response sent to client: {}".format(t))
    return t

def sendResponse():
    rospy.init_node("sercive_node")
    rospy.Service("time", TimePast, CalculateTime)
    rospy.spin()

if __name__ == "__main__":
    print("Service is now online.")
    sendResponse()

## Remember to one-time `chmod +x` this file after saving.