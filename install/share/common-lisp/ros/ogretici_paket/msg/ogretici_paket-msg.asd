
(cl:in-package :asdf)

(defsystem "ogretici_paket-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BataryaDurum" :depends-on ("_package_BataryaDurum"))
    (:file "_package_BataryaDurum" :depends-on ("_package"))
    (:file "GorevDurumAction" :depends-on ("_package_GorevDurumAction"))
    (:file "_package_GorevDurumAction" :depends-on ("_package"))
    (:file "GorevDurumActionFeedback" :depends-on ("_package_GorevDurumActionFeedback"))
    (:file "_package_GorevDurumActionFeedback" :depends-on ("_package"))
    (:file "GorevDurumActionGoal" :depends-on ("_package_GorevDurumActionGoal"))
    (:file "_package_GorevDurumActionGoal" :depends-on ("_package"))
    (:file "GorevDurumActionResult" :depends-on ("_package_GorevDurumActionResult"))
    (:file "_package_GorevDurumActionResult" :depends-on ("_package"))
    (:file "GorevDurumFeedback" :depends-on ("_package_GorevDurumFeedback"))
    (:file "_package_GorevDurumFeedback" :depends-on ("_package"))
    (:file "GorevDurumGoal" :depends-on ("_package_GorevDurumGoal"))
    (:file "_package_GorevDurumGoal" :depends-on ("_package"))
    (:file "GorevDurumResult" :depends-on ("_package_GorevDurumResult"))
    (:file "_package_GorevDurumResult" :depends-on ("_package"))
  ))