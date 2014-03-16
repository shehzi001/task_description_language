cmake_minimum_required(VERSION 2.6.0)

set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

find_package (LCM REQUIRED)
include_directories (LCM_INCLUDE_DIRS)

#find_package(FLAC REQUIRED)
#include_directories (${FLAC_INCLUDE_DIRS})

# pull in the pods macros. See cmake/pods.cmake for documentation
set(POD_NAME speech-recognizer)
include(cmake/pods.cmake)

# automatically build LCM types.  This also defines a number of CMake
# variables, see cmake/lcmtypes.cmake for details
include(cmake/lcmtypes.cmake)
lcmtypes_build()

add_subdirectory(src)