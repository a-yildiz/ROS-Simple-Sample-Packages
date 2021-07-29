; Auto-generated. Do not edit!


(cl:in-package ogretici_paket-msg)


;//! \htmlinclude BataryaDurum.msg.html

(cl:defclass <BataryaDurum> (roslisp-msg-protocol:ros-message)
  ((batarya
    :reader batarya
    :initarg :batarya
    :type cl:string
    :initform ""))
)

(cl:defclass BataryaDurum (<BataryaDurum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BataryaDurum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BataryaDurum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ogretici_paket-msg:<BataryaDurum> is deprecated: use ogretici_paket-msg:BataryaDurum instead.")))

(cl:ensure-generic-function 'batarya-val :lambda-list '(m))
(cl:defmethod batarya-val ((m <BataryaDurum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ogretici_paket-msg:batarya-val is deprecated.  Use ogretici_paket-msg:batarya instead.")
  (batarya m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BataryaDurum>) ostream)
  "Serializes a message object of type '<BataryaDurum>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'batarya))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'batarya))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BataryaDurum>) istream)
  "Deserializes a message object of type '<BataryaDurum>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batarya) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'batarya) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BataryaDurum>)))
  "Returns string type for a message object of type '<BataryaDurum>"
  "ogretici_paket/BataryaDurum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BataryaDurum)))
  "Returns string type for a message object of type 'BataryaDurum"
  "ogretici_paket/BataryaDurum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BataryaDurum>)))
  "Returns md5sum for a message object of type '<BataryaDurum>"
  "cf2f5dfec1a5a686917c26b6ec537920")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BataryaDurum)))
  "Returns md5sum for a message object of type 'BataryaDurum"
  "cf2f5dfec1a5a686917c26b6ec537920")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BataryaDurum>)))
  "Returns full string definition for message of type '<BataryaDurum>"
  (cl:format cl:nil "string batarya~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BataryaDurum)))
  "Returns full string definition for message of type 'BataryaDurum"
  (cl:format cl:nil "string batarya~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BataryaDurum>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'batarya))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BataryaDurum>))
  "Converts a ROS message object to a list"
  (cl:list 'BataryaDurum
    (cl:cons ':batarya (batarya msg))
))
