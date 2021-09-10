### Description

We use the SLAM launch files inside the `turtlebot3` package, located at `/catkin_ws/src/turtlebot3/turtlebot3_slam/launch/turtlebot3_slam.launch`.

Notice that inside this `.launch` file, the default parameter for the slam method is `gmapping`, and therefore launches `turtlebot3_gmapping.launch` from within.

The reason we are using these launch files is because they contain the `gmapping` parameters already configured for `turtlebot3`. These parameters are stored in `/catkin_ws/src/turtlebot3/turtlebot3_slam/config/gmapping_params.yaml`. See http://wiki.ros.org/gmapping for more detail.


### Creating Maps for Turtlebot3

Open the labyrinth environment:
```
roslaunch labyrinth turtlebot3_and_labyrinth.launch 
```

Call the SLAM (`gmapping`) package for `turtlebot3`:
```
roslaunch turtlebot3_slam turtlebot3_slam.launch
```

Navigate the robot using a GUI:
```
rosrun gui_control robot_control.py
```

Save the map:
```
roscd slam_and_navigation/maps/labyrinth_gmapping
rosrun map_server map_saver -f ./map
```

These commands will create a `.pgm` and a `.yaml` file.
