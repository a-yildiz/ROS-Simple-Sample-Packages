# ROS Samples

This repo has some ROS components to get an initial ROS package up-and-running.


## User-Created Packages
- [`beginner_tutorials`](/catkin_ws/src/beginner_tutorials): Beginner section of [official ROS tutorials](http://wiki.ros.org/ROS/Tutorials). 
- [`fundamentals`](/catkin_ws/src/fundamentals): From [Udemy course](https://www.udemy.com/course/temelden-gelismise-python-ile-uygulamali-ros-egitimi/), Section 5.
- [`labyrinth`](/catkin_ws/src/labyrinth): From [Udemy course](https://www.udemy.com/course/temelden-gelismise-python-ile-uygulamali-ros-egitimi/), Section 8.
- [`simple_applications`](/catkin_ws/src/simple_applications): From [Udemy course](https://www.udemy.com/course/temelden-gelismise-python-ile-uygulamali-ros-egitimi/), Section 9.
- [`gui_control`](/catkin_ws/src/gui_control): From [Udemy course](https://www.udemy.com/course/temelden-gelismise-python-ile-uygulamali-ros-egitimi/), Section 10.

## Notes
- Remember to `source devel/setup.sh` for every new terminal. If frequently used, consider adding this command to to `~/.bashrc`.
- For anything related to `turtlebot3`, you will need to `export TURTLEBOT3_MODEL=<bot_type>` in each terminal. Options for `<bot_type>` are `burger`, `waffle` and `waffle_pi`. Do not add any space before or after the `=` symbol. If frequently used, consider adding this command to to `~/.bashrc`.
- You will need to one-time `chmod +x` each Python script after creating it, making it executable. Once done, you should see the filename show in green instead of white when you `ls`.
- At the very top of each Python script, you should have the preamble `#!/usr/bin/env python3` that tells the executor where `python` is located. 
- If you get errors during `catkin_make`, especially after moving directories, delete the compiled `build`, `devel` and `install` folders in `catkin_ws` and re-create them using `catkin_make` and `catkin_make install`.
- The packages related to `turtlebot3` inside `catkin_ws/src` were cloned directly from their Git repos using the following commands:
```
cd catkin_ws/src
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git -b noetic-devel
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git -b noetic-devel
```
- If you're using an IDE, open your workspace directory as the `catkin_ws` folder in this repo, as named commonly in the ROS community. 

## Cheatsheet
- For subscribers, `spin()` just lets all the callbacks get called in an infinite-loop, and is not used for publishers since there is no callback function. For publishers, just enter a while loop and publish.
- The command `rospy.Rate(foo)` is only to modify the publishing rate, and therefore is only used for publishers. You do not need to use it for subscribers.
- Why do we use `rospy.spin()` for subscribers? From the [ROS Wiki](http://wiki.ros.org/roscpp/Overview/Callbacks%20and%20Spinning): The simplest (and most common) version of single-threaded spinning is `ros::spin()`. In this application all user callbacks will be called from within the `ros::spin()` call. `ros::spin()` will not return until the node has been shutdown, either through a call to `ros::shutdown()` or a `Ctrl-C`.
- We use `rate.sleep()` to pause the script in order to hit the hz mark of `rate = rospy.spin(foo)`. The time past since the last entry to `rate.sleep()` is computed under-the-hood, and the corresponding sleep-time is executed.