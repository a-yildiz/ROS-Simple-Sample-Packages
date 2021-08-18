# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ogretici_paket: 8 messages, 1 services")

set(MSG_I_FLAGS "-Iogretici_paket:/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg;-Iogretici_paket:/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ogretici_paket_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg" ""
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg" "ogretici_paket/GorevDurumFeedback:ogretici_paket/GorevDurumResult:ogretici_paket/GorevDurumActionGoal:std_msgs/Header:ogretici_paket/GorevDurumActionResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:ogretici_paket/GorevDurumActionFeedback:ogretici_paket/GorevDurumGoal"
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg" "actionlib_msgs/GoalID:ogretici_paket/GorevDurumGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg" "actionlib_msgs/GoalID:ogretici_paket/GorevDurumResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:ogretici_paket/GorevDurumFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg" ""
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg" ""
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg" ""
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv" NAME_WE)
add_custom_target(_ogretici_paket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ogretici_paket" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)

### Generating Services
_generate_srv_cpp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
)

### Generating Module File
_generate_module_cpp(ogretici_paket
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ogretici_paket_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ogretici_paket_generate_messages ogretici_paket_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_cpp _ogretici_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ogretici_paket_gencpp)
add_dependencies(ogretici_paket_gencpp ogretici_paket_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ogretici_paket_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)
_generate_msg_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)

### Generating Services
_generate_srv_eus(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
)

### Generating Module File
_generate_module_eus(ogretici_paket
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ogretici_paket_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ogretici_paket_generate_messages ogretici_paket_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_eus _ogretici_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ogretici_paket_geneus)
add_dependencies(ogretici_paket_geneus ogretici_paket_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ogretici_paket_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)
_generate_msg_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)

### Generating Services
_generate_srv_lisp(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
)

### Generating Module File
_generate_module_lisp(ogretici_paket
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ogretici_paket_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ogretici_paket_generate_messages ogretici_paket_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_lisp _ogretici_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ogretici_paket_genlisp)
add_dependencies(ogretici_paket_genlisp ogretici_paket_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ogretici_paket_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)
_generate_msg_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)

### Generating Services
_generate_srv_nodejs(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
)

### Generating Module File
_generate_module_nodejs(ogretici_paket
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ogretici_paket_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ogretici_paket_generate_messages ogretici_paket_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_nodejs _ogretici_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ogretici_paket_gennodejs)
add_dependencies(ogretici_paket_gennodejs ogretici_paket_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ogretici_paket_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)
_generate_msg_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)

### Generating Services
_generate_srv_py(ogretici_paket
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
)

### Generating Module File
_generate_module_py(ogretici_paket
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ogretici_paket_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ogretici_paket_generate_messages ogretici_paket_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/msg/BataryaDurum.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumAction.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumActionFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumGoal.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumResult.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/devel/share/ogretici_paket/msg/GorevDurumFeedback.msg" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/ogretici_paket/srv/GecenZaman.srv" NAME_WE)
add_dependencies(ogretici_paket_generate_messages_py _ogretici_paket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ogretici_paket_genpy)
add_dependencies(ogretici_paket_genpy ogretici_paket_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ogretici_paket_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ogretici_paket
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ogretici_paket_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(ogretici_paket_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ogretici_paket
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ogretici_paket_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(ogretici_paket_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ogretici_paket
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ogretici_paket_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(ogretici_paket_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ogretici_paket
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ogretici_paket_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(ogretici_paket_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ogretici_paket
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ogretici_paket_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(ogretici_paket_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
