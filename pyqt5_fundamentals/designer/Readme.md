Instead of using PyQt5 to design a GUI by code, we can also use the Qt Designer to graphically create a GUI.\
To do so, run `designer` in the terminal, and save the design as a `.ui` XML file.

Then, to compile a `.ui` design into a `.py` script, run `pyuic5 -x <input_file>.ui -o <output_file>.py`.\
The resulting script converts the XML document into a Python script that automatically imports the `PyQt5` package, as we have done before.

Hence, Qt Designer allows us to create complex GUI without having to manually write an excessive amount of code.

If desired, you can then import `rospy` and other packages to this new Python script. To make it executable, run `chmod +x <output_file>.py` as previously done.