;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::BuildMotionResult)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'BuildMotionResult (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::BUILDMOTIONRESULT")
  (make-package "PLAY_MOTION_BUILDER_MSGS::BUILDMOTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude BuildMotionResult.msg.html


(defclass play_motion_builder_msgs::BuildMotionResult
  :super ros::object
  :slots (_ok _message ))

(defmethod play_motion_builder_msgs::BuildMotionResult
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

(setf (get play_motion_builder_msgs::BuildMotionResult :md5sum-) "f6fcb3b1ed8c7743c7fb7d5bcca28513")
(setf (get play_motion_builder_msgs::BuildMotionResult :datatype-) "play_motion_builder_msgs/BuildMotionResult")
(setf (get play_motion_builder_msgs::BuildMotionResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# True if no issues happened during the action
bool ok
# If any error has ocurred provide information
string message

")



(provide :play_motion_builder_msgs/BuildMotionResult "f6fcb3b1ed8c7743c7fb7d5bcca28513")


