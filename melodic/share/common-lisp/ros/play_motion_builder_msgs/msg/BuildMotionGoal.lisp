; Auto-generated. Do not edit!


(cl:in-package play_motion_builder_msgs-msg)


;//! \htmlinclude BuildMotionGoal.msg.html

(cl:defclass <BuildMotionGoal> (roslisp-msg-protocol:ros-message)
  ((motion
    :reader motion
    :initarg :motion
    :type cl:string
    :initform ""))
)

(cl:defclass BuildMotionGoal (<BuildMotionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuildMotionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuildMotionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-msg:<BuildMotionGoal> is deprecated: use play_motion_builder_msgs-msg:BuildMotionGoal instead.")))

(cl:ensure-generic-function 'motion-val :lambda-list '(m))
(cl:defmethod motion-val ((m <BuildMotionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-msg:motion-val is deprecated.  Use play_motion_builder_msgs-msg:motion instead.")
  (motion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuildMotionGoal>) ostream)
  "Serializes a message object of type '<BuildMotionGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuildMotionGoal>) istream)
  "Deserializes a message object of type '<BuildMotionGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuildMotionGoal>)))
  "Returns string type for a message object of type '<BuildMotionGoal>"
  "play_motion_builder_msgs/BuildMotionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildMotionGoal)))
  "Returns string type for a message object of type 'BuildMotionGoal"
  "play_motion_builder_msgs/BuildMotionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuildMotionGoal>)))
  "Returns md5sum for a message object of type '<BuildMotionGoal>"
  "56c5b2babfc4b27e5a596091bb964bc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuildMotionGoal)))
  "Returns md5sum for a message object of type 'BuildMotionGoal"
  "56c5b2babfc4b27e5a596091bb964bc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuildMotionGoal>)))
  "Returns full string definition for message of type '<BuildMotionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Optional name of the motion, if not empty load this motion~%string motion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuildMotionGoal)))
  "Returns full string definition for message of type 'BuildMotionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Optional name of the motion, if not empty load this motion~%string motion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuildMotionGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'motion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuildMotionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'BuildMotionGoal
    (cl:cons ':motion (motion msg))
))
