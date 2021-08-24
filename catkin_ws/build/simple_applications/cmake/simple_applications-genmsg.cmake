# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simple_applications: 1 messages, 1 services")

set(MSG_I_FLAGS "-Isimple_applications:/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simple_applications_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg" NAME_WE)
add_custom_target(_simple_applications_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simple_applications" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg" ""
)

get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv" NAME_WE)
add_custom_target(_simple_applications_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simple_applications" "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_applications
)

### Generating Services
_generate_srv_cpp(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_applications
)

### Generating Module File
_generate_module_cpp(simple_applications
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_applications
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simple_applications_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simple_applications_generate_messages simple_applications_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg" NAME_WE)
add_dependencies(simple_applications_generate_messages_cpp _simple_applications_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv" NAME_WE)
add_dependencies(simple_applications_generate_messages_cpp _simple_applications_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simple_applications_gencpp)
add_dependencies(simple_applications_gencpp simple_applications_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_applications_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_applications
)

### Generating Services
_generate_srv_eus(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_applications
)

### Generating Module File
_generate_module_eus(simple_applications
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_applications
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simple_applications_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simple_applications_generate_messages simple_applications_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg" NAME_WE)
add_dependencies(simple_applications_generate_messages_eus _simple_applications_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv" NAME_WE)
add_dependencies(simple_applications_generate_messages_eus _simple_applications_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simple_applications_geneus)
add_dependencies(simple_applications_geneus simple_applications_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_applications_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_applications
)

### Generating Services
_generate_srv_lisp(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_applications
)

### Generating Module File
_generate_module_lisp(simple_applications
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_applications
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simple_applications_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simple_applications_generate_messages simple_applications_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg" NAME_WE)
add_dependencies(simple_applications_generate_messages_lisp _simple_applications_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv" NAME_WE)
add_dependencies(simple_applications_generate_messages_lisp _simple_applications_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simple_applications_genlisp)
add_dependencies(simple_applications_genlisp simple_applications_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_applications_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_applications
)

### Generating Services
_generate_srv_nodejs(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_applications
)

### Generating Module File
_generate_module_nodejs(simple_applications
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_applications
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simple_applications_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simple_applications_generate_messages simple_applications_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg" NAME_WE)
add_dependencies(simple_applications_generate_messages_nodejs _simple_applications_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv" NAME_WE)
add_dependencies(simple_applications_generate_messages_nodejs _simple_applications_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simple_applications_gennodejs)
add_dependencies(simple_applications_gennodejs simple_applications_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_applications_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_applications
)

### Generating Services
_generate_srv_py(simple_applications
  "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_applications
)

### Generating Module File
_generate_module_py(simple_applications
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_applications
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simple_applications_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simple_applications_generate_messages simple_applications_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/msg/Distance.msg" NAME_WE)
add_dependencies(simple_applications_generate_messages_py _simple_applications_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yildiz/GitRepos/ROS_Samples/catkin_ws/src/simple_applications/srv/CircularMotion.srv" NAME_WE)
add_dependencies(simple_applications_generate_messages_py _simple_applications_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simple_applications_genpy)
add_dependencies(simple_applications_genpy simple_applications_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simple_applications_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_applications)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simple_applications
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_applications)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simple_applications
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_applications)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simple_applications
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_applications)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simple_applications
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_applications)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_applications\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simple_applications
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
