;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::RunMotionFeedback)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'RunMotionFeedback (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONFEEDBACK")
  (make-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude RunMotionFeedback.msg.html


(defclass play_motion_builder_msgs::RunMotionFeedback
  :super ros::object
  :slots ())

(defmethod play_motion_builder_msgs::RunMotionFeedback
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get play_motion_builder_msgs::RunMotionFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get play_motion_builder_msgs::RunMotionFeedback :datatype-) "play_motion_builder_msgs/RunMotionFeedback")
(setf (get play_motion_builder_msgs::RunMotionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======


")



(provide :play_motion_builder_msgs/RunMotionFeedback "d41d8cd98f00b204e9800998ecf8427e")

