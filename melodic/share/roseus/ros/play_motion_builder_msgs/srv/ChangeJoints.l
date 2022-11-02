;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::ChangeJoints)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'ChangeJoints (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::CHANGEJOINTS")
  (make-package "PLAY_MOTION_BUILDER_MSGS::CHANGEJOINTS"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::CHANGEJOINTSREQUEST")
  (make-package "PLAY_MOTION_BUILDER_MSGS::CHANGEJOINTSREQUEST"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::CHANGEJOINTSRESPONSE")
  (make-package "PLAY_MOTION_BUILDER_MSGS::CHANGEJOINTSRESPONSE"))

(in-package "ROS")





(defclass play_motion_builder_msgs::ChangeJointsRequest
  :super ros::object
  :slots (_group _joints_to_remove _joints_to_add ))

(defmethod play_motion_builder_msgs::ChangeJointsRequest
  (:init
   (&key
    ((:group __group) "")
    ((:joints_to_remove __joints_to_remove) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:joints_to_add __joints_to_add) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _group (string __group))
   (setq _joints_to_remove __joints_to_remove)
   (setq _joints_to_add __joints_to_add)
   self)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:joints_to_remove
   (&optional __joints_to_remove)
   (if __joints_to_remove (setq _joints_to_remove __joints_to_remove)) _joints_to_remove)
  (:joints_to_add
   (&optional __joints_to_add)
   (if __joints_to_add (setq _joints_to_add __joints_to_add)) _joints_to_add)
  (:serialization-length
   ()
   (+
    ;; string _group
    4 (length _group)
    ;; string[] _joints_to_remove
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joints_to_remove)) 4
    ;; string[] _joints_to_add
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joints_to_add)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; string[] _joints_to_remove
     (write-long (length _joints_to_remove) s)
     (dolist (elem _joints_to_remove)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _joints_to_add
     (write-long (length _joints_to_add) s)
     (dolist (elem _joints_to_add)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joints_to_remove
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints_to_remove (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joints_to_remove i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _joints_to_add
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints_to_add (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joints_to_add i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass play_motion_builder_msgs::ChangeJointsResponse
  :super ros::object
  :slots (_ok _message _current_group _used_joints ))

(defmethod play_motion_builder_msgs::ChangeJointsResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:message __message) "")
    ((:current_group __current_group) "")
    ((:used_joints __used_joints) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _message (string __message))
   (setq _current_group (string __current_group))
   (setq _used_joints __used_joints)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:current_group
   (&optional __current_group)
   (if __current_group (setq _current_group __current_group)) _current_group)
  (:used_joints
   (&optional __used_joints)
   (if __used_joints (setq _used_joints __used_joints)) _used_joints)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string _message
    4 (length _message)
    ;; string _current_group
    4 (length _current_group)
    ;; string[] _used_joints
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _used_joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _current_group
       (write-long (length _current_group) s) (princ _current_group s)
     ;; string[] _used_joints
     (write-long (length _used_joints) s)
     (dolist (elem _used_joints)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _used_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _used_joints (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _used_joints i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass play_motion_builder_msgs::ChangeJoints
  :super ros::object
  :slots ())

(setf (get play_motion_builder_msgs::ChangeJoints :md5sum-) "80789d75311b0b87f8012fc3ec0415aa")
(setf (get play_motion_builder_msgs::ChangeJoints :datatype-) "play_motion_builder_msgs/ChangeJoints")
(setf (get play_motion_builder_msgs::ChangeJoints :request) play_motion_builder_msgs::ChangeJointsRequest)
(setf (get play_motion_builder_msgs::ChangeJoints :response) play_motion_builder_msgs::ChangeJointsResponse)

(defmethod play_motion_builder_msgs::ChangeJointsRequest
  (:response () (instance play_motion_builder_msgs::ChangeJointsResponse :init)))

(setf (get play_motion_builder_msgs::ChangeJointsRequest :md5sum-) "80789d75311b0b87f8012fc3ec0415aa")
(setf (get play_motion_builder_msgs::ChangeJointsRequest :datatype-) "play_motion_builder_msgs/ChangeJointsRequest")
(setf (get play_motion_builder_msgs::ChangeJointsRequest :definition-)
      "# Empty if group shouldn't be changed, name of the group otherwise
string group
# List of joints not in a group to be removed from the motion
string[] joints_to_remove
# List of joints not in a group to be added to a motion
string[] joints_to_add
---
# True if no issues ocurred during the call
bool ok
# Error message in case an issue occurred during the call
string message
# Current group configuration
string current_group
# List of current active joints not in a group
string[] used_joints 

")

(setf (get play_motion_builder_msgs::ChangeJointsResponse :md5sum-) "80789d75311b0b87f8012fc3ec0415aa")
(setf (get play_motion_builder_msgs::ChangeJointsResponse :datatype-) "play_motion_builder_msgs/ChangeJointsResponse")
(setf (get play_motion_builder_msgs::ChangeJointsResponse :definition-)
      "# Empty if group shouldn't be changed, name of the group otherwise
string group
# List of joints not in a group to be removed from the motion
string[] joints_to_remove
# List of joints not in a group to be added to a motion
string[] joints_to_add
---
# True if no issues ocurred during the call
bool ok
# Error message in case an issue occurred during the call
string message
# Current group configuration
string current_group
# List of current active joints not in a group
string[] used_joints 

")



(provide :play_motion_builder_msgs/ChangeJoints "80789d75311b0b87f8012fc3ec0415aa")


