#!/usr/bin/env python3      
import rospy
from ogretici_paket.srv import GecenZaman

## This is a Service node.

def ZamaniHesapla(talep):
    # t = x/v
    robot_hizi = 0.5
    t = talep.hedef_konum / 0.5 
    rospy.loginfo("Istemciye gonderilen yanit: {}".format(t))
    return t

def cevapGonder():
    rospy.init_node("server_dugumu")
    rospy.Service("zaman", GecenZaman, ZamaniHesapla)
    rospy.spin()

if __name__ == "__main__":
    print("Servis su an calisiyor.")
    cevapGonder()

## Remember to one-time `chmod +x` this file after saving.