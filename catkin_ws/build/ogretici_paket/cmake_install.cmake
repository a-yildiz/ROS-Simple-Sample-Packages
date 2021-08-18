# Install script for directory: /home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket/msg" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket/srv" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket/action" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/action/GorevDurum.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket/msg" TYPE FILE FILES
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket/cmake" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/ogretici_paket/catkin_generated/installspace/ogretici_paket-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/include/ogretici_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/roseus/ros/ogretici_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/common-lisp/ros/ogretici_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/gennodejs/ros/ogretici_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/lib/python3/dist-packages/ogretici_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/lib/python3/dist-packages/ogretici_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/ogretici_paket/catkin_generated/installspace/ogretici_paket.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket/cmake" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/ogretici_paket/catkin_generated/installspace/ogretici_paket-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket/cmake" TYPE FILE FILES
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/ogretici_paket/catkin_generated/installspace/ogretici_paketConfig.cmake"
    "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/build/ogretici_paket/catkin_generated/installspace/ogretici_paketConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ogretici_paket" TYPE FILE FILES "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/package.xml")
endif()

