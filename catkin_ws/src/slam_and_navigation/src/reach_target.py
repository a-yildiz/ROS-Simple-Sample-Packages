#!/usr/bin/env python3      
import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

"""
First, run `roslaunch labyrinth turtlebot3_and_labyrinth.launch`.
Then,  run `roslaunch slam_and_navigation turtlebot3_navigation.launch`.
Last,  run this script/node.

Reach Target: Instead of using the RViz GUI, we use actions from a ROS node to navigate to a target.

By running `rosmsg package move_base_msgs`, we observe that we have the following messages for the `move_base` package:
- move_base_msgs/MoveBaseAction
- move_base_msgs/MoveBaseActionFeedback
- move_base_msgs/MoveBaseActionGoal
- move_base_msgs/MoveBaseActionResult
- move_base_msgs/MoveBaseFeedback
- move_base_msgs/MoveBaseGoal
- move_base_msgs/MoveBaseResult
- move_base_msgs/RecoveryStatus

Among these, we are going to use the `MoveBaseGoal` msg to set a goal location for the robot to navigate to.

By running `rosmsg info move_base_msgs/MoveBaseGoal`, we notice that we'd like to use the `target_pose.pose.position` field.
But before this, we need to specify the frame that we are sending a target in. For our case, we use the "map" frame.

By running `rosmsg info move_base_msgs/MoveBaseResult`, we observe that nothing is returned.
"""

def client():
    # Define the client here:
    rospy.init_node("reach_target")
    client = actionlib.SimpleActionClient("/move_base", MoveBaseAction)
    client.wait_for_server()

    # Define the target here:
    target = MoveBaseGoal()
    target.target_pose.header.frame_id = "map"
    target.target_pose.pose.position.x = 5.0
    target.target_pose.pose.position.y = 4.7
    target.target_pose.pose.orientation.w = 1.0
    
    # The client sends the request:
    client.send_goal(target)    # notice that we don't need to use `feedback_cb=feedbackCallback` here.
    client.wait_for_result()
    _ = client.get_result()
    rospy.loginfo("Target reached!")

    return None


if __name__ == "__main__":
    client()