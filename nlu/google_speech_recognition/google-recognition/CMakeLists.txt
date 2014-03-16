cmake_minimum_required(VERSION 2.6.0)

set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

find_package (CURL REQUIRED)
include_directories (CURL_INCLUDE_DIRS)

find_package(FLAC REQUIRED)
include_directories (${FLAC_INCLUDE_DIRS})

find_package (ALSA REQUIRED)
include_directories (ALSA_INCLUDE_DIRS)

# pull in the pods macros. See cmake/pods.cmake for documentation
set(POD_NAME google-recognition)
include(cmake/pods.cmake)

#tell cmake to build these subdirectories
add_subdirectory(src)
add_subdirectory(src/test)
