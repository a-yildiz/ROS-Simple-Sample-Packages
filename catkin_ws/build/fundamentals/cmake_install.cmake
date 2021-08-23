# Install script for directory: /home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/fundamentals

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals/msg" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/fundamentals/msg/BatteryStatus.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals/srv" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/fundamentals/srv/TimePast.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals/action" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/fundamentals/action/MissionStatus.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals/msg" TYPE FILE FILES
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/fundamentals/msg/MissionStatusAction.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/fundamentals/msg/MissionStatusActionGoal.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/fundamentals/msg/MissionStatusActionResult.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/fundamentals/msg/MissionStatusActionFeedback.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/fundamentals/msg/MissionStatusGoal.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/fundamentals/msg/MissionStatusResult.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/fundamentals/msg/MissionStatusFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals/cmake" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/fundamentals/catkin_generated/installspace/fundamentals-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/include/fundamentals")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/roseus/ros/fundamentals")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/common-lisp/ros/fundamentals")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/gennodejs/ros/fundamentals")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/lib/python3/dist-packages/fundamentals")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/lib/python3/dist-packages/fundamentals")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/fundamentals/catkin_generated/installspace/fundamentals.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals/cmake" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/fundamentals/catkin_generated/installspace/fundamentals-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals/cmake" TYPE FILE FILES
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/fundamentals/catkin_generated/installspace/fundamentalsConfig.cmake"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/fundamentals/catkin_generated/installspace/fundamentalsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fundamentals" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/fundamentals/package.xml")
endif()

