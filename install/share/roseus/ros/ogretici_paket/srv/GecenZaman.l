;; Auto-generated. Do not edit!


(when (boundp 'ogretici_paket::GecenZaman)
  (if (not (find-package "OGRETICI_PAKET"))
    (make-package "OGRETICI_PAKET"))
  (shadow 'GecenZaman (find-package "OGRETICI_PAKET")))
(unless (find-package "OGRETICI_PAKET::GECENZAMAN")
  (make-package "OGRETICI_PAKET::GECENZAMAN"))
(unless (find-package "OGRETICI_PAKET::GECENZAMANREQUEST")
  (make-package "OGRETICI_PAKET::GECENZAMANREQUEST"))
(unless (find-package "OGRETICI_PAKET::GECENZAMANRESPONSE")
  (make-package "OGRETICI_PAKET::GECENZAMANRESPONSE"))

(in-package "ROS")





(defclass ogretici_paket::GecenZamanRequest
  :super ros::object
  :slots (_hedef_konum ))

(defmethod ogretici_paket::GecenZamanRequest
  (:init
   (&key
    ((:hedef_konum __hedef_konum) 0.0)
    )
   (send-super :init)
   (setq _hedef_konum (float __hedef_konum))
   self)
  (:hedef_konum
   (&optional __hedef_konum)
   (if __hedef_konum (setq _hedef_konum __hedef_konum)) _hedef_konum)
  (:serialization-length
   ()
   (+
    ;; float64 _hedef_konum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _hedef_konum
       (sys::poke _hedef_konum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _hedef_konum
     (setq _hedef_konum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ogretici_paket::GecenZamanResponse
  :super ros::object
  :slots (_gecen_sure ))

(defmethod ogretici_paket::GecenZamanResponse
  (:init
   (&key
    ((:gecen_sure __gecen_sure) 0.0)
    )
   (send-super :init)
   (setq _gecen_sure (float __gecen_sure))
   self)
  (:gecen_sure
   (&optional __gecen_sure)
   (if __gecen_sure (setq _gecen_sure __gecen_sure)) _gecen_sure)
  (:serialization-length
   ()
   (+
    ;; float64 _gecen_sure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _gecen_sure
       (sys::poke _gecen_sure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _gecen_sure
     (setq _gecen_sure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ogretici_paket::GecenZaman
  :super ros::object
  :slots ())

(setf (get ogretici_paket::GecenZaman :md5sum-) "d89a3e566b5de459800ae97d9237aa5b")
(setf (get ogretici_paket::GecenZaman :datatype-) "ogretici_paket/GecenZaman")
(setf (get ogretici_paket::GecenZaman :request) ogretici_paket::GecenZamanRequest)
(setf (get ogretici_paket::GecenZaman :response) ogretici_paket::GecenZamanResponse)

(defmethod ogretici_paket::GecenZamanRequest
  (:response () (instance ogretici_paket::GecenZamanResponse :init)))

(setf (get ogretici_paket::GecenZamanRequest :md5sum-) "d89a3e566b5de459800ae97d9237aa5b")
(setf (get ogretici_paket::GecenZamanRequest :datatype-) "ogretici_paket/GecenZamanRequest")
(setf (get ogretici_paket::GecenZamanRequest :definition-)
      "float64 hedef_konum
---
float64 gecen_sure

")

(setf (get ogretici_paket::GecenZamanResponse :md5sum-) "d89a3e566b5de459800ae97d9237aa5b")
(setf (get ogretici_paket::GecenZamanResponse :datatype-) "ogretici_paket/GecenZamanResponse")
(setf (get ogretici_paket::GecenZamanResponse :definition-)
      "float64 hedef_konum
---
float64 gecen_sure

")



(provide :ogretici_paket/GecenZaman "d89a3e566b5de459800ae97d9237aa5b")


