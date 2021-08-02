#!/usr/bin/env python3      
import rospy
import actionlib
from ogretici_paket.msg import GorevDurumAction, GorevDurumGoal 


## This is an Action-Client node.

def bildirimCallback(bilgi):
    print("Gorevin su anki durumu: ", bilgi.oran)


def istekteBulun():
    # Istemci tanimi:
    rospy.init_node("aksiyon_istemci_dugumu")
    istemci = actionlib.SimpleActionClient("gorev", GorevDurumAction)
    istemci.wait_for_server()
    
    # Istek tanimi:
    istek = GorevDurumGoal()
    istek.birim = 5    # you'd normally take this as an input from user.
    
    # Istemcinin istegi gondermesi:
    istemci.send_goal(istek, feedback_cb=bildirimCallback)
    istemci.wait_for_result()
    x = istemci.get_result().sonuc
    return x


if __name__ == "__main__":
    print("Aksiyon-Istemci su an calisiyor.")
    cikti = istekteBulun()
    print("Gorevin son durumu: ", cikti)

## Remember to one-time `chmod +x` this file after saving.