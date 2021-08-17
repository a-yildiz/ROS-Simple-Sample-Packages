;; Auto-generated. Do not edit!


(when (boundp 'ogretici_paket::BataryaDurum)
  (if (not (find-package "OGRETICI_PAKET"))
    (make-package "OGRETICI_PAKET"))
  (shadow 'BataryaDurum (find-package "OGRETICI_PAKET")))
(unless (find-package "OGRETICI_PAKET::BATARYADURUM")
  (make-package "OGRETICI_PAKET::BATARYADURUM"))

(in-package "ROS")
;;//! \htmlinclude BataryaDurum.msg.html


(defclass ogretici_paket::BataryaDurum
  :super ros::object
  :slots (_batarya ))

(defmethod ogretici_paket::BataryaDurum
  (:init
   (&key
    ((:batarya __batarya) "")
    )
   (send-super :init)
   (setq _batarya (string __batarya))
   self)
  (:batarya
   (&optional __batarya)
   (if __batarya (setq _batarya __batarya)) _batarya)
  (:serialization-length
   ()
   (+
    ;; string _batarya
    4 (length _batarya)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _batarya
       (write-long (length _batarya) s) (princ _batarya s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _batarya
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _batarya (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ogretici_paket::BataryaDurum :md5sum-) "cf2f5dfec1a5a686917c26b6ec537920")
(setf (get ogretici_paket::BataryaDurum :datatype-) "ogretici_paket/BataryaDurum")
(setf (get ogretici_paket::BataryaDurum :definition-)
      "string batarya

")



(provide :ogretici_paket/BataryaDurum "cf2f5dfec1a5a686917c26b6ec537920")


