; Auto-generated. Do not edit!


(cl:in-package simple_applications-srv)


;//! \htmlinclude CircularMotion-request.msg.html

(cl:defclass <CircularMotion-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass CircularMotion-request (<CircularMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CircularMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CircularMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_applications-srv:<CircularMotion-request> is deprecated: use simple_applications-srv:CircularMotion-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <CircularMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_applications-srv:radius-val is deprecated.  Use simple_applications-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CircularMotion-request>) ostream)
  "Serializes a message object of type '<CircularMotion-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CircularMotion-request>) istream)
  "Deserializes a message object of type '<CircularMotion-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CircularMotion-request>)))
  "Returns string type for a service object of type '<CircularMotion-request>"
  "simple_applications/CircularMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircularMotion-request)))
  "Returns string type for a service object of type 'CircularMotion-request"
  "simple_applications/CircularMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CircularMotion-request>)))
  "Returns md5sum for a message object of type '<CircularMotion-request>"
  "34d1b51a3aa2a07a0194bc3c5de27677")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CircularMotion-request)))
  "Returns md5sum for a message object of type 'CircularMotion-request"
  "34d1b51a3aa2a07a0194bc3c5de27677")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CircularMotion-request>)))
  "Returns full string definition for message of type '<CircularMotion-request>"
  (cl:format cl:nil "float64 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CircularMotion-request)))
  "Returns full string definition for message of type 'CircularMotion-request"
  (cl:format cl:nil "float64 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CircularMotion-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CircularMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CircularMotion-request
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude CircularMotion-response.msg.html

(cl:defclass <CircularMotion-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CircularMotion-response (<CircularMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CircularMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CircularMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_applications-srv:<CircularMotion-response> is deprecated: use simple_applications-srv:CircularMotion-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CircularMotion-response>) ostream)
  "Serializes a message object of type '<CircularMotion-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CircularMotion-response>) istream)
  "Deserializes a message object of type '<CircularMotion-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CircularMotion-response>)))
  "Returns string type for a service object of type '<CircularMotion-response>"
  "simple_applications/CircularMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircularMotion-response)))
  "Returns string type for a service object of type 'CircularMotion-response"
  "simple_applications/CircularMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CircularMotion-response>)))
  "Returns md5sum for a message object of type '<CircularMotion-response>"
  "34d1b51a3aa2a07a0194bc3c5de27677")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CircularMotion-response)))
  "Returns md5sum for a message object of type 'CircularMotion-response"
  "34d1b51a3aa2a07a0194bc3c5de27677")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CircularMotion-response>)))
  "Returns full string definition for message of type '<CircularMotion-response>"
  (cl:format cl:nil "~%# The ordering above is:~%# client request~%# ---~%# server response~%~%# Even though we are not returning a response, we still include the `---` separator.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CircularMotion-response)))
  "Returns full string definition for message of type 'CircularMotion-response"
  (cl:format cl:nil "~%# The ordering above is:~%# client request~%# ---~%# server response~%~%# Even though we are not returning a response, we still include the `---` separator.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CircularMotion-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CircularMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CircularMotion-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CircularMotion)))
  'CircularMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CircularMotion)))
  'CircularMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircularMotion)))
  "Returns string type for a service object of type '<CircularMotion>"
  "simple_applications/CircularMotion")