task_description_language
=========================

Instruction to use Humand Robot Interaction module
==================================================

**Step 1: Install all the dependencies**

*git
*subversion
*cmake
*build-essential
*autoconf
*autopoint
*libtool
*libglib2.0-dev
*qt4-dev
*gengetopt
*libxml2-dev
*libboost-dev
*libcurl4-gnutls-dev
*libflac-dev
*libasound2-dev
*qtmobility-dev

		use sudo apt-get install (package-name)

**Step 2: Clone this repository**

		git clone git@github.com:innovation-team/task_description_language.git

		cd ~/task_description_language/nlu/

**Step 3:Installing LCM for interprocess communication**

		cd ~/task_description_language/nlu/

		svn checkout http://lcm.googlecode.com/svn/trunk/ lcm-read-only

		cd lcm-read-only

		./bootstrap.sh 

		./configure 

		make

		sudo make install

**Step 4:Installing google speech recognizer**

		cd ~/task_description_language/nlu/
		mkdir build

		For fresh installation.Its already here in the repositroy.So you can skip next two commands.
		wget http://people.csail.mit.edu/mwalter/google_speech_recognition.tgz
		tar -xvzf google_speech_recognition.tgz

		cd google_speech_recognition
		export BUILD_PREFIX=~/task_description_language/nlu/build
		make

**Step 5:Testing google speech recognizer.Make sure that you have internet on your PC/laptop**

		cd ~/task_description_language/nlu/build/bin 

		./google-speech-recognizer
		./sr-spy

Click on the mic on the gui-window and record the voice and then release the click.
Then it will send the recorded file to google online server to recognize speech and it will return string as result.
google-speech-recognizer use LCM to publish msg "SPEECH_RECOGNITION_OUTPUT".
sr-spy is a test node which looks for LCM messages and show it in another gui-window.

**Step 6:Install liblbfgs C library**

		cd ~/task_description_language/nlu/

		git clone https://github.com/chokkan/liblbfgs

		cd liblbfgs
		./autogen.sh
		./configure --prefix=/usr/local
		make
		sudo make install

**Step 7:Cloned and compile h2sl**

		cd ~/task_description_language/nlu/

		For fresh installation only.You can skip the next command.
		git clone https://code.google.com/p/h2sl

		cd ~/task_description_language/nlu/h2sl

		mkdir local_build && cd local_build

		cmake -DCMAKE_INSTALL_PREFIX=~/task_description_language/nlu/build ../

		make
		 
		make install

		cd ~/task_description_language/nlu/build/bin && ls

The "lcm2tcp_interface" binary acts as a link between rosnode ,hri_interface(a TCP server), 
and speech recognizer which pubulishes LCM message "SPEECH_RECOGNITION_OUTPUT".

**Testing the application:**
===================================================================


		roscore

		rosrun hri_interface tcp2ros_interface.py

		cd ~/task_description_language/nlu/build/bin

		./google-speech-recognizer

		./lcm2tcp_interface


 














