#!/usr/bin/env python3      
import rospy
from sensor_msgs.msg import LaserScan

"""
Run this script/node after `roslaunch simple_applications turtlebot3_empty_world.launch`. 
When you look at `rostopic list`, you can see a topic named `/scan` that encodes LIDAR sensor data.
After inspecting `rostopic type /scan` we observe that it is `sensor_msgs/LaserScan`.

Try putting random obstacles around turtlebot in the Gazebo window while running this node/script.
"""

class RobotLIDAR():
    def __init__(self):
        rospy.init_node("lidar_processing")
        rospy.Subscriber("/scan", LaserScan, self.lidarCallback)
        rospy.spin()

    def lidarCallback(self, lidar_data):
        # The useful data lies in the `ranges` field of LaserScan, and is a vector of length 360.
        # Each entry in this vector corresponds to a laser distance for every degree.
        # The middle front of turtlebot corresponds to zero degrees, and the angles increment in CCW direction.
        laser_ranges = list(lidar_data.ranges)

        # Data corresponding to the front of the turtlebot (here, we arbitrarily pick the angle as +-10 degrees
        # from the centeroid of the robot's front bumper):
        Front_left = laser_ranges[0:10]
        Front_right = laser_ranges[349:359]
        Front = Front_left + Front_right    # concatenate two lists.

        # Data corresponding to the other cardinal directions of the turtlebot:
        Left = laser_ranges[80:100]
        Rear = laser_ranges[170:190]
        Right = laser_ranges[260:280]

        # For brevity, let's only print the minimum for each cardinal direction:
        print("The distances to obstacles are (front, left, rear, right):")
        print("{}, {}, {}, {}".format(min(Front), min(Left), min(Rear), min(Right)))


if __name__ == "__main__":
    RobotLIDAR()



"""
Illustration of LIDAR range degrees:

              FRONT
    
                0
            –––––––––
            |       |
LEFT    90  | robot |  270    RIGHT
            |       |
            –––––––––
               180

"""