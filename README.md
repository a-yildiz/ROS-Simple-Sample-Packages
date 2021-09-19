# ROS Simple Sample Packages

This repo has some ROS components to help you initialize your own ROS package, depending on what you aim to do. 


## User-Created Packages
- [`beginner_tutorials`](/catkin_ws/src/beginner_tutorials):&nbsp; &nbsp;The completed beginner section of [official ROS tutorials](http://wiki.ros.org/ROS/Tutorials). This is the only package in this repo written in C++.
- [`fundamentals`](/catkin_ws/src/fundamentals):&nbsp; &nbsp;Fundamentals for writing a publisher, subscriber, service, client, action service, and action client.
- [`labyrinth`](/catkin_ws/src/labyrinth):&nbsp; &nbsp;Launch a `turtlebot3` inside a labyrinth world modeled from scratch using Gazebo.
- [`simple_applications`](/catkin_ws/src/simple_applications):&nbsp; &nbsp;Move `turtlebot3` in an empty world to achieve certain goals, such as going in a straight line, drawing a circle, or patrolling back and forth. Also includes files to parse camera and LIDAR data from onboard sensors.
- [`gui_control`](/catkin_ws/src/gui_control):&nbsp; &nbsp;Use a GUI that is designed from scratch to control `turtlebot3` in different worlds. Consider going over the [PyQt5 fundamentals](pyqt5_fundamentals) before visiting this package.
- [`opencv_img_processing`](/catkin_ws/src/opencv_img_processing):&nbsp; &nbsp;Includes OpenCV image processing fundamentals, a demo webcam application to extract blue-colored objects, and a simple path tracking example for `turtlebot3`.
- [`slam_and_navigation`](/catkin_ws/src/slam_and_navigation):&nbsp; &nbsp;Apply localization, mapping, and autonomous navigation for `turtlebot3` using existing packages in ROS. Waypoint placement for navigation is explained using both methods: using RViz or ROS actions.
- [`robot_modelling`](/catkin_ws/src/robot_modelling):&nbsp; &nbsp;Model a robot from scratch that is dissimilar to `turtlebot3`, but also accommodates two regular wheels, two caster wheels, an onboard camera and LIDAR. Observe the robot in 3D through Gazebo.


## Notes
- If you're using an IDE, open your workspace root directory as the `catkin_ws` folder in this repo, as named commonly in the ROS community. 
- If you get errors during `catkin_make`, especially after moving directories, delete the compiled `build`, `devel` and `install` folders in `catkin_ws` and re-create them using `catkin_make` and `catkin_make install`.
- Remember to `source catkin_ws/devel/setup.sh` for every new terminal. If frequently used, consider adding this command to `~/.bashrc`.
- Some developers prefer to place C++ code into a `src` folder, and Python code into a `scripts` folder instead. Throughout this repo, only a `src` folder is used, regardless of the language.
- At the very top of each Python script, you should have a preamble similar to `#!/usr/bin/env python3` that tells the executor where `python3` is located. 
- You will need to one-time `chmod +x` each Python script after creating it, making it executable. Once done, you should see the filename show as green instead of white when you `ls`.
- The packages related to `turtlebot3` inside `catkin_ws/src` were cloned directly from their Git repos using the following commands (remember to `catkin_make` your workspace after cloning). 
```
cd catkin_ws/src
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git -b noetic-devel
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git -b noetic-devel
```
- For anything related to `turtlebot3`, you will need to `export TURTLEBOT3_MODEL=<bot_type>` in each terminal. Options for `<bot_type>` are `burger`, `waffle` and `waffle_pi`. Do not add any space before or after the `=` symbol. If frequently used, consider adding this command to `~/.bashrc`. Applications in this repo assumes `waffle_pi` is exported.
- For SLAM and navigation applications, you need to install the following packages.
```
sudo apt-get install ros-noetic-gmapping
sudo apt-get install ros-noetic-navigation
```
- To save the tree of links and joints into a PDF file after robot modelling, you need to install the following package.
```
sudo apt-get install ros-noetic-tf2-tools
```


## Cheatsheet
- For subscribers, `spin()` just lets all the callbacks get called in an infinite-loop, and is not used for publishers since there is no callback function. For publishers, just enter a while loop and publish.
- The command `rospy.Rate(foo)` is only to modify the publishing rate, and therefore is only used for publishers. You do not need to use it for subscribers.
- Why do we use `rospy.spin()` for subscribers? From the [ROS Wiki](http://wiki.ros.org/roscpp/Overview/Callbacks%20and%20Spinning): The simplest (and most common) version of single-threaded spinning is `ros::spin()`. In this application all user callbacks will be called from within the `ros::spin()` call. `ros::spin()` will not return until the node has been shutdown, either through a call to `ros::shutdown()` or a `Ctrl-C`.
- We use `rate.sleep()` to pause the script in order to hit the hz mark of `rate = rospy.spin(foo)`. The time past since the last entry to `rate.sleep()` is computed under-the-hood, and the corresponding sleep-time is executed.


## References

This repo borrows a significant amount of material from [this Udemy course (Turkish)](https://www.udemy.com/course/temelden-gelismise-python-ile-uygulamali-ros-egitimi/), by Muhammed Oğuz Taş. Consider supporting him by purchasing his course on Udemy if you have found this repo to be helpful.