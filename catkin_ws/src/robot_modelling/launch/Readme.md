### Launching the Modelled Robot

Execute `roslaunch robot_modelling instructional_robot_gazebo.launch`. To control the robot, you may use `rosrun gui_control robot_control.py` (this works because we set the `rostopic` names to be the same as what `turtlebot3` uses). 

If you open `rviz` in a separate terminal, change the `Fixed Frame` specified in the left panel to `base_footprint`. 

### Observing Camera Data
Click the `Add` button under the left panel in RViz, and select __Camera__. Then, change the `Image Topic` of the Camera to `/camera/rgb/image_raw`.

### Observing Laser Data
Click the `Add` button under the left panel in RViz, and select __LaserScan__. Then, change the `Topic` of the LaserScan to `/scan`.

### Observing Links and Joints
Click the `Add` button under the left panel in RViz, and select __TF__.\
To save the tree of links and joints into a PDF file, execute `rosrun tf2_tools view_frames.py`. This will save a PDF named `frames.pdf`.