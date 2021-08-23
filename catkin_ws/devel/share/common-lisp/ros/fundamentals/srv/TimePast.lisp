; Auto-generated. Do not edit!


(cl:in-package fundamentals-srv)


;//! \htmlinclude TimePast-request.msg.html

(cl:defclass <TimePast-request> (roslisp-msg-protocol:ros-message)
  ((target_distance
    :reader target_distance
    :initarg :target_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass TimePast-request (<TimePast-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimePast-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimePast-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fundamentals-srv:<TimePast-request> is deprecated: use fundamentals-srv:TimePast-request instead.")))

(cl:ensure-generic-function 'target_distance-val :lambda-list '(m))
(cl:defmethod target_distance-val ((m <TimePast-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fundamentals-srv:target_distance-val is deprecated.  Use fundamentals-srv:target_distance instead.")
  (target_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimePast-request>) ostream)
  "Serializes a message object of type '<TimePast-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimePast-request>) istream)
  "Deserializes a message object of type '<TimePast-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimePast-request>)))
  "Returns string type for a service object of type '<TimePast-request>"
  "fundamentals/TimePastRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimePast-request)))
  "Returns string type for a service object of type 'TimePast-request"
  "fundamentals/TimePastRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimePast-request>)))
  "Returns md5sum for a message object of type '<TimePast-request>"
  "f6a073bb75b4f1328610282d59ded8da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimePast-request)))
  "Returns md5sum for a message object of type 'TimePast-request"
  "f6a073bb75b4f1328610282d59ded8da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimePast-request>)))
  "Returns full string definition for message of type '<TimePast-request>"
  (cl:format cl:nil "float64 target_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimePast-request)))
  "Returns full string definition for message of type 'TimePast-request"
  (cl:format cl:nil "float64 target_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimePast-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimePast-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TimePast-request
    (cl:cons ':target_distance (target_distance msg))
))
;//! \htmlinclude TimePast-response.msg.html

(cl:defclass <TimePast-response> (roslisp-msg-protocol:ros-message)
  ((time_past
    :reader time_past
    :initarg :time_past
    :type cl:float
    :initform 0.0))
)

(cl:defclass TimePast-response (<TimePast-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimePast-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimePast-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fundamentals-srv:<TimePast-response> is deprecated: use fundamentals-srv:TimePast-response instead.")))

(cl:ensure-generic-function 'time_past-val :lambda-list '(m))
(cl:defmethod time_past-val ((m <TimePast-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fundamentals-srv:time_past-val is deprecated.  Use fundamentals-srv:time_past instead.")
  (time_past m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimePast-response>) ostream)
  "Serializes a message object of type '<TimePast-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_past))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimePast-response>) istream)
  "Deserializes a message object of type '<TimePast-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_past) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimePast-response>)))
  "Returns string type for a service object of type '<TimePast-response>"
  "fundamentals/TimePastResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimePast-response)))
  "Returns string type for a service object of type 'TimePast-response"
  "fundamentals/TimePastResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimePast-response>)))
  "Returns md5sum for a message object of type '<TimePast-response>"
  "f6a073bb75b4f1328610282d59ded8da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimePast-response)))
  "Returns md5sum for a message object of type 'TimePast-response"
  "f6a073bb75b4f1328610282d59ded8da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimePast-response>)))
  "Returns full string definition for message of type '<TimePast-response>"
  (cl:format cl:nil "float64 time_past~%~%# The ordering above is:~%# client request~%# server response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimePast-response)))
  "Returns full string definition for message of type 'TimePast-response"
  (cl:format cl:nil "float64 time_past~%~%# The ordering above is:~%# client request~%# server response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimePast-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimePast-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TimePast-response
    (cl:cons ':time_past (time_past msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TimePast)))
  'TimePast-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TimePast)))
  'TimePast-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimePast)))
  "Returns string type for a service object of type '<TimePast>"
  "fundamentals/TimePast")