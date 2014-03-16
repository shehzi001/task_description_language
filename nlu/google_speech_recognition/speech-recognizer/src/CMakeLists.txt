if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    find_package(Qt4 COMPONENTS QtCore QtGui QtOpenGL REQUIRED)
    find_package(QtMultimediaKit)
    find_package(QMobility)
    include_directories("${QT_INCLUDE_DIR}/../QtMobility")
    include_directories("${QT_INCLUDE_DIR}/../QtMultimediaKit")
    set(QtMultimediaKit_LIBRARIES -lQtMultimediaKit)
else()
    find_package(Qt4 COMPONENTS QtCore QtGui QtOpenGL QtMultimedia REQUIRED)
    set(QtMultimediaKit_LIBRARIES )
endif(${CMAKE_SYSTEM_NAME} MATCHES "Linux")

include(${QT_USE_FILE})
include_directories(${QT_INCLUDE_DIR})

set(LIB speech-recognizer-gui)
qt_wrap_cpp(speech-recognizer
            MOC_SRCS
            speech_detector.h
            widget_h2sl.h
            widget_h2sl_comments.h)

# Create a shared library lib${POD_NAME}.so with all source files
add_library(${LIB} SHARED
    speech_detector.cc
    wav_file.cc
    widget_h2sl.cc
    widget_h2sl_comments.cc
    ${MOC_SRCS})


target_link_libraries(${LIB} ${QT_LIBRARIES} ${QtMultimediaKit_LIBRARIES})
pods_use_pkg_config_packages (${LIB} google-recognition lcmtypes_${POD_NAME})

pods_install_headers (speech_detector.h wav_file.h DESTINATION speech_recognizer_gui)

pods_install_libraries (${LIB})


add_executable (google-speech-recognizer speech_detector_demo.cc)
target_link_libraries (google-speech-recognizer ${LIB} ${QT_LIBRARIES} ${LCM_LIBRARIES} ${QtMultimediaKit_LIBRARIES})
pods_use_pkg_config_packages(google-speech-recognizer lcmtypes_${POD_NAME})

pods_install_executables (google-speech-recognizer)
