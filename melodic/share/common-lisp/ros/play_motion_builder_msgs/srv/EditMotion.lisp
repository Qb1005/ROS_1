; Auto-generated. Do not edit!


(cl:in-package play_motion_builder_msgs-srv)


;//! \htmlinclude EditMotion-request.msg.html

(cl:defclass <EditMotion-request> (roslisp-msg-protocol:ros-message)
  ((step_id
    :reader step_id
    :initarg :step_id
    :type cl:fixnum
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass EditMotion-request (<EditMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<EditMotion-request> is deprecated: use play_motion_builder_msgs-srv:EditMotion-request instead.")))

(cl:ensure-generic-function 'step_id-val :lambda-list '(m))
(cl:defmethod step_id-val ((m <EditMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:step_id-val is deprecated.  Use play_motion_builder_msgs-srv:step_id instead.")
  (step_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <EditMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:action-val is deprecated.  Use play_motion_builder_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <EditMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:time-val is deprecated.  Use play_motion_builder_msgs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EditMotion-request>)))
    "Constants for message type '<EditMotion-request>"
  '((:LIST . 0)
    (:APPEND . 1)
    (:EDIT . 2)
    (:COPY_AS_NEXT . 3)
    (:COPY_AS_LAST . 4)
    (:REMOVE . 5)
    (:EDIT_TIME . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EditMotion-request)))
    "Constants for message type 'EditMotion-request"
  '((:LIST . 0)
    (:APPEND . 1)
    (:EDIT . 2)
    (:COPY_AS_NEXT . 3)
    (:COPY_AS_LAST . 4)
    (:REMOVE . 5)
    (:EDIT_TIME . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditMotion-request>) ostream)
  "Serializes a message object of type '<EditMotion-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'step_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'step_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditMotion-request>) istream)
  "Deserializes a message object of type '<EditMotion-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'step_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'step_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditMotion-request>)))
  "Returns string type for a service object of type '<EditMotion-request>"
  "play_motion_builder_msgs/EditMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditMotion-request)))
  "Returns string type for a service object of type 'EditMotion-request"
  "play_motion_builder_msgs/EditMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditMotion-request>)))
  "Returns md5sum for a message object of type '<EditMotion-request>"
  "85e84c3afe79c9be731c7f83946f6b7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditMotion-request)))
  "Returns md5sum for a message object of type 'EditMotion-request"
  "85e84c3afe79c9be731c7f83946f6b7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditMotion-request>)))
  "Returns full string definition for message of type '<EditMotion-request>"
  (cl:format cl:nil "# Definitions of actions~%uint8 LIST=0~%uint8 APPEND=1~%uint8 EDIT=2~%uint8 COPY_AS_NEXT=3~%uint8 COPY_AS_LAST=4~%uint8 REMOVE=5~%uint8 EDIT_TIME=6~%~%# Step id for the step to which the action should be applied~%uint16 step_id~%# Action to execute~%uint8 action~%# Time to be set (only used if action is EDIT_TIME)~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditMotion-request)))
  "Returns full string definition for message of type 'EditMotion-request"
  (cl:format cl:nil "# Definitions of actions~%uint8 LIST=0~%uint8 APPEND=1~%uint8 EDIT=2~%uint8 COPY_AS_NEXT=3~%uint8 COPY_AS_LAST=4~%uint8 REMOVE=5~%uint8 EDIT_TIME=6~%~%# Step id for the step to which the action should be applied~%uint16 step_id~%# Action to execute~%uint8 action~%# Time to be set (only used if action is EDIT_TIME)~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditMotion-request>))
  (cl:+ 0
     2
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EditMotion-request
    (cl:cons ':step_id (step_id msg))
    (cl:cons ':action (action msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude EditMotion-response.msg.html

(cl:defclass <EditMotion-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (motion
    :reader motion
    :initarg :motion
    :type play_motion_builder_msgs-msg:Motion
    :initform (cl:make-instance 'play_motion_builder_msgs-msg:Motion)))
)

(cl:defclass EditMotion-response (<EditMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<EditMotion-response> is deprecated: use play_motion_builder_msgs-srv:EditMotion-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <EditMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:ok-val is deprecated.  Use play_motion_builder_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EditMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:message-val is deprecated.  Use play_motion_builder_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'motion-val :lambda-list '(m))
(cl:defmethod motion-val ((m <EditMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:motion-val is deprecated.  Use play_motion_builder_msgs-srv:motion instead.")
  (motion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditMotion-response>) ostream)
  "Serializes a message object of type '<EditMotion-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditMotion-response>) istream)
  "Deserializes a message object of type '<EditMotion-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditMotion-response>)))
  "Returns string type for a service object of type '<EditMotion-response>"
  "play_motion_builder_msgs/EditMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditMotion-response)))
  "Returns string type for a service object of type 'EditMotion-response"
  "play_motion_builder_msgs/EditMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditMotion-response>)))
  "Returns md5sum for a message object of type '<EditMotion-response>"
  "85e84c3afe79c9be731c7f83946f6b7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditMotion-response)))
  "Returns md5sum for a message object of type 'EditMotion-response"
  "85e84c3afe79c9be731c7f83946f6b7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditMotion-response>)))
  "Returns full string definition for message of type '<EditMotion-response>"
  (cl:format cl:nil "# True if no issues ocurred during the call~%bool ok~%# Error message in case an issue occurred during the call~%string message~%# Current state of the motion~%play_motion_builder_msgs/Motion motion~%~%~%================================================================================~%MSG: play_motion_builder_msgs/Motion~%# List of joint names, keyframe positions are ordered based on this list~%string[] joints~%# List of Frames~%play_motion_builder_msgs/Frame[] keyframes~%# Name of the joint group used during this motion~%string used_group~%~%================================================================================~%MSG: play_motion_builder_msgs/Frame~%# Array with joint poses~%float64[] pose~%# Time since last Frame~%float32 time_from_last~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditMotion-response)))
  "Returns full string definition for message of type 'EditMotion-response"
  (cl:format cl:nil "# True if no issues ocurred during the call~%bool ok~%# Error message in case an issue occurred during the call~%string message~%# Current state of the motion~%play_motion_builder_msgs/Motion motion~%~%~%================================================================================~%MSG: play_motion_builder_msgs/Motion~%# List of joint names, keyframe positions are ordered based on this list~%string[] joints~%# List of Frames~%play_motion_builder_msgs/Frame[] keyframes~%# Name of the joint group used during this motion~%string used_group~%~%================================================================================~%MSG: play_motion_builder_msgs/Frame~%# Array with joint poses~%float64[] pose~%# Time since last Frame~%float32 time_from_last~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditMotion-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EditMotion-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':message (message msg))
    (cl:cons ':motion (motion msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EditMotion)))
  'EditMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EditMotion)))
  'EditMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditMotion)))
  "Returns string type for a service object of type '<EditMotion>"
  "play_motion_builder_msgs/EditMotion")