# ROS Samples

This repo has some ROS components to get an initial ROS package up-and-running.


## Packages
- [`beginner_tutorials`](/src/beginner_tutorials): This comes directly after completing the Beginner Level part of [official ROS tutorials](http://wiki.ros.org/ROS/Tutorials). 
- [`ogretici_paket`](/src/ogretici_paket): This is from a [Udemy course](https://www.udemy.com/course/temelden-gelismise-python-ile-uygulamali-ros-egitimi/) about ROS, in Turkish.


## Misc
- In VS Code, open your workspace folder directory as the `catkin_ws` folder in this repo, as named commonly in the ROS community. 
- Remember to `source devel/setup.sh` for every new terminal. If frequently used, can be added to `~/.bashrc`.
- You will need to one-time `chmod +x` each Python script after creating it, making it executable. Once done, you should see the filename show in green instead of white when you `ls`.
- The packages related to `turtlebot3` were cloned directly from their Git repos using the following commands:
```
cd catkin_ws/src
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git -b noetic-devel
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git -b noetic-devel
```