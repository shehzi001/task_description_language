Task Description Language
=========================

Installation wiki for iTaSC framework
======================================

**Step 1:Install ROS Fuerte**

				http://wiki.ros.org/fuerte/Installation/Ubuntu

**Step 2:Create ROS workspace in home directory**

				http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment

**Step 3:Install these packages**

				sudo apt-get install libeigen3-dev ros-fuerte-rtt-ros-integration ros-fuerte-rtt-geometry ros-fuerte-rtt-common-msgs ros-fuerte-rtt-ros-comm ros-fuerte-orocos-toolchain

**Step 4:Go to this link**

				http://www.orocos.org/wiki/orocos/itasc-wiki/itasc-quick-start

**Scroll down to Sec. 3.2**

				Click on "here" first line.It will open or download the file.

**Step 5:Go to your ROS workspace**

				cd ~/fuerte_workspace/

create a file over there:

				nano itasc_dsl.rosinstall

copy the content from downloaded file in above Step 3 and paste inside this file and save.

Then Run these command.

				rosws merge itasc_dsl.rosinstall

				rosws update

After running these commands,you will have all the repositories related to iTaSC in your workspace.

**Step 6:Again go to the link mention in Step 4**

Now come to sec 3.2.1:

Click on "here" Second line.It will open or download the file.

**Step 7:Go to your ROS workspace**

				cd ~/fuerte_workspace/

create a file over there:

				nano itasc_youbot_fuerte.rosinstall

copy the content from downloaded file in above Step 6 and paste inside this file and save.

Then Run these command.

				rosws merge itasc_youbot_fuerte.rosinstall

				rosws update

After running these commands,you will have all the repositories related to youbot in your workspace.

**Step 8:Again go to the link mention in Step 4**

				http://www.orocos.org/wiki/orocos/itasc-wiki/itasc-quick-start

Scroll down to Sec. 3.3:

Click on "Download this file," first line.It will open or download the file.

**Step 9:Execute these commands in terminal**

				cd

				nano ~/.bash_itasc_dsl

copy the content from the downloaded file in Step 8 and paste in bash_itasc_dsl file and save it.Now

				nano ~/.bashrc

and paste the following lines at the end of this bashrc file.

				source ~/.bash_itasc_dsl

				useITaSC_deb

				source ~/.bashrc


Compilation and running
==========================

**Step 1: Go to your workspace**

				cd ~/fuerte_workspace/

				rosrun rtt_rosnode create_rtt_msgs pr2_controllers_msgs

				rosws set rtt_pr2_controllers_msgs

				roscd itasc_pr2

				./convert_xacro.sh

**Step 2:Go to root of your ROS workspace**

				cd ~/fuerte_workspace/

				rosmake itasc itasc_core trajectory_generators itasc_tasks rFSM rttlua_completion itasc_solvers fixed_object  itasc_robot_object moving_object moving_object_tf

Running and Testing
==========================
**Test PR2**

Open two termininals.

In one terminal run:

				roslaunch pr2_gazebo pr2_empty_world.launch

In other terminal run:

				sudo bash

				roscd itasc_dsl

				./run_bunny.sh

This should move the arms in a grippers down 'bunny' pose

**Test Youbot lissajous tracing tutorial **

				http://orocos.org/wiki/main-page/itasc-wiki/itasc-tutorials/youbot-lissajous-tracing-tutorial-erf2012

Open 4 terminals and execute this command in all terminals.

				sudo bash 

In First terminal run:

				roscore

In Second terminal run:

				roslaunch gazebo_worlds empty_world.launch

In Third terminal run:

				roscd itasc_erf2012_demo/

				./run_gazebo.sh

In Fourth Terminal run:

				./run_simulation.sh

Look for the following output in terminal 4.

				itasc fsm: STATE ENTER
				root.NONemergency.RunningITASC.Running
				[cartesian generator] moveTo will start from

youbot arm will also move to some inital configuration.

you should see in fourth terminal: 

				Deployer > 

Now you can write the below mentioned command infront of the " Deployer >"

				event_firer.itasc_common_events_in.write("e_start_tracing")

youbot start tracing the figure

and then to stop execute  

				event_firer.itasc_common_events_in.write("e_stop_tracing")

youbot will stop.

Done!

=========================================






