#!/usr/bin/env python3      
import rospy
from fundamentals.srv import TimePast

## This is a Client node.

def makeRequest(target_distance):
    rospy.wait_for_service("time")
    try:
        serv = rospy.ServiceProxy("time", TimePast)
        response = serv(target_distance)
        return response.time_past
    except rospy.ServiceException:
        rospy.loginfo("Something has gone wrong with the Service!")


if __name__ == "__main__":
    target_distance = input("Enter target distance (float64): ")    # will return str
    target_distance = float(target_distance)                        # convert str ro float
    t = makeRequest(target_distance)
    print("Time to reach target distance: {}".format(t))

## Remember to one-time `chmod +x` this file after saving.