; Auto-generated. Do not edit!


(cl:in-package play_motion_builder_msgs-msg)


;//! \htmlinclude RunMotionGoal.msg.html

(cl:defclass <RunMotionGoal> (roslisp-msg-protocol:ros-message)
  ((run_mode
    :reader run_mode
    :initarg :run_mode
    :type cl:fixnum
    :initform 0)
   (downshift
    :reader downshift
    :initarg :downshift
    :type cl:float
    :initform 0.0)
   (step_id
    :reader step_id
    :initarg :step_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RunMotionGoal (<RunMotionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunMotionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunMotionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-msg:<RunMotionGoal> is deprecated: use play_motion_builder_msgs-msg:RunMotionGoal instead.")))

(cl:ensure-generic-function 'run_mode-val :lambda-list '(m))
(cl:defmethod run_mode-val ((m <RunMotionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-msg:run_mode-val is deprecated.  Use play_motion_builder_msgs-msg:run_mode instead.")
  (run_mode m))

(cl:ensure-generic-function 'downshift-val :lambda-list '(m))
(cl:defmethod downshift-val ((m <RunMotionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-msg:downshift-val is deprecated.  Use play_motion_builder_msgs-msg:downshift instead.")
  (downshift m))

(cl:ensure-generic-function 'step_id-val :lambda-list '(m))
(cl:defmethod step_id-val ((m <RunMotionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-msg:step_id-val is deprecated.  Use play_motion_builder_msgs-msg:step_id instead.")
  (step_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RunMotionGoal>)))
    "Constants for message type '<RunMotionGoal>"
  '((:RUN_MOTION . 0)
    (:GO_TO_STEP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RunMotionGoal)))
    "Constants for message type 'RunMotionGoal"
  '((:RUN_MOTION . 0)
    (:GO_TO_STEP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunMotionGoal>) ostream)
  "Serializes a message object of type '<RunMotionGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'run_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'downshift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'step_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'step_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunMotionGoal>) istream)
  "Deserializes a message object of type '<RunMotionGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'run_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'downshift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'step_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'step_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunMotionGoal>)))
  "Returns string type for a message object of type '<RunMotionGoal>"
  "play_motion_builder_msgs/RunMotionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunMotionGoal)))
  "Returns string type for a message object of type 'RunMotionGoal"
  "play_motion_builder_msgs/RunMotionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunMotionGoal>)))
  "Returns md5sum for a message object of type '<RunMotionGoal>"
  "93fd2cd7e64669cfb4a792f5ad9e13ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunMotionGoal)))
  "Returns md5sum for a message object of type 'RunMotionGoal"
  "93fd2cd7e64669cfb4a792f5ad9e13ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunMotionGoal>)))
  "Returns full string definition for message of type '<RunMotionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Motion modes~%uint8 RUN_MOTION=0~%uint8 GO_TO_STEP=1~%~%uint8 run_mode~%# Factor by which to slow down the motion (only used if run_mode is RUN_MOTION)~%float32 downshift~%# Step id to which the robot will be moved (only used if run_mode is GO_TO_STEP)~%uint16 step_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunMotionGoal)))
  "Returns full string definition for message of type 'RunMotionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Motion modes~%uint8 RUN_MOTION=0~%uint8 GO_TO_STEP=1~%~%uint8 run_mode~%# Factor by which to slow down the motion (only used if run_mode is RUN_MOTION)~%float32 downshift~%# Step id to which the robot will be moved (only used if run_mode is GO_TO_STEP)~%uint16 step_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunMotionGoal>))
  (cl:+ 0
     1
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunMotionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RunMotionGoal
    (cl:cons ':run_mode (run_mode msg))
    (cl:cons ':downshift (downshift msg))
    (cl:cons ':step_id (step_id msg))
))