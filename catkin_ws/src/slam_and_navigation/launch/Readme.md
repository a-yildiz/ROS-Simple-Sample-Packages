### Description

The .launch files here are forked from `/catkin_ws/src/turtlebot3/turtlebot3_navigation/launch`.

Changes:
1. `turtlebot3_navigation.launch`: The `map_file` argument is changed, in Line 4, to load our own custom map.\
The directory to find `acml.launch` is changed on Line 17. 

2. `amcl.launch`: The `initial_pose_x` and `_y` arguments are changed, in Lines 4 and 5, to match the initial poses defined in `/catkin_ws/src/labyrinth/launch/turtlebot3_and_labyrinth.launch`. Otherwise, the `gmapping` of the labyrinth is loaded with an offset during navigation.


### Autonomous Navigation for Turtlebot3

Open the labyrinth environment:
```
roslaunch labyrinth turtlebot3_and_labyrinth.launch 
```

Call the `navigation` package for `turtlebot3`:
```
roslaunch slam_and_navigation turtlebot3_navigation.launch
```

Inside RViz, use the `2D Nav Goal` button (at the top toolbar) to set a target location on the map. Click and drag the arrow to also set a target orientation for the robot.\
The motion of the robot can also be observed in Gazebo.