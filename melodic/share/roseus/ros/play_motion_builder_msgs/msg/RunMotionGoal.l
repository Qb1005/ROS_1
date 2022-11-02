;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::RunMotionGoal)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'RunMotionGoal (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONGOAL")
  (make-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude RunMotionGoal.msg.html


(intern "*RUN_MOTION*" (find-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONGOAL"))
(shadow '*RUN_MOTION* (find-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONGOAL"))
(defconstant play_motion_builder_msgs::RunMotionGoal::*RUN_MOTION* 0)
(intern "*GO_TO_STEP*" (find-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONGOAL"))
(shadow '*GO_TO_STEP* (find-package "PLAY_MOTION_BUILDER_MSGS::RUNMOTIONGOAL"))
(defconstant play_motion_builder_msgs::RunMotionGoal::*GO_TO_STEP* 1)
(defclass play_motion_builder_msgs::RunMotionGoal
  :super ros::object
  :slots (_run_mode _downshift _step_id ))

(defmethod play_motion_builder_msgs::RunMotionGoal
  (:init
   (&key
    ((:run_mode __run_mode) 0)
    ((:downshift __downshift) 0.0)
    ((:step_id __step_id) 0)
    )
   (send-super :init)
   (setq _run_mode (round __run_mode))
   (setq _downshift (float __downshift))
   (setq _step_id (round __step_id))
   self)
  (:run_mode
   (&optional __run_mode)
   (if __run_mode (setq _run_mode __run_mode)) _run_mode)
  (:downshift
   (&optional __downshift)
   (if __downshift (setq _downshift __downshift)) _downshift)
  (:step_id
   (&optional __step_id)
   (if __step_id (setq _step_id __step_id)) _step_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _run_mode
    1
    ;; float32 _downshift
    4
    ;; uint16 _step_id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _run_mode
       (write-byte _run_mode s)
     ;; float32 _downshift
       (sys::poke _downshift (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _step_id
       (write-word _step_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _run_mode
     (setq _run_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _downshift
     (setq _downshift (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _step_id
     (setq _step_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get play_motion_builder_msgs::RunMotionGoal :md5sum-) "93fd2cd7e64669cfb4a792f5ad9e13ef")
(setf (get play_motion_builder_msgs::RunMotionGoal :datatype-) "play_motion_builder_msgs/RunMotionGoal")
(setf (get play_motion_builder_msgs::RunMotionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Motion modes
uint8 RUN_MOTION=0
uint8 GO_TO_STEP=1

uint8 run_mode
# Factor by which to slow down the motion (only used if run_mode is RUN_MOTION)
float32 downshift
# Step id to which the robot will be moved (only used if run_mode is GO_TO_STEP)
uint16 step_id

")



(provide :play_motion_builder_msgs/RunMotionGoal "93fd2cd7e64669cfb4a792f5ad9e13ef")

