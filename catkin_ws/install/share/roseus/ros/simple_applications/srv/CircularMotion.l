;; Auto-generated. Do not edit!


(when (boundp 'simple_applications::CircularMotion)
  (if (not (find-package "SIMPLE_APPLICATIONS"))
    (make-package "SIMPLE_APPLICATIONS"))
  (shadow 'CircularMotion (find-package "SIMPLE_APPLICATIONS")))
(unless (find-package "SIMPLE_APPLICATIONS::CIRCULARMOTION")
  (make-package "SIMPLE_APPLICATIONS::CIRCULARMOTION"))
(unless (find-package "SIMPLE_APPLICATIONS::CIRCULARMOTIONREQUEST")
  (make-package "SIMPLE_APPLICATIONS::CIRCULARMOTIONREQUEST"))
(unless (find-package "SIMPLE_APPLICATIONS::CIRCULARMOTIONRESPONSE")
  (make-package "SIMPLE_APPLICATIONS::CIRCULARMOTIONRESPONSE"))

(in-package "ROS")





(defclass simple_applications::CircularMotionRequest
  :super ros::object
  :slots (_radius ))

(defmethod simple_applications::CircularMotionRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass simple_applications::CircularMotionResponse
  :super ros::object
  :slots ())

(defmethod simple_applications::CircularMotionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass simple_applications::CircularMotion
  :super ros::object
  :slots ())

(setf (get simple_applications::CircularMotion :md5sum-) "34d1b51a3aa2a07a0194bc3c5de27677")
(setf (get simple_applications::CircularMotion :datatype-) "simple_applications/CircularMotion")
(setf (get simple_applications::CircularMotion :request) simple_applications::CircularMotionRequest)
(setf (get simple_applications::CircularMotion :response) simple_applications::CircularMotionResponse)

(defmethod simple_applications::CircularMotionRequest
  (:response () (instance simple_applications::CircularMotionResponse :init)))

(setf (get simple_applications::CircularMotionRequest :md5sum-) "34d1b51a3aa2a07a0194bc3c5de27677")
(setf (get simple_applications::CircularMotionRequest :datatype-) "simple_applications/CircularMotionRequest")
(setf (get simple_applications::CircularMotionRequest :definition-)
      "float64 radius
---

")

(setf (get simple_applications::CircularMotionResponse :md5sum-) "34d1b51a3aa2a07a0194bc3c5de27677")
(setf (get simple_applications::CircularMotionResponse :datatype-) "simple_applications/CircularMotionResponse")
(setf (get simple_applications::CircularMotionResponse :definition-)
      "float64 radius
---

")



(provide :simple_applications/CircularMotion "34d1b51a3aa2a07a0194bc3c5de27677")


