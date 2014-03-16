# Install script for directory: /home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src

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
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgoogle-recognition.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgoogle-recognition.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/pod-build/lib/libgoogle-recognition.so.1"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/pod-build/lib/libgoogle-recognition.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgoogle-recognition.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgoogle-recognition.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/pod-build/lib:/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib:"
           NEW_RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/google_recognition" TYPE FILE FILES
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/object.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/flac_encoder.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/hello.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/web_client.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/recognize.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/wav.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/sprec.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/src/jsonz.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/google-recognition/pod-build/lib/pkgconfig/google-recognition.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

