;; Auto-generated. Do not edit!


(when (boundp 'outdoor_gcs::MultiPayloadAction)
  (if (not (find-package "OUTDOOR_GCS"))
    (make-package "OUTDOOR_GCS"))
  (shadow 'MultiPayloadAction (find-package "OUTDOOR_GCS")))
(unless (find-package "OUTDOOR_GCS::MULTIPAYLOADACTION")
  (make-package "OUTDOOR_GCS::MULTIPAYLOADACTION"))
(unless (find-package "OUTDOOR_GCS::MULTIPAYLOADACTIONREQUEST")
  (make-package "OUTDOOR_GCS::MULTIPAYLOADACTIONREQUEST"))
(unless (find-package "OUTDOOR_GCS::MULTIPAYLOADACTIONRESPONSE")
  (make-package "OUTDOOR_GCS::MULTIPAYLOADACTIONRESPONSE"))

(in-package "ROS")





(defclass outdoor_gcs::MultiPayloadActionRequest
  :super ros::object
  :slots (_perform_action _action_type ))

(defmethod outdoor_gcs::MultiPayloadActionRequest
  (:init
   (&key
    ((:perform_action __perform_action) nil)
    ((:action_type __action_type) 0)
    )
   (send-super :init)
   (setq _perform_action __perform_action)
   (setq _action_type (round __action_type))
   self)
  (:perform_action
   (&optional __perform_action)
   (if __perform_action (setq _perform_action __perform_action)) _perform_action)
  (:action_type
   (&optional __action_type)
   (if __action_type (setq _action_type __action_type)) _action_type)
  (:serialization-length
   ()
   (+
    ;; bool _perform_action
    1
    ;; int32 _action_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _perform_action
       (if _perform_action (write-byte -1 s) (write-byte 0 s))
     ;; int32 _action_type
       (write-long _action_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _perform_action
     (setq _perform_action (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _action_type
     (setq _action_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass outdoor_gcs::MultiPayloadActionResponse
  :super ros::object
  :slots (_status_ok _trajectory_type ))

(defmethod outdoor_gcs::MultiPayloadActionResponse
  (:init
   (&key
    ((:status_ok __status_ok) nil)
    ((:trajectory_type __trajectory_type) 0)
    )
   (send-super :init)
   (setq _status_ok __status_ok)
   (setq _trajectory_type (round __trajectory_type))
   self)
  (:status_ok
   (&optional __status_ok)
   (if __status_ok (setq _status_ok __status_ok)) _status_ok)
  (:trajectory_type
   (&optional __trajectory_type)
   (if __trajectory_type (setq _trajectory_type __trajectory_type)) _trajectory_type)
  (:serialization-length
   ()
   (+
    ;; bool _status_ok
    1
    ;; int32 _trajectory_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status_ok
       (if _status_ok (write-byte -1 s) (write-byte 0 s))
     ;; int32 _trajectory_type
       (write-long _trajectory_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status_ok
     (setq _status_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _trajectory_type
     (setq _trajectory_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass outdoor_gcs::MultiPayloadAction
  :super ros::object
  :slots ())

(setf (get outdoor_gcs::MultiPayloadAction :md5sum-) "901dfe89bb4f4622133561aed17b3eb7")
(setf (get outdoor_gcs::MultiPayloadAction :datatype-) "outdoor_gcs/MultiPayloadAction")
(setf (get outdoor_gcs::MultiPayloadAction :request) outdoor_gcs::MultiPayloadActionRequest)
(setf (get outdoor_gcs::MultiPayloadAction :response) outdoor_gcs::MultiPayloadActionResponse)

(defmethod outdoor_gcs::MultiPayloadActionRequest
  (:response () (instance outdoor_gcs::MultiPayloadActionResponse :init)))

(setf (get outdoor_gcs::MultiPayloadActionRequest :md5sum-) "901dfe89bb4f4622133561aed17b3eb7")
(setf (get outdoor_gcs::MultiPayloadActionRequest :datatype-) "outdoor_gcs/MultiPayloadActionRequest")
(setf (get outdoor_gcs::MultiPayloadActionRequest :definition-)
      "bool perform_action
int32 action_type
---
bool status_ok
int32 trajectory_type

")

(setf (get outdoor_gcs::MultiPayloadActionResponse :md5sum-) "901dfe89bb4f4622133561aed17b3eb7")
(setf (get outdoor_gcs::MultiPayloadActionResponse :datatype-) "outdoor_gcs/MultiPayloadActionResponse")
(setf (get outdoor_gcs::MultiPayloadActionResponse :definition-)
      "bool perform_action
int32 action_type
---
bool status_ok
int32 trajectory_type

")



(provide :outdoor_gcs/MultiPayloadAction "901dfe89bb4f4622133561aed17b3eb7")


