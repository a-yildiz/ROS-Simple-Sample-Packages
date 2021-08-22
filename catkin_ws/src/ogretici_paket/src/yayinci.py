#!/usr/bin/env python3
import rospy
from ogretici_paket.msg import BataryaDurum

## This is a Publisher node.

def mesajYayinla():
    rospy.init_node("yayinci_dugumu", anonymous=True)   # making Anonymous adds random numbers to name under `rosnode list`.
    pub = rospy.Publisher("/batarya_konusu/batarya/sondurum", BataryaDurum, queue_size=100)
    rate = rospy.Rate(10)
    
    while not rospy.is_shutdown():
        durum = "yuzde25"
        rospy.loginfo("Yayinladigim mesaj: {}".format(durum))
        pub.publish(durum)
        rate.sleep()

if __name__ == "__main__":
    mesajYayinla()

## Remember to one-time `chmod +x` this file after saving.