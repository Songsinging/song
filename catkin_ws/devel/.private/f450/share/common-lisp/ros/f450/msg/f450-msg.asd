
(cl:in-package :asdf)

(defsystem "f450-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RTCM" :depends-on ("_package_RTCM"))
    (:file "_package_RTCM" :depends-on ("_package"))
  ))