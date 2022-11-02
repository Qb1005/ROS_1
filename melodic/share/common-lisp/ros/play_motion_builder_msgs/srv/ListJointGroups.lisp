; Auto-generated. Do not edit!


(cl:in-package play_motion_builder_msgs-srv)


;//! \htmlinclude ListJointGroups-request.msg.html

(cl:defclass <ListJointGroups-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListJointGroups-request (<ListJointGroups-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListJointGroups-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListJointGroups-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<ListJointGroups-request> is deprecated: use play_motion_builder_msgs-srv:ListJointGroups-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListJointGroups-request>) ostream)
  "Serializes a message object of type '<ListJointGroups-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListJointGroups-request>) istream)
  "Deserializes a message object of type '<ListJointGroups-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListJointGroups-request>)))
  "Returns string type for a service object of type '<ListJointGroups-request>"
  "play_motion_builder_msgs/ListJointGroupsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListJointGroups-request)))
  "Returns string type for a service object of type 'ListJointGroups-request"
  "play_motion_builder_msgs/ListJointGroupsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListJointGroups-request>)))
  "Returns md5sum for a message object of type '<ListJointGroups-request>"
  "9fdaed4e1eb95768801699335d06285a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListJointGroups-request)))
  "Returns md5sum for a message object of type 'ListJointGroups-request"
  "9fdaed4e1eb95768801699335d06285a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListJointGroups-request>)))
  "Returns full string definition for message of type '<ListJointGroups-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListJointGroups-request)))
  "Returns full string definition for message of type 'ListJointGroups-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListJointGroups-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListJointGroups-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListJointGroups-request
))
;//! \htmlinclude ListJointGroups-response.msg.html

(cl:defclass <ListJointGroups-response> (roslisp-msg-protocol:ros-message)
  ((groups
    :reader groups
    :initarg :groups
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (additional_joints
    :reader additional_joints
    :initarg :additional_joints
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (available_joints
    :reader available_joints
    :initarg :available_joints
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListJointGroups-response (<ListJointGroups-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListJointGroups-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListJointGroups-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name play_motion_builder_msgs-srv:<ListJointGroups-response> is deprecated: use play_motion_builder_msgs-srv:ListJointGroups-response instead.")))

(cl:ensure-generic-function 'groups-val :lambda-list '(m))
(cl:defmethod groups-val ((m <ListJointGroups-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:groups-val is deprecated.  Use play_motion_builder_msgs-srv:groups instead.")
  (groups m))

(cl:ensure-generic-function 'additional_joints-val :lambda-list '(m))
(cl:defmethod additional_joints-val ((m <ListJointGroups-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:additional_joints-val is deprecated.  Use play_motion_builder_msgs-srv:additional_joints instead.")
  (additional_joints m))

(cl:ensure-generic-function 'available_joints-val :lambda-list '(m))
(cl:defmethod available_joints-val ((m <ListJointGroups-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader play_motion_builder_msgs-srv:available_joints-val is deprecated.  Use play_motion_builder_msgs-srv:available_joints instead.")
  (available_joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListJointGroups-response>) ostream)
  "Serializes a message object of type '<ListJointGroups-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'groups))))
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
   (cl:slot-value msg 'groups))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'additional_joints))))
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
   (cl:slot-value msg 'additional_joints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_joints))))
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
   (cl:slot-value msg 'available_joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListJointGroups-response>) istream)
  "Deserializes a message object of type '<ListJointGroups-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'groups)))
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
  (cl:setf (cl:slot-value msg 'additional_joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'additional_joints)))
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
  (cl:setf (cl:slot-value msg 'available_joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_joints)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListJointGroups-response>)))
  "Returns string type for a service object of type '<ListJointGroups-response>"
  "play_motion_builder_msgs/ListJointGroupsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListJointGroups-response)))
  "Returns string type for a service object of type 'ListJointGroups-response"
  "play_motion_builder_msgs/ListJointGroupsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListJointGroups-response>)))
  "Returns md5sum for a message object of type '<ListJointGroups-response>"
  "9fdaed4e1eb95768801699335d06285a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListJointGroups-response)))
  "Returns md5sum for a message object of type 'ListJointGroups-response"
  "9fdaed4e1eb95768801699335d06285a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListJointGroups-response>)))
  "Returns full string definition for message of type '<ListJointGroups-response>"
  (cl:format cl:nil "# List of available groups~%string[] groups~%# List of joints not in any group~%string[] additional_joints~%# Complete list of joints (including those in a group)~%string[] available_joints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListJointGroups-response)))
  "Returns full string definition for message of type 'ListJointGroups-response"
  (cl:format cl:nil "# List of available groups~%string[] groups~%# List of joints not in any group~%string[] additional_joints~%# Complete list of joints (including those in a group)~%string[] available_joints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListJointGroups-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'additional_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListJointGroups-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListJointGroups-response
    (cl:cons ':groups (groups msg))
    (cl:cons ':additional_joints (additional_joints msg))
    (cl:cons ':available_joints (available_joints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListJointGroups)))
  'ListJointGroups-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListJointGroups)))
  'ListJointGroups-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListJointGroups)))
  "Returns string type for a service object of type '<ListJointGroups>"
  "play_motion_builder_msgs/ListJointGroups")