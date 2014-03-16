add_definitions(-std=gnu99)

file(GLOB c_files *.c)
file(GLOB h_files *.h)
add_library(google-recognition SHARED ${c_files})

IF(APPLE)
    FIND_LIBRARY (AUDIOTOOLBOX_LIBRARY AudioToolbox)
    FIND_LIBRARY (COREFOUNDATION_LIBRARY CoreFoundation)
    MARK_AS_ADVANCED (AUDIOTOOLBOX_LIBRARY COREFOUNDATION_LIBRARY)
    SET(EXTRA_LIBS ${AUDIOTOOLBOX_LIBRARY} ${COREFOUNDATION_LIBRARY})
ELSEIF (APPLE)
    find_package (ALSA REQUIRED)
    include_directories (ALSA_INCLUDE_DIRS)
    set (EXTRA_LIBS ${ALSA_LIBRARIES})
ENDIF (APPLE)

# set the library API version.  Increment this every time the public API
# changes.
set_target_properties(google-recognition PROPERTIES SOVERSION 1)
target_link_libraries(google-recognition ${EXTRA_LIBS} ${CURL_LIBRARIES} ${FLAC_LIBRARIES} ${ALSA_LIBRARIES})

# make the shared library public
pods_install_libraries(google-recognition)
#make the header public
pods_install_headers(${h_files} DESTINATION google_recognition)

pods_install_pkg_config_file(google-recognition
    LIBS -lgoogle-recognition
    REQUIRES glib-2.0
    VERSION 0.0.1)
