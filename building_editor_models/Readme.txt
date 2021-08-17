You can create new objects/models that can later be inserted into a Gazebo world, through the Building Editor (Edit->Building Editor).

To edit values that cannot be edited inside Gazebo, such as `scale`, open the .sdf file in gedit, and modify the values outside of Gazebo. The `collision` properties describe the physical attributes of the object, whereas the `visual` properties describe how they are seen inside Gazebo. Typically, you'd want to modify them both.
