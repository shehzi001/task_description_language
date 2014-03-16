# Install script for directory: /home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/src

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/speech_recognizer_gui" TYPE FILE FILES
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/src/speech_detector.h"
    "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/src/wav_file.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspeech-recognizer-gui.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspeech-recognizer-gui.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspeech-recognizer-gui.so"
         RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/lib/libspeech-recognizer-gui.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspeech-recognizer-gui.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspeech-recognizer-gui.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspeech-recognizer-gui.so"
         OLD_RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/lib:/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib:"
         NEW_RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspeech-recognizer-gui.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/google-speech-recognizer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/google-speech-recognizer")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/google-speech-recognizer"
         RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/bin/google-speech-recognizer")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/google-speech-recognizer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/google-speech-recognizer")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/google-speech-recognizer"
         OLD_RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/google_speech_recognition/speech-recognizer/pod-build/lib:/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib:"
         NEW_RPATH "/home/shehzad/ros_ws/hydro/rockin_ws/src/mm_kia/task_description_language/nlu/build/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/google-speech-recognizer")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

