;; Auto-generated. Do not edit!


(when (boundp 'fundamentals::BatteryStatus)
  (if (not (find-package "FUNDAMENTALS"))
    (make-package "FUNDAMENTALS"))
  (shadow 'BatteryStatus (find-package "FUNDAMENTALS")))
(unless (find-package "FUNDAMENTALS::BATTERYSTATUS")
  (make-package "FUNDAMENTALS::BATTERYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BatteryStatus.msg.html


(defclass fundamentals::BatteryStatus
  :super ros::object
  :slots (_percentage ))

(defmethod fundamentals::BatteryStatus
  (:init
   (&key
    ((:percentage __percentage) "")
    )
   (send-super :init)
   (setq _percentage (string __percentage))
   self)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:serialization-length
   ()
   (+
    ;; string _percentage
    4 (length _percentage)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _percentage
       (write-long (length _percentage) s) (princ _percentage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _percentage
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _percentage (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fundamentals::BatteryStatus :md5sum-) "6350b3b07dc3f2a6f395a2cf49c5e277")
(setf (get fundamentals::BatteryStatus :datatype-) "fundamentals/BatteryStatus")
(setf (get fundamentals::BatteryStatus :definition-)
      "string percentage

")



(provide :fundamentals/BatteryStatus "6350b3b07dc3f2a6f395a2cf49c5e277")


