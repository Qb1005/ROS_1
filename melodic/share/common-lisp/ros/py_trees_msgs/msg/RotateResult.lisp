; Auto-generated. Do not edit!


(cl:in-package py_trees_msgs-msg)


;//! \htmlinclude RotateResult.msg.html

(cl:defclass <RotateResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RotateResult (<RotateResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RotateResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RotateResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-msg:<RotateResult> is deprecated: use py_trees_msgs-msg:RotateResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RotateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:value-val is deprecated.  Use py_trees_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RotateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:message-val is deprecated.  Use py_trees_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RotateResult>)))
    "Constants for message type '<RotateResult>"
  '((:SUCCESS . 0)
    (:ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RotateResult)))
    "Constants for message type 'RotateResult"
  '((:SUCCESS . 0)
    (:ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RotateResult>) ostream)
  "Serializes a message object of type '<RotateResult>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RotateResult>) istream)
  "Deserializes a message object of type '<RotateResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RotateResult>)))
  "Returns string type for a message object of type '<RotateResult>"
  "py_trees_msgs/RotateResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RotateResult)))
  "Returns string type for a message object of type 'RotateResult"
  "py_trees_msgs/RotateResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RotateResult>)))
  "Returns md5sum for a message object of type '<RotateResult>"
  "7e3448b3518ac363f90f534593733372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RotateResult)))
  "Returns md5sum for a message object of type 'RotateResult"
  "7e3448b3518ac363f90f534593733372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RotateResult>)))
  "Returns full string definition for message of type '<RotateResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%####################~%# Result~%####################~%~%int8 value~%string message~%~%~%int8 SUCCESS = 0~%int8 ERROR = 1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RotateResult)))
  "Returns full string definition for message of type 'RotateResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%####################~%# Result~%####################~%~%int8 value~%string message~%~%~%int8 SUCCESS = 0~%int8 ERROR = 1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RotateResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RotateResult>))
  "Converts a ROS message object to a list"
  (cl:list 'RotateResult
    (cl:cons ':value (value msg))
    (cl:cons ':message (message msg))
))
