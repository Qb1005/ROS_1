;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::Frame)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'Frame (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::FRAME")
  (make-package "PLAY_MOTION_BUILDER_MSGS::FRAME"))

(in-package "ROS")
;;//! \htmlinclude Frame.msg.html


(defclass play_motion_builder_msgs::Frame
  :super ros::object
  :slots (_pose _time_from_last ))

(defmethod play_motion_builder_msgs::Frame
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time_from_last __time_from_last) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _time_from_last (float __time_from_last))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:time_from_last
   (&optional __time_from_last)
   (if __time_from_last (setq _time_from_last __time_from_last)) _time_from_last)
  (:serialization-length
   ()
   (+
    ;; float64[] _pose
    (* 8    (length _pose)) 4
    ;; float32 _time_from_last
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32 _time_from_last
       (sys::poke _time_from_last (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float32 _time_from_last
     (setq _time_from_last (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get play_motion_builder_msgs::Frame :md5sum-) "2e413d8203e397a420aef72e551374ab")
(setf (get play_motion_builder_msgs::Frame :datatype-) "play_motion_builder_msgs/Frame")
(setf (get play_motion_builder_msgs::Frame :definition-)
      "# Array with joint poses
float64[] pose
# Time since last Frame
float32 time_from_last
")



(provide :play_motion_builder_msgs/Frame "2e413d8203e397a420aef72e551374ab")


