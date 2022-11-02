; Auto-generated. Do not edit!


(cl:in-package play_motion_builder_msgs-srv)


;//! \htmlinclude StoreMotion-request.msg.html

(cl:defclass <StoreMotion-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform "")
   (ros_name
    :reader ros_name
    :initarg :ros_name
    :type cl:string
    :initform "")
   (meta
    :reader meta
    :initarg :meta
    :type play_motion_builder_msgs-msg:Meta
    :initform (cl:make-instance 'play_motion_builder_msgs-msg:Meta)))
)

(cl:defclass StoreMotion-request (<StoreMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StoreMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StoreMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<StoreMotion-request> is deprecated: use play_motion_builder_msgs-srv:StoreMotion-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <StoreMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:file_path-val is deprecated.  Use play_motion_builder_msgs-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'ros_name-val :lambda-list '(m))
(cl:defmethod ros_name-val ((m <StoreMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:ros_name-val is deprecated.  Use play_motion_builder_msgs-srv:ros_name instead.")
  (ros_name m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <StoreMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:meta-val is deprecated.  Use play_motion_builder_msgs-srv:meta instead.")
  (meta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StoreMotion-request>) ostream)
  "Serializes a message object of type '<StoreMotion-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ros_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ros_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StoreMotion-request>) istream)
  "Deserializes a message object of type '<StoreMotion-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ros_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StoreMotion-request>)))
  "Returns string type for a service object of type '<StoreMotion-request>"
  "play_motion_builder_msgs/StoreMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreMotion-request)))
  "Returns string type for a service object of type 'StoreMotion-request"
  "play_motion_builder_msgs/StoreMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StoreMotion-request>)))
  "Returns md5sum for a message object of type '<StoreMotion-request>"
  "878970372ab61349ab9cd98973b0ae49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StoreMotion-request)))
  "Returns md5sum for a message object of type 'StoreMotion-request"
  "878970372ab61349ab9cd98973b0ae49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StoreMotion-request>)))
  "Returns full string definition for message of type '<StoreMotion-request>"
  (cl:format cl:nil "# Path to where the file should be stored (if wmpty no file is stored)~%string file_path~%# Parameter name assigned to the motion~%string ros_name~%# Metadata of the motion~%play_motion_builder_msgs/Meta meta~%~%================================================================================~%MSG: play_motion_builder_msgs/Meta~%# Human-readable name for the motion~%string name~%# Keywords to identify purpose of the motion~%string usage~%# Short description of the motion~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StoreMotion-request)))
  "Returns full string definition for message of type 'StoreMotion-request"
  (cl:format cl:nil "# Path to where the file should be stored (if wmpty no file is stored)~%string file_path~%# Parameter name assigned to the motion~%string ros_name~%# Metadata of the motion~%play_motion_builder_msgs/Meta meta~%~%================================================================================~%MSG: play_motion_builder_msgs/Meta~%# Human-readable name for the motion~%string name~%# Keywords to identify purpose of the motion~%string usage~%# Short description of the motion~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StoreMotion-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
     4 (cl:length (cl:slot-value msg 'ros_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StoreMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StoreMotion-request
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':ros_name (ros_name msg))
    (cl:cons ':meta (meta msg))
))
;//! \htmlinclude StoreMotion-response.msg.html

(cl:defclass <StoreMotion-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StoreMotion-response (<StoreMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StoreMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StoreMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<StoreMotion-response> is deprecated: use play_motion_builder_msgs-srv:StoreMotion-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <StoreMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:ok-val is deprecated.  Use play_motion_builder_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StoreMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:message-val is deprecated.  Use play_motion_builder_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StoreMotion-response>) ostream)
  "Serializes a message object of type '<StoreMotion-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StoreMotion-response>) istream)
  "Deserializes a message object of type '<StoreMotion-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StoreMotion-response>)))
  "Returns string type for a service object of type '<StoreMotion-response>"
  "play_motion_builder_msgs/StoreMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreMotion-response)))
  "Returns string type for a service object of type 'StoreMotion-response"
  "play_motion_builder_msgs/StoreMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StoreMotion-response>)))
  "Returns md5sum for a message object of type '<StoreMotion-response>"
  "878970372ab61349ab9cd98973b0ae49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StoreMotion-response)))
  "Returns md5sum for a message object of type 'StoreMotion-response"
  "878970372ab61349ab9cd98973b0ae49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StoreMotion-response>)))
  "Returns full string definition for message of type '<StoreMotion-response>"
  (cl:format cl:nil "# True if no issues occured~%bool ok~%# If an error has occurred information on the error, otherwise ~%# this field will contain the data written to the file in string format~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StoreMotion-response)))
  "Returns full string definition for message of type 'StoreMotion-response"
  (cl:format cl:nil "# True if no issues occured~%bool ok~%# If an error has occurred information on the error, otherwise ~%# this field will contain the data written to the file in string format~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StoreMotion-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StoreMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StoreMotion-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StoreMotion)))
  'StoreMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StoreMotion)))
  'StoreMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreMotion)))
  "Returns string type for a service object of type '<StoreMotion>"
  "play_motion_builder_msgs/StoreMotion")