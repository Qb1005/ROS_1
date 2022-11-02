;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::Meta)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'Meta (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::META")
  (make-package "PLAY_MOTION_BUILDER_MSGS::META"))

(in-package "ROS")
;;//! \htmlinclude Meta.msg.html


(defclass play_motion_builder_msgs::Meta
  :super ros::object
  :slots (_name _usage _description ))

(defmethod play_motion_builder_msgs::Meta
  (:init
   (&key
    ((:name __name) "")
    ((:usage __usage) "")
    ((:description __description) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _usage (string __usage))
   (setq _description (string __description))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:usage
   (&optional __usage)
   (if __usage (setq _usage __usage)) _usage)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _usage
    4 (length _usage)
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _usage
       (write-long (length _usage) s) (princ _usage s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _usage
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _usage (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get play_motion_builder_msgs::Meta :md5sum-) "3d2fb11fee090a7161bc0fcadb79cc50")
(setf (get play_motion_builder_msgs::Meta :datatype-) "play_motion_builder_msgs/Meta")
(setf (get play_motion_builder_msgs::Meta :definition-)
      "# Human-readable name for the motion
string name
# Keywords to identify purpose of the motion
string usage
# Short description of the motion
string description

")



(provide :play_motion_builder_msgs/Meta "3d2fb11fee090a7161bc0fcadb79cc50")


