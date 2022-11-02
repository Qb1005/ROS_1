;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::StoreMotion)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'StoreMotion (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::STOREMOTION")
  (make-package "PLAY_MOTION_BUILDER_MSGS::STOREMOTION"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::STOREMOTIONREQUEST")
  (make-package "PLAY_MOTION_BUILDER_MSGS::STOREMOTIONREQUEST"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::STOREMOTIONRESPONSE")
  (make-package "PLAY_MOTION_BUILDER_MSGS::STOREMOTIONRESPONSE"))

(in-package "ROS")





(defclass play_motion_builder_msgs::StoreMotionRequest
  :super ros::object
  :slots (_file_path _ros_name _meta ))

(defmethod play_motion_builder_msgs::StoreMotionRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:ros_name __ros_name) "")
    ((:meta __meta) (instance play_motion_builder_msgs::Meta :init))
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _ros_name (string __ros_name))
   (setq _meta __meta)
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:ros_name
   (&optional __ros_name)
   (if __ros_name (setq _ros_name __ros_name)) _ros_name)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; string _ros_name
    4 (length _ros_name)
    ;; play_motion_builder_msgs/Meta _meta
    (send _meta :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; string _ros_name
       (write-long (length _ros_name) s) (princ _ros_name s)
     ;; play_motion_builder_msgs/Meta _meta
       (send _meta :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ros_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ros_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; play_motion_builder_msgs/Meta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;;
   self)
  )

(defclass play_motion_builder_msgs::StoreMotionResponse
  :super ros::object
  :slots (_ok _message ))

(defmethod play_motion_builder_msgs::StoreMotionResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _message (string __message))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass play_motion_builder_msgs::StoreMotion
  :super ros::object
  :slots ())

(setf (get play_motion_builder_msgs::StoreMotion :md5sum-) "878970372ab61349ab9cd98973b0ae49")
(setf (get play_motion_builder_msgs::StoreMotion :datatype-) "play_motion_builder_msgs/StoreMotion")
(setf (get play_motion_builder_msgs::StoreMotion :request) play_motion_builder_msgs::StoreMotionRequest)
(setf (get play_motion_builder_msgs::StoreMotion :response) play_motion_builder_msgs::StoreMotionResponse)

(defmethod play_motion_builder_msgs::StoreMotionRequest
  (:response () (instance play_motion_builder_msgs::StoreMotionResponse :init)))

(setf (get play_motion_builder_msgs::StoreMotionRequest :md5sum-) "878970372ab61349ab9cd98973b0ae49")
(setf (get play_motion_builder_msgs::StoreMotionRequest :datatype-) "play_motion_builder_msgs/StoreMotionRequest")
(setf (get play_motion_builder_msgs::StoreMotionRequest :definition-)
      "# Path to where the file should be stored (if wmpty no file is stored)
string file_path
# Parameter name assigned to the motion
string ros_name
# Metadata of the motion
play_motion_builder_msgs/Meta meta

================================================================================
MSG: play_motion_builder_msgs/Meta
# Human-readable name for the motion
string name
# Keywords to identify purpose of the motion
string usage
# Short description of the motion
string description
---
# True if no issues occured
bool ok
# If an error has occurred information on the error, otherwise 
# this field will contain the data written to the file in string format
string message

")

(setf (get play_motion_builder_msgs::StoreMotionResponse :md5sum-) "878970372ab61349ab9cd98973b0ae49")
(setf (get play_motion_builder_msgs::StoreMotionResponse :datatype-) "play_motion_builder_msgs/StoreMotionResponse")
(setf (get play_motion_builder_msgs::StoreMotionResponse :definition-)
      "# Path to where the file should be stored (if wmpty no file is stored)
string file_path
# Parameter name assigned to the motion
string ros_name
# Metadata of the motion
play_motion_builder_msgs/Meta meta

================================================================================
MSG: play_motion_builder_msgs/Meta
# Human-readable name for the motion
string name
# Keywords to identify purpose of the motion
string usage
# Short description of the motion
string description
---
# True if no issues occured
bool ok
# If an error has occurred information on the error, otherwise 
# this field will contain the data written to the file in string format
string message

")



(provide :play_motion_builder_msgs/StoreMotion "878970372ab61349ab9cd98973b0ae49")


