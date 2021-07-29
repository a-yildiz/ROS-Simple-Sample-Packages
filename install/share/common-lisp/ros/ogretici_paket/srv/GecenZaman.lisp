; Auto-generated. Do not edit!


(cl:in-package ogretici_paket-srv)


;//! \htmlinclude GecenZaman-request.msg.html

(cl:defclass <GecenZaman-request> (roslisp-msg-protocol:ros-message)
  ((hedef_konum
    :reader hedef_konum
    :initarg :hedef_konum
    :type cl:float
    :initform 0.0))
)

(cl:defclass GecenZaman-request (<GecenZaman-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GecenZaman-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GecenZaman-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ogretici_paket-srv:<GecenZaman-request> is deprecated: use ogretici_paket-srv:GecenZaman-request instead.")))

(cl:ensure-generic-function 'hedef_konum-val :lambda-list '(m))
(cl:defmethod hedef_konum-val ((m <GecenZaman-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ogretici_paket-srv:hedef_konum-val is deprecated.  Use ogretici_paket-srv:hedef_konum instead.")
  (hedef_konum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GecenZaman-request>) ostream)
  "Serializes a message object of type '<GecenZaman-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hedef_konum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GecenZaman-request>) istream)
  "Deserializes a message object of type '<GecenZaman-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hedef_konum) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GecenZaman-request>)))
  "Returns string type for a service object of type '<GecenZaman-request>"
  "ogretici_paket/GecenZamanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GecenZaman-request)))
  "Returns string type for a service object of type 'GecenZaman-request"
  "ogretici_paket/GecenZamanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GecenZaman-request>)))
  "Returns md5sum for a message object of type '<GecenZaman-request>"
  "d89a3e566b5de459800ae97d9237aa5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GecenZaman-request)))
  "Returns md5sum for a message object of type 'GecenZaman-request"
  "d89a3e566b5de459800ae97d9237aa5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GecenZaman-request>)))
  "Returns full string definition for message of type '<GecenZaman-request>"
  (cl:format cl:nil "float64 hedef_konum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GecenZaman-request)))
  "Returns full string definition for message of type 'GecenZaman-request"
  (cl:format cl:nil "float64 hedef_konum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GecenZaman-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GecenZaman-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GecenZaman-request
    (cl:cons ':hedef_konum (hedef_konum msg))
))
;//! \htmlinclude GecenZaman-response.msg.html

(cl:defclass <GecenZaman-response> (roslisp-msg-protocol:ros-message)
  ((gecen_sure
    :reader gecen_sure
    :initarg :gecen_sure
    :type cl:float
    :initform 0.0))
)

(cl:defclass GecenZaman-response (<GecenZaman-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GecenZaman-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GecenZaman-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ogretici_paket-srv:<GecenZaman-response> is deprecated: use ogretici_paket-srv:GecenZaman-response instead.")))

(cl:ensure-generic-function 'gecen_sure-val :lambda-list '(m))
(cl:defmethod gecen_sure-val ((m <GecenZaman-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ogretici_paket-srv:gecen_sure-val is deprecated.  Use ogretici_paket-srv:gecen_sure instead.")
  (gecen_sure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GecenZaman-response>) ostream)
  "Serializes a message object of type '<GecenZaman-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gecen_sure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GecenZaman-response>) istream)
  "Deserializes a message object of type '<GecenZaman-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gecen_sure) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GecenZaman-response>)))
  "Returns string type for a service object of type '<GecenZaman-response>"
  "ogretici_paket/GecenZamanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GecenZaman-response)))
  "Returns string type for a service object of type 'GecenZaman-response"
  "ogretici_paket/GecenZamanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GecenZaman-response>)))
  "Returns md5sum for a message object of type '<GecenZaman-response>"
  "d89a3e566b5de459800ae97d9237aa5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GecenZaman-response)))
  "Returns md5sum for a message object of type 'GecenZaman-response"
  "d89a3e566b5de459800ae97d9237aa5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GecenZaman-response>)))
  "Returns full string definition for message of type '<GecenZaman-response>"
  (cl:format cl:nil "float64 gecen_sure~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GecenZaman-response)))
  "Returns full string definition for message of type 'GecenZaman-response"
  (cl:format cl:nil "float64 gecen_sure~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GecenZaman-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GecenZaman-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GecenZaman-response
    (cl:cons ':gecen_sure (gecen_sure msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GecenZaman)))
  'GecenZaman-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GecenZaman)))
  'GecenZaman-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GecenZaman)))
  "Returns string type for a service object of type '<GecenZaman>"
  "ogretici_paket/GecenZaman")