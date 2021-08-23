#!/usr/bin/env python3      
import rospy
import actionlib
from fundamentals.msg import MissionStatusAction, MissionStatusFeedback, MissionStatusResult 


## This is an Action-Service node.

# Let's use a Class for the definition of this node.

class ActionServer():
    def __init__(self):
        rospy.init_node("action_service_node")
        self.a_service = actionlib.SimpleActionServer("mission", MissionStatusAction, auto_start=False, execute_cb=self.responseCallback)
        self.a_service.start()
        rospy.spin()

    def responseCallback(self, request):
        
        # Feedback: Sends back regular feedback to the client before the mission is completed.
        fb = MissionStatusFeedback()    # empty instantiation
        rslt = MissionStatusResult()    # empty instantiation
        rate = rospy.Rate(1)            # rate of feedback

        for itr in range(request.value):
            itr_status = '%' + str(itr*100/request.value)
            fb.ratio = itr_status
            self.a_service.publish_feedback(fb)
            rate.sleep()

        # Result: Sent back after mission is completed.
        rslt.finish = "Mission completed!"
        self.a_service.set_succeeded(rslt)

if __name__ == "__main__":
    print("Action-Service is now online.")
    ActionServer()

## Remember to one-time `chmod +x` this file after saving.