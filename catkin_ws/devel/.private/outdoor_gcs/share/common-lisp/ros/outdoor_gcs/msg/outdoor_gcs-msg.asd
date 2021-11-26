
(cl:in-package :asdf)

(defsystem "outdoor_gcs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GPSRAW" :depends-on ("_package_GPSRAW"))
    (:file "_package_GPSRAW" :depends-on ("_package"))
    (:file "PathPlan" :depends-on ("_package_PathPlan"))
    (:file "_package_PathPlan" :depends-on ("_package"))
  ))