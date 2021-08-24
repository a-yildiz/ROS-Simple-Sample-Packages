;; Auto-generated. Do not edit!


(when (boundp 'simple_applications::Distance)
  (if (not (find-package "SIMPLE_APPLICATIONS"))
    (make-package "SIMPLE_APPLICATIONS"))
  (shadow 'Distance (find-package "SIMPLE_APPLICATIONS")))
(unless (find-package "SIMPLE_APPLICATIONS::DISTANCE")
  (make-package "SIMPLE_APPLICATIONS::DISTANCE"))

(in-package "ROS")
;;//! \htmlinclude Distance.msg.html


(defclass simple_applications::Distance
  :super ros::object
  :slots (_amount ))

(defmethod simple_applications::Distance
  (:init
   (&key
    ((:amount __amount) 0.0)
    )
   (send-super :init)
   (setq _amount (float __amount))
   self)
  (:amount
   (&optional __amount)
   (if __amount (setq _amount __amount)) _amount)
  (:serialization-length
   ()
   (+
    ;; float64 _amount
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _amount
       (sys::poke _amount (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _amount
     (setq _amount (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simple_applications::Distance :md5sum-) "6816fb13cdadc51f50a8e1a596fde6dd")
(setf (get simple_applications::Distance :datatype-) "simple_applications/Distance")
(setf (get simple_applications::Distance :definition-)
      "float64 amount
")



(provide :simple_applications/Distance "6816fb13cdadc51f50a8e1a596fde6dd")


