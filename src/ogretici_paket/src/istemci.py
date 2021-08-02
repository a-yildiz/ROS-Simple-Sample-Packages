#!/usr/bin/env python3      
import rospy
from ogretici_paket.srv import GecenZaman

## This is a Client node.

def istekteBulun(konum):
    rospy.wait_for_service("zaman")
    try:
        serv = rospy.ServiceProxy("zaman", GecenZaman)
        cevap = serv(konum)
        return cevap.gecen_sure
    except rospy.ServiceException:
        rospy.loginfo("Servis ile alakali hata!")


if __name__ == "__main__":
    konum = input("Hedef konumu giriniz (float64)")   # will return str
    konum = float(konum)                              # convert str ro float
    t = istekteBulun(konum)
    print("Hedefe varis zamani: {}".format(t))

## Remember to one-time `chmod +x` this file after saving.