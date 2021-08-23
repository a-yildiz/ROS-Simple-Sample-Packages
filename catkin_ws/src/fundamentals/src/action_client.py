#!/usr/bin/env python3      
import rospy
import actionlib
from fundamentals.msg import MissionStatusAction, MissionStatusGoal 


## This is an Action-Client node.

def feedbackCallback(fb):
    print("Current status of the mission: ", fb.ratio)


def makeRequest():
    # Define the client here:
    rospy.init_node("action_client_node")
    client = actionlib.SimpleActionClient("mission", MissionStatusAction)
    client.wait_for_server()
    
    # Define the request here:
    request = MissionStatusGoal()
    request.value = 5    # you'd normally want to take this as an input from user.
    
    # The client sends the request:
    client.send_goal(request, feedback_cb=feedbackCallback)
    client.wait_for_result()
    x = client.get_result().finish
    return x


if __name__ == "__main__":
    print("Action-Client is now online.")
    answer = makeRequest()
    print("Current mission status: ", answer)

## Remember to one-time `chmod +x` this file after saving.