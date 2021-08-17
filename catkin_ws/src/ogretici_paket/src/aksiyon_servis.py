#!/usr/bin/env python3      
import rospy
import actionlib
from ogretici_paket.msg import GorevDurumAction, GorevDurumFeedback, GorevDurumResult 


## This is an Action-Service node.

# Let's use a Class for the definition of this node.

class ActionServer():
    def __init__(self):
        rospy.init_node("aksiyon_servis_dugumu")
        self.a_servis = actionlib.SimpleActionServer("gorev", GorevDurumAction, auto_start=False, execute_cb=self.cevapCallback)
        self.a_servis.start()
        rospy.spin()

    def cevapCallback(self, istek):
        
        # Feedback: Gelen istegin yuzden kacinin tamamlandigini geri bildirir.
        geri_bildirim = GorevDurumFeedback()
        bitis = GorevDurumResult()
        rate = rospy.Rate(1)    # rate of geri_bildirim

        for itr in range(istek.birim):
            itr_durum = '%' + str(itr*100/istek.birim)
            geri_bildirim.oran = itr_durum
            self.a_servis.publish_feedback(geri_bildirim)
            rate.sleep()

        # Result: Bitince bunu bildir.
        bitis.sonuc = "Gorev tamamlandi!"
        self.a_servis.set_succeeded(bitis)

if __name__ == "__main__":
    print("Aksiyon-Servis su an calisiyor.")
    ActionServer()

## Remember to one-time `chmod +x` this file after saving.