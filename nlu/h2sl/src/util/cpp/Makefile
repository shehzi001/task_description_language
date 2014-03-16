# This Makefile was tested with GNU Make
CXX=g++

# Use pkg-config to lookup the proper compiler and linker flags for LCM
CFLAGS=`pkg-config --cflags lcm`
LDFLAGS=`pkg-config --libs lcm`

msg_types=../*.lcm

all: exlcm/example_t.hpp /home/shehzad/nlu/build/include/h2sl/*.hpp /home/shehzad/nlu/build/include/h2sl/*.h \
	listener \
	send-message 

listener: listener.o 
	$(CXX) -o $@ $^ $(LDFLAGS)

send-message: send_message.o
	$(CXX) -o $@ $^ $(LDFLAGS)

%.o: %.cpp exlcm/example_t.hpp
	$(CXX) $(CFLAGS) -I. -o $@ -c $< 
	
%.o: %.cpp /home/shehzad/nlu/build/include/h2sl/%.hpp
	$(CXX) $(CFLAGS) -I. -o $@ -c $<

%.o: %.cpp /home/shehzad/nlu/build/include/h2sl/%.h
	$(CXX) $(CFLAGS) -I. -o $@ -c $<

exlcm/%.hpp:
	lcm-gen -x ../*.lcm
	
/home/shehzad/nlu/build/include/h2sl/%.hpp:
	lcm-gen -x ../*.lcm

clean:
	rm -f listener send-message 
	rm -f *.o exlcm/*.o
	rm -f exlcm/*.hpp
	rm -f *.o /home/shehzad/nlu/build/include/h2sl/*.o
	rm -f /home/shehzad/nlu/build/include/h2sl/*.hpp
