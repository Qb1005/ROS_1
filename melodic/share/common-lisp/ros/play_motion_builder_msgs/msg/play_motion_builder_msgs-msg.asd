
(cl:in-package :asdf)

(defsystem "play_motion_builder_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BuildMotionAction" :depends-on ("_package_BuildMotionAction"))
    (:file "_package_BuildMotionAction" :depends-on ("_package"))
    (:file "BuildMotionActionFeedback" :depends-on ("_package_BuildMotionActionFeedback"))
    (:file "_package_BuildMotionActionFeedback" :depends-on ("_package"))
    (:file "BuildMotionActionGoal" :depends-on ("_package_BuildMotionActionGoal"))
    (:file "_package_BuildMotionActionGoal" :depends-on ("_package"))
    (:file "BuildMotionActionResult" :depends-on ("_package_BuildMotionActionResult"))
    (:file "_package_BuildMotionActionResult" :depends-on ("_package"))
    (:file "BuildMotionFeedback" :depends-on ("_package_BuildMotionFeedback"))
    (:file "_package_BuildMotionFeedback" :depends-on ("_package"))
    (:file "BuildMotionGoal" :depends-on ("_package_BuildMotionGoal"))
    (:file "_package_BuildMotionGoal" :depends-on ("_package"))
    (:file "BuildMotionResult" :depends-on ("_package_BuildMotionResult"))
    (:file "_package_BuildMotionResult" :depends-on ("_package"))
    (:file "Frame" :depends-on ("_package_Frame"))
    (:file "_package_Frame" :depends-on ("_package"))
    (:file "Meta" :depends-on ("_package_Meta"))
    (:file "_package_Meta" :depends-on ("_package"))
    (:file "Motion" :depends-on ("_package_Motion"))
    (:file "_package_Motion" :depends-on ("_package"))
    (:file "RunMotionAction" :depends-on ("_package_RunMotionAction"))
    (:file "_package_RunMotionAction" :depends-on ("_package"))
    (:file "RunMotionActionFeedback" :depends-on ("_package_RunMotionActionFeedback"))
    (:file "_package_RunMotionActionFeedback" :depends-on ("_package"))
    (:file "RunMotionActionGoal" :depends-on ("_package_RunMotionActionGoal"))
    (:file "_package_RunMotionActionGoal" :depends-on ("_package"))
    (:file "RunMotionActionResult" :depends-on ("_package_RunMotionActionResult"))
    (:file "_package_RunMotionActionResult" :depends-on ("_package"))
    (:file "RunMotionFeedback" :depends-on ("_package_RunMotionFeedback"))
    (:file "_package_RunMotionFeedback" :depends-on ("_package"))
    (:file "RunMotionGoal" :depends-on ("_package_RunMotionGoal"))
    (:file "_package_RunMotionGoal" :depends-on ("_package"))
    (:file "RunMotionResult" :depends-on ("_package_RunMotionResult"))
    (:file "_package_RunMotionResult" :depends-on ("_package"))
  ))