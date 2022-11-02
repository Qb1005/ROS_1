; Auto-generated. Do not edit!


(cl:in-package play_motion_builder_msgs-srv)


;//! \htmlinclude ChangeJoints-request.msg.html

(cl:defclass <ChangeJoints-request> (roslisp-msg-protocol:ros-message)
  ((group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (joints_to_remove
    :reader joints_to_remove
    :initarg :joints_to_remove
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (joints_to_add
    :reader joints_to_add
    :initarg :joints_to_add
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ChangeJoints-request (<ChangeJoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeJoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeJoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<ChangeJoints-request> is deprecated: use play_motion_builder_msgs-srv:ChangeJoints-request instead.")))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <ChangeJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:group-val is deprecated.  Use play_motion_builder_msgs-srv:group instead.")
  (group m))

(cl:ensure-generic-function 'joints_to_remove-val :lambda-list '(m))
(cl:defmethod joints_to_remove-val ((m <ChangeJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:joints_to_remove-val is deprecated.  Use play_motion_builder_msgs-srv:joints_to_remove instead.")
  (joints_to_remove m))

(cl:ensure-generic-function 'joints_to_add-val :lambda-list '(m))
(cl:defmethod joints_to_add-val ((m <ChangeJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:joints_to_add-val is deprecated.  Use play_motion_builder_msgs-srv:joints_to_add instead.")
  (joints_to_add m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeJoints-request>) ostream)
  "Serializes a message object of type '<ChangeJoints-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints_to_remove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joints_to_remove))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints_to_add))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joints_to_add))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeJoints-request>) istream)
  "Deserializes a message object of type '<ChangeJoints-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints_to_remove) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints_to_remove)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints_to_add) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints_to_add)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeJoints-request>)))
  "Returns string type for a service object of type '<ChangeJoints-request>"
  "play_motion_builder_msgs/ChangeJointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeJoints-request)))
  "Returns string type for a service object of type 'ChangeJoints-request"
  "play_motion_builder_msgs/ChangeJointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeJoints-request>)))
  "Returns md5sum for a message object of type '<ChangeJoints-request>"
  "80789d75311b0b87f8012fc3ec0415aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeJoints-request)))
  "Returns md5sum for a message object of type 'ChangeJoints-request"
  "80789d75311b0b87f8012fc3ec0415aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeJoints-request>)))
  "Returns full string definition for message of type '<ChangeJoints-request>"
  (cl:format cl:nil "# Empty if group shouldn't be changed, name of the group otherwise~%string group~%# List of joints not in a group to be removed from the motion~%string[] joints_to_remove~%# List of joints not in a group to be added to a motion~%string[] joints_to_add~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeJoints-request)))
  "Returns full string definition for message of type 'ChangeJoints-request"
  (cl:format cl:nil "# Empty if group shouldn't be changed, name of the group otherwise~%string group~%# List of joints not in a group to be removed from the motion~%string[] joints_to_remove~%# List of joints not in a group to be added to a motion~%string[] joints_to_add~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeJoints-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints_to_remove) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints_to_add) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeJoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeJoints-request
    (cl:cons ':group (group msg))
    (cl:cons ':joints_to_remove (joints_to_remove msg))
    (cl:cons ':joints_to_add (joints_to_add msg))
))
;//! \htmlinclude ChangeJoints-response.msg.html

(cl:defclass <ChangeJoints-response> (roslisp-msg-protocol:ros-message)
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
   (current_group
    :reader current_group
    :initarg :current_group
    :type cl:string
    :initform "")
   (used_joints
    :reader used_joints
    :initarg :used_joints
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ChangeJoints-response (<ChangeJoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeJoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeJoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<ChangeJoints-response> is deprecated: use play_motion_builder_msgs-srv:ChangeJoints-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <ChangeJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:ok-val is deprecated.  Use play_motion_builder_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:message-val is deprecated.  Use play_motion_builder_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'current_group-val :lambda-list '(m))
(cl:defmethod current_group-val ((m <ChangeJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:current_group-val is deprecated.  Use play_motion_builder_msgs-srv:current_group instead.")
  (current_group m))

(cl:ensure-generic-function 'used_joints-val :lambda-list '(m))
(cl:defmethod used_joints-val ((m <ChangeJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:used_joints-val is deprecated.  Use play_motion_builder_msgs-srv:used_joints instead.")
  (used_joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeJoints-response>) ostream)
  "Serializes a message object of type '<ChangeJoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_group))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'used_joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'used_joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeJoints-response>) istream)
  "Deserializes a message object of type '<ChangeJoints-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'used_joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'used_joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeJoints-response>)))
  "Returns string type for a service object of type '<ChangeJoints-response>"
  "play_motion_builder_msgs/ChangeJointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeJoints-response)))
  "Returns string type for a service object of type 'ChangeJoints-response"
  "play_motion_builder_msgs/ChangeJointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeJoints-response>)))
  "Returns md5sum for a message object of type '<ChangeJoints-response>"
  "80789d75311b0b87f8012fc3ec0415aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeJoints-response)))
  "Returns md5sum for a message object of type 'ChangeJoints-response"
  "80789d75311b0b87f8012fc3ec0415aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeJoints-response>)))
  "Returns full string definition for message of type '<ChangeJoints-response>"
  (cl:format cl:nil "# True if no issues ocurred during the call~%bool ok~%# Error message in case an issue occurred during the call~%string message~%# Current group configuration~%string current_group~%# List of current active joints not in a group~%string[] used_joints ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeJoints-response)))
  "Returns full string definition for message of type 'ChangeJoints-response"
  (cl:format cl:nil "# True if no issues ocurred during the call~%bool ok~%# Error message in case an issue occurred during the call~%string message~%# Current group configuration~%string current_group~%# List of current active joints not in a group~%string[] used_joints ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeJoints-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'current_group))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'used_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeJoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeJoints-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':message (message msg))
    (cl:cons ':current_group (current_group msg))
    (cl:cons ':used_joints (used_joints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeJoints)))
  'ChangeJoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeJoints)))
  'ChangeJoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeJoints)))
  "Returns string type for a service object of type '<ChangeJoints>"
  "play_motion_builder_msgs/ChangeJoints")