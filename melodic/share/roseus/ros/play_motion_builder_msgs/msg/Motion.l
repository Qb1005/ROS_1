;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::Motion)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'Motion (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::MOTION")
  (make-package "PLAY_MOTION_BUILDER_MSGS::MOTION"))

(in-package "ROS")
;;//! \htmlinclude Motion.msg.html


(defclass play_motion_builder_msgs::Motion
  :super ros::object
  :slots (_joints _keyframes _used_group ))

(defmethod play_motion_builder_msgs::Motion
  (:init
   (&key
    ((:joints __joints) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:keyframes __keyframes) (let (r) (dotimes (i 0) (push (instance play_motion_builder_msgs::Frame :init) r)) r))
    ((:used_group __used_group) "")
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _keyframes __keyframes)
   (setq _used_group (string __used_group))
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:keyframes
   (&rest __keyframes)
   (if (keywordp (car __keyframes))
       (send* _keyframes __keyframes)
     (progn
       (if __keyframes (setq _keyframes (car __keyframes)))
       _keyframes)))
  (:used_group
   (&optional __used_group)
   (if __used_group (setq _used_group __used_group)) _used_group)
  (:serialization-length
   ()
   (+
    ;; string[] _joints
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joints)) 4
    ;; play_motion_builder_msgs/Frame[] _keyframes
    (apply #'+ (send-all _keyframes :serialization-length)) 4
    ;; string _used_group
    4 (length _used_group)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (write-long (length elem) s) (princ elem s)
       )
     ;; play_motion_builder_msgs/Frame[] _keyframes
     (write-long (length _keyframes) s)
     (dolist (elem _keyframes)
       (send elem :serialize s)
       )
     ;; string _used_group
       (write-long (length _used_group) s) (princ _used_group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joints i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; play_motion_builder_msgs/Frame[] _keyframes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keyframes (let (r) (dotimes (i n) (push (instance play_motion_builder_msgs::Frame :init) r)) r))
     (dolist (elem- _keyframes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _used_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _used_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get play_motion_builder_msgs::Motion :md5sum-) "0cd6cb21dc200c52ee3c8d281eccf636")
(setf (get play_motion_builder_msgs::Motion :datatype-) "play_motion_builder_msgs/Motion")
(setf (get play_motion_builder_msgs::Motion :definition-)
      "# List of joint names, keyframe positions are ordered based on this list
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
float32 time_from_last
")



(provide :play_motion_builder_msgs/Motion "0cd6cb21dc200c52ee3c8d281eccf636")


