#!/usr/bin/env python3      
import rospy
from simple_applications.srv import CircularMotion

def define_radius():
    rospy.wait_for_service("circular_service")
    try:
        radius = input("Enter the desired radius (float64): ")    # will return str
        radius = float(radius)                                    # convert str ro float
        serv = rospy.ServiceProxy("circular_service", CircularMotion)
        serv(radius)

    except rospy.ServiceException:
        print("Something has gone wrong with the Service!")


if __name__ == "__main__":
    print("Client is now online.")
    define_radius()