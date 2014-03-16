default_target: all

# Default to a less-verbose build.  If you want all the gory compiler output,
# run "make VERBOSE=1"
$(VERBOSE).SILENT:

# Figure out where to build the software.
#   Use BUILD_PREFIX if it was passed in.
#   If not, search up to four parent directories for a 'build' directory.
#   Otherwise, use ./build.
ifeq "$(BUILD_PREFIX)" ""
BUILD_PREFIX:=$(shell for pfx in ./ .. ../.. ../../.. ../../../..; do d=`pwd`/$$pfx/build;\
               if [ -d $$d ]; then echo $$d; exit 0; fi; done; echo `pwd`/build)
endif
# create the build directory if needed, and normalize its path name
BUILD_PREFIX:=$(shell mkdir -p $(BUILD_PREFIX) && cd $(BUILD_PREFIX) && echo `pwd`)

# Default to a release build.  If you want to enable debugging flags, run
# "make BUILD_TYPE=Debug"
ifeq "$(BUILD_TYPE)" ""
BUILD_TYPE="Release"
endif

CLASSPATH_LCM:=`pkg-config --variable=classpath lcm-java`
lcm_jar_files=$(shell ls $(BUILD_PREFIX)/share/java/*.jar)

speech_recognizer_spy=$(BUILD_PREFIX)/bin/sr-spy


all: $(speech_recognizer_spy)

$(speech_recognizer_spy):
	@echo "\nBUILD_PREFIX: $(BUILD_PREFIX)\n"
	@echo > $@ "#!/bin/bash"	
	@echo >> $@ "CLASSPATH=\"$(CLASSPATH_LCM)\c"
	@for jarfile in $(lcm_jar_files); do \
	echo >> $@ ":$$jarfile\c"; done
	@echo >> $@ "\" lcm-spy"
	chmod 755 $@

clean:
	rm -f $(speech_recognizer_spy)


