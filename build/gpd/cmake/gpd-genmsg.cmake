# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gpd: 6 messages, 1 services")

set(MSG_I_FLAGS "-Igpd:/home/jay/gpd_ws/src/gpd/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gpd_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg" NAME_WE)
add_custom_target(_gpd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpd" "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg" "geometry_msgs/Point:sensor_msgs/PointField:std_msgs/Int64:std_msgs/Header:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg" NAME_WE)
add_custom_target(_gpd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpd" "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg" "geometry_msgs/Vector3:std_msgs/Float32:gpd/GraspConfig:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg" NAME_WE)
add_custom_target(_gpd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpd" "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg" "std_msgs/Int64:std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Point:gpd/CloudSources:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv" NAME_WE)
add_custom_target(_gpd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpd" "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv" "std_msgs/Int64:std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Float32:gpd/CloudSources:gpd/GraspConfig:gpd/CloudIndexed:gpd/GraspConfigList:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg" NAME_WE)
add_custom_target(_gpd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpd" "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg" "std_msgs/Int64:std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Point:gpd/CloudSources:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg" NAME_WE)
add_custom_target(_gpd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpd" "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg" "std_msgs/Float32:geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg" NAME_WE)
add_custom_target(_gpd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpd" "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg" "std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
)
_generate_msg_cpp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
)
_generate_msg_cpp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
)
_generate_msg_cpp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
)
_generate_msg_cpp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
)
_generate_msg_cpp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
)

### Generating Services
_generate_srv_cpp(gpd
  "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
)

### Generating Module File
_generate_module_cpp(gpd
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gpd_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gpd_generate_messages gpd_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg" NAME_WE)
add_dependencies(gpd_generate_messages_cpp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg" NAME_WE)
add_dependencies(gpd_generate_messages_cpp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg" NAME_WE)
add_dependencies(gpd_generate_messages_cpp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv" NAME_WE)
add_dependencies(gpd_generate_messages_cpp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg" NAME_WE)
add_dependencies(gpd_generate_messages_cpp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg" NAME_WE)
add_dependencies(gpd_generate_messages_cpp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg" NAME_WE)
add_dependencies(gpd_generate_messages_cpp _gpd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpd_gencpp)
add_dependencies(gpd_gencpp gpd_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpd_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
)
_generate_msg_eus(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
)
_generate_msg_eus(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
)
_generate_msg_eus(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
)
_generate_msg_eus(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
)
_generate_msg_eus(gpd
  "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
)

### Generating Services
_generate_srv_eus(gpd
  "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
)

### Generating Module File
_generate_module_eus(gpd
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gpd_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gpd_generate_messages gpd_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg" NAME_WE)
add_dependencies(gpd_generate_messages_eus _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg" NAME_WE)
add_dependencies(gpd_generate_messages_eus _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg" NAME_WE)
add_dependencies(gpd_generate_messages_eus _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv" NAME_WE)
add_dependencies(gpd_generate_messages_eus _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg" NAME_WE)
add_dependencies(gpd_generate_messages_eus _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg" NAME_WE)
add_dependencies(gpd_generate_messages_eus _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg" NAME_WE)
add_dependencies(gpd_generate_messages_eus _gpd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpd_geneus)
add_dependencies(gpd_geneus gpd_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpd_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
)
_generate_msg_lisp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
)
_generate_msg_lisp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
)
_generate_msg_lisp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
)
_generate_msg_lisp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
)
_generate_msg_lisp(gpd
  "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
)

### Generating Services
_generate_srv_lisp(gpd
  "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
)

### Generating Module File
_generate_module_lisp(gpd
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gpd_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gpd_generate_messages gpd_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg" NAME_WE)
add_dependencies(gpd_generate_messages_lisp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg" NAME_WE)
add_dependencies(gpd_generate_messages_lisp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg" NAME_WE)
add_dependencies(gpd_generate_messages_lisp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv" NAME_WE)
add_dependencies(gpd_generate_messages_lisp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg" NAME_WE)
add_dependencies(gpd_generate_messages_lisp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg" NAME_WE)
add_dependencies(gpd_generate_messages_lisp _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg" NAME_WE)
add_dependencies(gpd_generate_messages_lisp _gpd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpd_genlisp)
add_dependencies(gpd_genlisp gpd_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpd_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
)
_generate_msg_nodejs(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
)
_generate_msg_nodejs(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
)
_generate_msg_nodejs(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
)
_generate_msg_nodejs(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
)
_generate_msg_nodejs(gpd
  "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
)

### Generating Services
_generate_srv_nodejs(gpd
  "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
)

### Generating Module File
_generate_module_nodejs(gpd
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gpd_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gpd_generate_messages gpd_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg" NAME_WE)
add_dependencies(gpd_generate_messages_nodejs _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg" NAME_WE)
add_dependencies(gpd_generate_messages_nodejs _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg" NAME_WE)
add_dependencies(gpd_generate_messages_nodejs _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv" NAME_WE)
add_dependencies(gpd_generate_messages_nodejs _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg" NAME_WE)
add_dependencies(gpd_generate_messages_nodejs _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg" NAME_WE)
add_dependencies(gpd_generate_messages_nodejs _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg" NAME_WE)
add_dependencies(gpd_generate_messages_nodejs _gpd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpd_gennodejs)
add_dependencies(gpd_gennodejs gpd_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpd_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
)
_generate_msg_py(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
)
_generate_msg_py(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
)
_generate_msg_py(gpd
  "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
)
_generate_msg_py(gpd
  "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
)
_generate_msg_py(gpd
  "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
)

### Generating Services
_generate_srv_py(gpd
  "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int64.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float32.msg;/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg;/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg;/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
)

### Generating Module File
_generate_module_py(gpd
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gpd_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gpd_generate_messages gpd_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSources.msg" NAME_WE)
add_dependencies(gpd_generate_messages_py _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfigList.msg" NAME_WE)
add_dependencies(gpd_generate_messages_py _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudIndexed.msg" NAME_WE)
add_dependencies(gpd_generate_messages_py _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/srv/detect_grasps.srv" NAME_WE)
add_dependencies(gpd_generate_messages_py _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/CloudSamples.msg" NAME_WE)
add_dependencies(gpd_generate_messages_py _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/GraspConfig.msg" NAME_WE)
add_dependencies(gpd_generate_messages_py _gpd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jay/gpd_ws/src/gpd/msg/SamplesMsg.msg" NAME_WE)
add_dependencies(gpd_generate_messages_py _gpd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpd_genpy)
add_dependencies(gpd_genpy gpd_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpd_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpd
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(gpd_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(gpd_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gpd_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpd
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(gpd_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(gpd_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gpd_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpd
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(gpd_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(gpd_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gpd_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpd
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(gpd_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(gpd_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gpd_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpd
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(gpd_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(gpd_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gpd_generate_messages_py std_msgs_generate_messages_py)
endif()
