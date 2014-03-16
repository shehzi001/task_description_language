# Install script for directory: /home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/lib/liblcmtypes_speech-recognizer.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes" TYPE FILE FILES
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/lcmtypes/c/lcmtypes/h2sl_xml_string_t.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/lcmtypes/c/lcmtypes/speech_recognizer.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/lib/pkgconfig/lcmtypes_speech-recognizer.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes/h2sl" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/lcmtypes/cpp/lcmtypes/h2sl/xml_string_t.hpp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lcmtypes" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/lcmtypes/cpp/lcmtypes/speech_recognizer.hpp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/lcmtypes_speech-recognizer.jar")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib/python2.7/dist-packages/h2sl/__init__.py")
FILE(INSTALL DESTINATION "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib/python2.7/dist-packages/h2sl" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/lcmtypes/python/h2sl/__init__.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib/python2.7/dist-packages/h2sl/xml_string_t.py")
FILE(INSTALL DESTINATION "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib/python2.7/dist-packages/h2sl" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/lcmtypes/python/h2sl/xml_string_t.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lcmtypes" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/lcmtypes/h2sl_xml_string_t.lcm")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/src/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
