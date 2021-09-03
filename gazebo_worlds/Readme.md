You create worlds by importing (a.k.a. inserting) models. Under the `Insert` tab, click the `Add Path` button to add the directory of you models (typically the `building_editor_models` folder.)

When saving a world, make sure to put the `.world` extension name at the end.

To edit values that cannot be edited inside Gazebo, such as `scale`, open the .world file in gedit, and modify the values outside of Gazebo. The `collision` properties describe the physical attributes of the object, whereas the `visual` properties describe how they are seen inside Gazebo. Typically, you'd want to modify them both.

To open a world in Gazebo, open a terminal and run `gazebo foo.world`.

To open a world in Gazebo with turlebot3, see example in `/catkin_ws/src/labyrinth/launch`.