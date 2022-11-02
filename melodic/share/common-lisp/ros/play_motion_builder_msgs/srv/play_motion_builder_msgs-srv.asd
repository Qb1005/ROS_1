
(cl:in-package :asdf)

(defsystem "play_motion_builder_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :play_motion_builder_msgs-msg
)
  :components ((:file "_package")
    (:file "ChangeJoints" :depends-on ("_package_ChangeJoints"))
    (:file "_package_ChangeJoints" :depends-on ("_package"))
    (:file "EditMotion" :depends-on ("_package_EditMotion"))
    (:file "_package_EditMotion" :depends-on ("_package"))
    (:file "ListJointGroups" :depends-on ("_package_ListJointGroups"))
    (:file "_package_ListJointGroups" :depends-on ("_package"))
    (:file "StoreMotion" :depends-on ("_package_StoreMotion"))
    (:file "_package_StoreMotion" :depends-on ("_package"))
  ))