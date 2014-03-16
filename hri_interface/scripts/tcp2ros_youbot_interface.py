#!/usr/bin/env python
import roslib; 
roslib.load_manifest('hri_interface')
import rospy
import socket
import json
from hri_interface.msg import *


import moveit_commander
import moveit_msgs.msg


import tf
from tf.transformations import euler_from_quaternion
import math

import geometry_msgs.msg
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import String
from geometry_msgs.msg import Twist

NODE = 'hri_youbot_interface'

TCP_IP = '127.0.0.1'
TCP_PORT = 5004
BUFFER_SIZE = 1024

folded = [0.02,0.02,-0.02,0.02,0.02]
candle = [2.9496, 1.13446, -2.54818, 1.78896, 2.93075]
#pre_grasping = [3.02221, 2.48996, -1.53309, 1.17502, 2.92980]
grasp_standing = [2.93836, 2.020597, -1.88253, 3.36243, 3.01283]

gripper_close = [0.0010,0.0010]
gripper_open = [0.0110,0.0110]

#initialize moveit_commander and rospy
moveit_commander.roscpp_initialize(sys.argv)
#Instantiate a RobotCommander object
robot = moveit_commander.RobotCommander()
#Instantiate a PlanningSceneInterface object
scene = moveit_commander.PlanningSceneInterface()
#Instantiate a MoveGroupCommander object
group_arm = moveit_commander.MoveGroupCommander("arm_1")
group_gripper = moveit_commander.MoveGroupCommander("arm_1_gripper")
#create this DisplayTrajectory publisher which is used below to  publish trajectories for RVIZ to visualize.
display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',moveit_msgs.msg.DisplayTrajectory)

def move_arm_joint_space(joint_angles):
	group_arm.set_joint_value_target(joint_angles)
	plan = group_arm.plan()
	print "============going to goal position..."
	group_arm.go(plan)
	rospy.sleep(1)

def gripper_cmd(joint_angles):
	group_gripper.set_joint_value_target(joint_angles)
	plan = group_gripper.plan()
	print plan
	group_gripper.go(plan) 
	rospy.sleep(1)

def tcp2ros_interface():
  #setting up the node
  rospy.init_node(NODE)
  # /move_base_simple/goal [geometry_msgs/PoseStamped]
  rospy.loginfo("hri youbot interface running")
  pub = rospy.Publisher('cmd_vel', Twist)
  #rospy.init_node('semantic_frame_broker')
  #pub = rospy.Publisher('semantic_frames',frame)
  
  #setting up the connection
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.bind((TCP_IP, TCP_PORT))
  s.listen(1)

  conn, addr = s.accept()
  print 'Connection address:', addr

  while not rospy.is_shutdown(): 
    data = conn.recv(BUFFER_SIZE)
    print "received data:", data
    if not data:
     break
    parse_data(data)
    #f = parse_frame(data)
    #pub.publish(f)
  
  conn.close()
  
def parse_data(data):
	twist = Twist()
	pub = rospy.Publisher('cmd_vel', Twist)
	if(data.find("forward") != -1):
		print "moving forward"
		twist.linear.x = 0.1
		twist.linear.y = 0.0
	elif(data.find("backward") != -1 ):
		print "moving backward"
		twist.linear.x = -0.1
		twist.linear.y = 0.0
	elif(data.find("left") != -1):
		print "moving left"
		twist.linear.x = 0.0
		twist.linear.y = 0.1
	elif(data.find("rotate clockwise") != -1):
		print "rotating clockwise"
		twist.linear.x = 0.0
		twist.angular.z = 0.1
	elif(data.find("rotate counterclockwise") != -1):
		print "rotating counterclockwise"
		twist.linear.x = 0.0
		twist.angular.z = -0.1
	elif(data.find("right") != -1 ):
		print "moving right"
		twist.linear.x = 0.0
		twist.linear.y = -0.1
	elif(data.find("stop") != -1):
		print "stopping"
		twist.linear.x = 0.0
		twist.linear.y = 0.0
		twist.angular.z = 0.0
	elif(data.find("arm") != -1 and data.find("home") != -1):
		pub.publish(twist)
		move_arm_joint_space(folded)
	elif(data.find("arm") != -1 and data.find("candle") != -1):
		pub.publish(twist)
		move_arm_joint_space(candle)
		move_arm_joint_space(candle)
	elif(data.find("arm") != -1 and data.find("grab") != -1):
		pub.publish(twist)
		move_arm_joint_space(grasp_standing)
	elif(data.find("finger") != -1 and data.find("open") != -1):
		gripper_cmd(gripper_open)
	elif(data.find("finger") != -1 and data.find("close") != -1):
		gripper_cmd(gripper_close)
	else:
		return 0
	
	pub.publish(twist)
	rospy.sleep(2)
	twist = Twist()
	pub.publish(twist)
  
  
def parse_frame(data):
  #a = json.loads(data)
  #json_frame = json.loads(a)
  json_frame = json.loads(data)
  
  f = frame()
  f.name = json_frame["frame"]
  print "frame: %s" % f.name
  #f.lexical_unit = json_frame["lu"]
  fes = [] #initializing frame elements array
  
  print "frame elements:"
  
  for fe in json_frame["frame_elements"]:
    a = str(fe)
    frame_e = frame_element()
    frame_e.name = a
    frame_e.role_filler = json_frame["frame_elements"][a]
    print "%s: %s" % (a, json_frame["frame_elements"][a])
    fes.append(frame_e)
  
  f.frame_elements = fes
  return f

if __name__ == '__main__':
  try:
    tcp2ros_interface()
    moveit_commander.roscpp_shutdown()
  except rospy.ROSInterruptException:
    pass
