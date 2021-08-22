#!/usr/bin/env python3      
import rospy
from ogretici_paket.msg import BataryaDurum

## This is a Subscriber node.

def abone_fonksiyonu(gelen_mesaj):
    rospy.loginfo("Aboneye gelen mesaj: {}".format(gelen_mesaj.batarya))

def mesajDinle():
    rospy.init_node("abone_dugumu")
    rospy.Subscriber("/batarya_konusu/batarya/sondurum", BataryaDurum, abone_fonksiyonu)
    rospy.spin()

if __name__ == "__main__":
    mesajDinle()

## Remember to one-time `chmod +x` this file after saving.