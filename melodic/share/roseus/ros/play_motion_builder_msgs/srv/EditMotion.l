;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::EditMotion)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'EditMotion (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTION")
  (make-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTION"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST")
  (make-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONRESPONSE")
  (make-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONRESPONSE"))

(in-package "ROS")





(intern "*LIST*" (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(shadow '*LIST* (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(defconstant play_motion_builder_msgs::EditMotionRequest::*LIST* 0)
(intern "*APPEND*" (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(shadow '*APPEND* (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(defconstant play_motion_builder_msgs::EditMotionRequest::*APPEND* 1)
(intern "*EDIT*" (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(shadow '*EDIT* (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(defconstant play_motion_builder_msgs::EditMotionRequest::*EDIT* 2)
(intern "*COPY_AS_NEXT*" (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(shadow '*COPY_AS_NEXT* (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(defconstant play_motion_builder_msgs::EditMotionRequest::*COPY_AS_NEXT* 3)
(intern "*COPY_AS_LAST*" (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(shadow '*COPY_AS_LAST* (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(defconstant play_motion_builder_msgs::EditMotionRequest::*COPY_AS_LAST* 4)
(intern "*REMOVE*" (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(shadow '*REMOVE* (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(defconstant play_motion_builder_msgs::EditMotionRequest::*REMOVE* 5)
(intern "*EDIT_TIME*" (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(shadow '*EDIT_TIME* (find-package "PLAY_MOTION_BUILDER_MSGS::EDITMOTIONREQUEST"))
(defconstant play_motion_builder_msgs::EditMotionRequest::*EDIT_TIME* 6)
(defclass play_motion_builder_msgs::EditMotionRequest
  :super ros::object
  :slots (_step_id _action _time ))

(defmethod play_motion_builder_msgs::EditMotionRequest
  (:init
   (&key
    ((:step_id __step_id) 0)
    ((:action __action) 0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _step_id (round __step_id))
   (setq _action (round __action))
   (setq _time (float __time))
   self)
  (:step_id
   (&optional __step_id)
   (if __step_id (setq _step_id __step_id)) _step_id)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; uint16 _step_id
    2
    ;; uint8 _action
    1
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _step_id
       (write-word _step_id s)
     ;; uint8 _action
       (write-byte _action s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _step_id
     (setq _step_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass play_motion_builder_msgs::EditMotionResponse
  :super ros::object
  :slots (_ok _message _motion ))

(defmethod play_motion_builder_msgs::EditMotionResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:message __message) "")
    ((:motion __motion) (instance play_motion_builder_msgs::Motion :init))
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _message (string __message))
   (setq _motion __motion)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:motion
   (&rest __motion)
   (if (keywordp (car __motion))
       (send* _motion __motion)
     (progn
       (if __motion (setq _motion (car __motion)))
       _motion)))
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string _message
    4 (length _message)
    ;; play_motion_builder_msgs/Motion _motion
    (send _motion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; play_motion_builder_msgs/Motion _motion
       (send _motion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; play_motion_builder_msgs/Motion _motion
     (send _motion :deserialize buf ptr-) (incf ptr- (send _motion :serialization-length))
   ;;
   self)
  )

(defclass play_motion_builder_msgs::EditMotion
  :super ros::object
  :slots ())

(setf (get play_motion_builder_msgs::EditMotion :md5sum-) "85e84c3afe79c9be731c7f83946f6b7b")
(setf (get play_motion_builder_msgs::EditMotion :datatype-) "play_motion_builder_msgs/EditMotion")
(setf (get play_motion_builder_msgs::EditMotion :request) play_motion_builder_msgs::EditMotionRequest)
(setf (get play_motion_builder_msgs::EditMotion :response) play_motion_builder_msgs::EditMotionResponse)

(defmethod play_motion_builder_msgs::EditMotionRequest
  (:response () (instance play_motion_builder_msgs::EditMotionResponse :init)))

(setf (get play_motion_builder_msgs::EditMotionRequest :md5sum-) "85e84c3afe79c9be731c7f83946f6b7b")
(setf (get play_motion_builder_msgs::EditMotionRequest :datatype-) "play_motion_builder_msgs/EditMotionRequest")
(setf (get play_motion_builder_msgs::EditMotionRequest :definition-)
      "# Definitions of actions
uint8 LIST=0
uint8 APPEND=1
uint8 EDIT=2
uint8 COPY_AS_NEXT=3
uint8 COPY_AS_LAST=4
uint8 REMOVE=5
uint8 EDIT_TIME=6

# Step id for the step to which the action should be applied
uint16 step_id
# Action to execute
uint8 action
# Time to be set (only used if action is EDIT_TIME)
float32 time
---
# True if no issues ocurred during the call
bool ok
# Error message in case an issue occurred during the call
string message
# Current state of the motion
play_motion_builder_msgs/Motion motion


================================================================================
MSG: play_motion_builder_msgs/Motion
# List of joint names, keyframe positions are ordered based on this list
string[] joints
# List of Frames
play_motion_builder_msgs/Frame[] keyframes
# Name of the joint group used during this motion
string used_group

================================================================================
MSG: play_motion_builder_msgs/Frame
# Array with joint poses
float64[] pose
# Time since last Frame
")

(setf (get play_motion_builder_msgs::EditMotionResponse :md5sum-) "85e84c3afe79c9be731c7f83946f6b7b")
(setf (get play_motion_builder_msgs::EditMotionResponse :datatype-) "play_motion_builder_msgs/EditMotionResponse")
(setf (get play_motion_builder_msgs::EditMotionResponse :definition-)
      "# Definitions of actions
uint8 LIST=0
uint8 APPEND=1
uint8 EDIT=2
uint8 COPY_AS_NEXT=3
uint8 COPY_AS_LAST=4
uint8 REMOVE=5
uint8 EDIT_TIME=6

# Step id for the step to which the action should be applied
uint16 step_id
# Action to execute
uint8 action
# Time to be set (only used if action is EDIT_TIME)
float32 time
---
# True if no issues ocurred during the call
bool ok
# Error message in case an issue occurred during the call
string message
# Current state of the motion
play_motion_builder_msgs/Motion motion


================================================================================
MSG: play_motion_builder_msgs/Motion
# List of joint names, keyframe positions are ordered based on this list
string[] joints
# List of Frames
play_motion_builder_msgs/Frame[] keyframes
# Name of the joint group used during this motion
string used_group

================================================================================
MSG: play_motion_builder_msgs/Frame
# Array with joint poses
float64[] pose
# Time since last Frame
")



(provide :play_motion_builder_msgs/EditMotion "85e84c3afe79c9be731c7f83946f6b7b")


