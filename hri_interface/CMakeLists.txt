cmake_minimum_required(VERSION 2.8.3)
project(hri_interface)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

 add_message_files(
   FILES
   frame.msg
   frame_element.msg
 )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES hri_interface
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
#  DEPENDS system_lib
)


include_directories(
  ${catkin_INCLUDE_DIRS}
)

