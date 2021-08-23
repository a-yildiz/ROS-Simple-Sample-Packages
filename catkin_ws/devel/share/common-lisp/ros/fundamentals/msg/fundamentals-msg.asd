
(cl:in-package :asdf)

(defsystem "fundamentals-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BatteryStatus" :depends-on ("_package_BatteryStatus"))
    (:file "_package_BatteryStatus" :depends-on ("_package"))
    (:file "MissionStatusAction" :depends-on ("_package_MissionStatusAction"))
    (:file "_package_MissionStatusAction" :depends-on ("_package"))
    (:file "MissionStatusActionFeedback" :depends-on ("_package_MissionStatusActionFeedback"))
    (:file "_package_MissionStatusActionFeedback" :depends-on ("_package"))
    (:file "MissionStatusActionGoal" :depends-on ("_package_MissionStatusActionGoal"))
    (:file "_package_MissionStatusActionGoal" :depends-on ("_package"))
    (:file "MissionStatusActionResult" :depends-on ("_package_MissionStatusActionResult"))
    (:file "_package_MissionStatusActionResult" :depends-on ("_package"))
    (:file "MissionStatusFeedback" :depends-on ("_package_MissionStatusFeedback"))
    (:file "_package_MissionStatusFeedback" :depends-on ("_package"))
    (:file "MissionStatusGoal" :depends-on ("_package_MissionStatusGoal"))
    (:file "_package_MissionStatusGoal" :depends-on ("_package"))
    (:file "MissionStatusResult" :depends-on ("_package_MissionStatusResult"))
    (:file "_package_MissionStatusResult" :depends-on ("_package"))
  ))