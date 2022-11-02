; Auto-generated. Do not edit!


(cl:in-package play_motion_builder_msgs-msg)


;//! \htmlinclude Meta.msg.html

(cl:defclass <Meta> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (usage
    :reader usage
    :initarg :usage
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Meta (<Meta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Meta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Meta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-msg:<Meta> is deprecated: use play_motion_builder_msgs-msg:Meta instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-msg:name-val is deprecated.  Use play_motion_builder_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'usage-val :lambda-list '(m))
(cl:defmethod usage-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-msg:usage-val is deprecated.  Use play_motion_builder_msgs-msg:usage instead.")
  (usage m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-msg:description-val is deprecated.  Use play_motion_builder_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Meta>) ostream)
  "Serializes a message object of type '<Meta>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'usage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'usage))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Meta>) istream)
  "Deserializes a message object of type '<Meta>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usage) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'usage) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Meta>)))
  "Returns string type for a message object of type '<Meta>"
  "play_motion_builder_msgs/Meta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Meta)))
  "Returns string type for a message object of type 'Meta"
  "play_motion_builder_msgs/Meta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Meta>)))
  "Returns md5sum for a message object of type '<Meta>"
  "3d2fb11fee090a7161bc0fcadb79cc50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Meta)))
  "Returns md5sum for a message object of type 'Meta"
  "3d2fb11fee090a7161bc0fcadb79cc50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Meta>)))
  "Returns full string definition for message of type '<Meta>"
  (cl:format cl:nil "# Human-readable name for the motion~%string name~%# Keywords to identify purpose of the motion~%string usage~%# Short description of the motion~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Meta)))
  "Returns full string definition for message of type 'Meta"
  (cl:format cl:nil "# Human-readable name for the motion~%string name~%# Keywords to identify purpose of the motion~%string usage~%# Short description of the motion~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Meta>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'usage))
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Meta>))
  "Converts a ROS message object to a list"
  (cl:list 'Meta
    (cl:cons ':name (name msg))
    (cl:cons ':usage (usage msg))
    (cl:cons ':description (description msg))
))
