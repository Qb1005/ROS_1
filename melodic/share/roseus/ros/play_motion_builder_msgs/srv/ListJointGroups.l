;; Auto-generated. Do not edit!


(when (boundp 'play_motion_builder_msgs::ListJointGroups)
  (if (not (find-package "PLAY_MOTION_BUILDER_MSGS"))
    (make-package "PLAY_MOTION_BUILDER_MSGS"))
  (shadow 'ListJointGroups (find-package "PLAY_MOTION_BUILDER_MSGS")))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::LISTJOINTGROUPS")
  (make-package "PLAY_MOTION_BUILDER_MSGS::LISTJOINTGROUPS"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::LISTJOINTGROUPSREQUEST")
  (make-package "PLAY_MOTION_BUILDER_MSGS::LISTJOINTGROUPSREQUEST"))
(unless (find-package "PLAY_MOTION_BUILDER_MSGS::LISTJOINTGROUPSRESPONSE")
  (make-package "PLAY_MOTION_BUILDER_MSGS::LISTJOINTGROUPSRESPONSE"))

(in-package "ROS")





(defclass play_motion_builder_msgs::ListJointGroupsRequest
  :super ros::object
  :slots ())

(defmethod play_motion_builder_msgs::ListJointGroupsRequest
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

(defclass play_motion_builder_msgs::ListJointGroupsResponse
  :super ros::object
  :slots (_groups _additional_joints _available_joints ))

(defmethod play_motion_builder_msgs::ListJointGroupsResponse
  (:init
   (&key
    ((:groups __groups) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:additional_joints __additional_joints) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:available_joints __available_joints) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _groups __groups)
   (setq _additional_joints __additional_joints)
   (setq _available_joints __available_joints)
   self)
  (:groups
   (&optional __groups)
   (if __groups (setq _groups __groups)) _groups)
  (:additional_joints
   (&optional __additional_joints)
   (if __additional_joints (setq _additional_joints __additional_joints)) _additional_joints)
  (:available_joints
   (&optional __available_joints)
   (if __available_joints (setq _available_joints __available_joints)) _available_joints)
  (:serialization-length
   ()
   (+
    ;; string[] _groups
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _groups)) 4
    ;; string[] _additional_joints
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _additional_joints)) 4
    ;; string[] _available_joints
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available_joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _groups
     (write-long (length _groups) s)
     (dolist (elem _groups)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _additional_joints
     (write-long (length _additional_joints) s)
     (dolist (elem _additional_joints)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _available_joints
     (write-long (length _available_joints) s)
     (dolist (elem _available_joints)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _groups (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _groups i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _additional_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _additional_joints (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _additional_joints i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _available_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_joints (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available_joints i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass play_motion_builder_msgs::ListJointGroups
  :super ros::object
  :slots ())

(setf (get play_motion_builder_msgs::ListJointGroups :md5sum-) "9fdaed4e1eb95768801699335d06285a")
(setf (get play_motion_builder_msgs::ListJointGroups :datatype-) "play_motion_builder_msgs/ListJointGroups")
(setf (get play_motion_builder_msgs::ListJointGroups :request) play_motion_builder_msgs::ListJointGroupsRequest)
(setf (get play_motion_builder_msgs::ListJointGroups :response) play_motion_builder_msgs::ListJointGroupsResponse)

(defmethod play_motion_builder_msgs::ListJointGroupsRequest
  (:response () (instance play_motion_builder_msgs::ListJointGroupsResponse :init)))

(setf (get play_motion_builder_msgs::ListJointGroupsRequest :md5sum-) "9fdaed4e1eb95768801699335d06285a")
(setf (get play_motion_builder_msgs::ListJointGroupsRequest :datatype-) "play_motion_builder_msgs/ListJointGroupsRequest")
(setf (get play_motion_builder_msgs::ListJointGroupsRequest :definition-)
      "---
# List of available groups
string[] groups
# List of joints not in any group
string[] additional_joints
# Complete list of joints (including those in a group)
string[] available_joints

")

(setf (get play_motion_builder_msgs::ListJointGroupsResponse :md5sum-) "9fdaed4e1eb95768801699335d06285a")
(setf (get play_motion_builder_msgs::ListJointGroupsResponse :datatype-) "play_motion_builder_msgs/ListJointGroupsResponse")
(setf (get play_motion_builder_msgs::ListJointGroupsResponse :definition-)
      "---
# List of available groups
string[] groups
# List of joints not in any group
string[] additional_joints
# Complete list of joints (including those in a group)
string[] available_joints

")



(provide :play_motion_builder_msgs/ListJointGroups "9fdaed4e1eb95768801699335d06285a")


