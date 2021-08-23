;; Auto-generated. Do not edit!


(when (boundp 'fundamentals::TimePast)
  (if (not (find-package "FUNDAMENTALS"))
    (make-package "FUNDAMENTALS"))
  (shadow 'TimePast (find-package "FUNDAMENTALS")))
(unless (find-package "FUNDAMENTALS::TIMEPAST")
  (make-package "FUNDAMENTALS::TIMEPAST"))
(unless (find-package "FUNDAMENTALS::TIMEPASTREQUEST")
  (make-package "FUNDAMENTALS::TIMEPASTREQUEST"))
(unless (find-package "FUNDAMENTALS::TIMEPASTRESPONSE")
  (make-package "FUNDAMENTALS::TIMEPASTRESPONSE"))

(in-package "ROS")





(defclass fundamentals::TimePastRequest
  :super ros::object
  :slots (_target_distance ))

(defmethod fundamentals::TimePastRequest
  (:init
   (&key
    ((:target_distance __target_distance) 0.0)
    )
   (send-super :init)
   (setq _target_distance (float __target_distance))
   self)
  (:target_distance
   (&optional __target_distance)
   (if __target_distance (setq _target_distance __target_distance)) _target_distance)
  (:serialization-length
   ()
   (+
    ;; float64 _target_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _target_distance
       (sys::poke _target_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _target_distance
     (setq _target_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass fundamentals::TimePastResponse
  :super ros::object
  :slots (_time_past ))

(defmethod fundamentals::TimePastResponse
  (:init
   (&key
    ((:time_past __time_past) 0.0)
    )
   (send-super :init)
   (setq _time_past (float __time_past))
   self)
  (:time_past
   (&optional __time_past)
   (if __time_past (setq _time_past __time_past)) _time_past)
  (:serialization-length
   ()
   (+
    ;; float64 _time_past
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time_past
       (sys::poke _time_past (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time_past
     (setq _time_past (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass fundamentals::TimePast
  :super ros::object
  :slots ())

(setf (get fundamentals::TimePast :md5sum-) "f6a073bb75b4f1328610282d59ded8da")
(setf (get fundamentals::TimePast :datatype-) "fundamentals/TimePast")
(setf (get fundamentals::TimePast :request) fundamentals::TimePastRequest)
(setf (get fundamentals::TimePast :response) fundamentals::TimePastResponse)

(defmethod fundamentals::TimePastRequest
  (:response () (instance fundamentals::TimePastResponse :init)))

(setf (get fundamentals::TimePastRequest :md5sum-) "f6a073bb75b4f1328610282d59ded8da")
(setf (get fundamentals::TimePastRequest :datatype-) "fundamentals/TimePastRequest")
(setf (get fundamentals::TimePastRequest :definition-)
      "float64 target_distance
---
float64 time_past

# The ordering above is:
# client request
# server response

")

(setf (get fundamentals::TimePastResponse :md5sum-) "f6a073bb75b4f1328610282d59ded8da")
(setf (get fundamentals::TimePastResponse :datatype-) "fundamentals/TimePastResponse")
(setf (get fundamentals::TimePastResponse :definition-)
      "float64 target_distance
---
float64 time_past

# The ordering above is:
# client request
# server response

")



(provide :fundamentals/TimePast "f6a073bb75b4f1328610282d59ded8da")


