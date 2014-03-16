#!/usr/bin/env python
import roslib; 
roslib.load_manifest('hri_interface')
import rospy
import socket
import json
from hri_interface.msg import *

NODE = 'hri_youbot_interface'

TCP_IP = '127.0.0.1'
TCP_PORT = 5004
BUFFER_SIZE = 1024

def tcp2ros_interface():
  #setting up the node
  rospy.init_node(NODE)
  rospy.loginfo("hri tcp2ros interface running")

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
       
  conn.close()
 
if __name__ == '__main__':
  try:
    tcp2ros_interface()
  except rospy.ROSInterruptException:
    pass
