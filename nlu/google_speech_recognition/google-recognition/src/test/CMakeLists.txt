# Create an executable program hello-test
add_executable(google-recognizer-test tool.c)

# The test program uses the shared library, use the pkg-config file
pods_use_pkg_config_packages(google-recognizer-test google-recognition)

# make executable public
pods_install_executables(google-recognizer-test)
