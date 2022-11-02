;; Auto-generated. Do not edit!


(when (boundp 'py_trees_msgs::DockResult)
  (if (not (find-package "PY_TREES_MSGS"))
    (make-package "PY_TREES_MSGS"))
  (shadow 'DockResult (find-package "PY_TREES_MSGS")))
(unless (find-package "PY_TREES_MSGS::DOCKRESULT")
  (make-package "PY_TREES_MSGS::DOCKRESULT"))

(in-package "ROS")
;;//! \htmlinclude DockResult.msg.html


(intern "*SUCCESS*" (find-package "PY_TREES_MSGS::DOCKRESULT"))
(shadow '*SUCCESS* (find-package "PY_TREES_MSGS::DOCKRESULT"))
(defconstant py_trees_msgs::DockResult::*SUCCESS* 0)
(intern "*ERROR*" (find-package "PY_TREES_MSGS::DOCKRESULT"))
(shadow '*ERROR* (find-package "PY_TREES_MSGS::DOCKRESULT"))
(defconstant py_trees_msgs::DockResult::*ERROR* 1)
(defclass py_trees_msgs::DockResult
  :super ros::object
  :slots (_value _message ))

(defmethod py_trees_msgs::DockResult
  (:init
   (&key
    ((:value __value) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _message (string __message))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int8 _value
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _value
       (write-byte _value s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _value 127) (setq _value (- _value 256)))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get py_trees_msgs::DockResult :md5sum-) "7e3448b3518ac363f90f534593733372")
(setf (get py_trees_msgs::DockResult :datatype-) "py_trees_msgs/DockResult")
(setf (get py_trees_msgs::DockResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
####################
# Result
####################

int8 value
string message


int8 SUCCESS = 0
int8 ERROR = 1


")



(provide :py_trees_msgs/DockResult "7e3448b3518ac363f90f534593733372")

