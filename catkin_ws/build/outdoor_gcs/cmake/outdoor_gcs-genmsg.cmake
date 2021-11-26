# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "outdoor_gcs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ioutdoor_gcs:/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeographic_msgs:/opt/ros/melodic/share/geographic_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/melodic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(outdoor_gcs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg" NAME_WE)
add_custom_target(_outdoor_gcs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "outdoor_gcs" "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg" NAME_WE)
add_custom_target(_outdoor_gcs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "outdoor_gcs" "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/outdoor_gcs
)
_generate_msg_cpp(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/outdoor_gcs
)

### Generating Services

### Generating Module File
_generate_module_cpp(outdoor_gcs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/outdoor_gcs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(outdoor_gcs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(outdoor_gcs_generate_messages outdoor_gcs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_cpp _outdoor_gcs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_cpp _outdoor_gcs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(outdoor_gcs_gencpp)
add_dependencies(outdoor_gcs_gencpp outdoor_gcs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS outdoor_gcs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/outdoor_gcs
)
_generate_msg_eus(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/outdoor_gcs
)

### Generating Services

### Generating Module File
_generate_module_eus(outdoor_gcs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/outdoor_gcs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(outdoor_gcs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(outdoor_gcs_generate_messages outdoor_gcs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_eus _outdoor_gcs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_eus _outdoor_gcs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(outdoor_gcs_geneus)
add_dependencies(outdoor_gcs_geneus outdoor_gcs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS outdoor_gcs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/outdoor_gcs
)
_generate_msg_lisp(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/outdoor_gcs
)

### Generating Services

### Generating Module File
_generate_module_lisp(outdoor_gcs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/outdoor_gcs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(outdoor_gcs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(outdoor_gcs_generate_messages outdoor_gcs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_lisp _outdoor_gcs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_lisp _outdoor_gcs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(outdoor_gcs_genlisp)
add_dependencies(outdoor_gcs_genlisp outdoor_gcs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS outdoor_gcs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/outdoor_gcs
)
_generate_msg_nodejs(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/outdoor_gcs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(outdoor_gcs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/outdoor_gcs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(outdoor_gcs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(outdoor_gcs_generate_messages outdoor_gcs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_nodejs _outdoor_gcs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_nodejs _outdoor_gcs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(outdoor_gcs_gennodejs)
add_dependencies(outdoor_gcs_gennodejs outdoor_gcs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS outdoor_gcs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/outdoor_gcs
)
_generate_msg_py(outdoor_gcs
  "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/outdoor_gcs
)

### Generating Services

### Generating Module File
_generate_module_py(outdoor_gcs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/outdoor_gcs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(outdoor_gcs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(outdoor_gcs_generate_messages outdoor_gcs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/PathPlan.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_py _outdoor_gcs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mhviolentsky/catkin_ws/src/outdoor_gcs/msg/GPSRAW.msg" NAME_WE)
add_dependencies(outdoor_gcs_generate_messages_py _outdoor_gcs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(outdoor_gcs_genpy)
add_dependencies(outdoor_gcs_genpy outdoor_gcs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS outdoor_gcs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/outdoor_gcs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/outdoor_gcs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(outdoor_gcs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(outdoor_gcs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(outdoor_gcs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geographic_msgs_generate_messages_cpp)
  add_dependencies(outdoor_gcs_generate_messages_cpp geographic_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/outdoor_gcs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/outdoor_gcs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(outdoor_gcs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(outdoor_gcs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(outdoor_gcs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geographic_msgs_generate_messages_eus)
  add_dependencies(outdoor_gcs_generate_messages_eus geographic_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/outdoor_gcs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/outdoor_gcs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(outdoor_gcs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(outdoor_gcs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(outdoor_gcs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geographic_msgs_generate_messages_lisp)
  add_dependencies(outdoor_gcs_generate_messages_lisp geographic_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/outdoor_gcs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/outdoor_gcs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(outdoor_gcs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(outdoor_gcs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(outdoor_gcs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geographic_msgs_generate_messages_nodejs)
  add_dependencies(outdoor_gcs_generate_messages_nodejs geographic_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/outdoor_gcs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/outdoor_gcs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/outdoor_gcs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(outdoor_gcs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(outdoor_gcs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(outdoor_gcs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geographic_msgs_generate_messages_py)
  add_dependencies(outdoor_gcs_generate_messages_py geographic_msgs_generate_messages_py)
endif()
