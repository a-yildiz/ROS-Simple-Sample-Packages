; Auto-generated. Do not edit!


(cl:in-package fundamentals-msg)


;//! \htmlinclude MissionStatusResult.msg.html

(cl:defclass <MissionStatusResult> (roslisp-msg-protocol:ros-message)
  ((finish
    :reader finish
    :initarg :finish
    :type cl:string
    :initform ""))
)

(cl:defclass MissionStatusResult (<MissionStatusResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatusResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatusResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fundamentals-msg:<MissionStatusResult> is deprecated: use fundamentals-msg:MissionStatusResult instead.")))

(cl:ensure-generic-function 'finish-val :lambda-list '(m))
(cl:defmethod finish-val ((m <MissionStatusResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fundamentals-msg:finish-val is deprecated.  Use fundamentals-msg:finish instead.")
  (finish m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatusResult>) ostream)
  "Serializes a message object of type '<MissionStatusResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'finish))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'finish))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatusResult>) istream)
  "Deserializes a message object of type '<MissionStatusResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'finish) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'finish) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatusResult>)))
  "Returns string type for a message object of type '<MissionStatusResult>"
  "fundamentals/MissionStatusResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatusResult)))
  "Returns string type for a message object of type 'MissionStatusResult"
  "fundamentals/MissionStatusResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatusResult>)))
  "Returns md5sum for a message object of type '<MissionStatusResult>"
  "30f39227304d5212717dd7074603f5c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatusResult)))
  "Returns md5sum for a message object of type 'MissionStatusResult"
  "30f39227304d5212717dd7074603f5c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatusResult>)))
  "Returns full string definition for message of type '<MissionStatusResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string finish~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatusResult)))
  "Returns full string definition for message of type 'MissionStatusResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string finish~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatusResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'finish))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatusResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatusResult
    (cl:cons ':finish (finish msg))
))