;; Auto-generated. Do not edit!


(when (boundp 'outdoor_gcs::GeneralInfo)
  (if (not (find-package "OUTDOOR_GCS"))
    (make-package "OUTDOOR_GCS"))
  (shadow 'GeneralInfo (find-package "OUTDOOR_GCS")))
(unless (find-package "OUTDOOR_GCS::GENERALINFO")
  (make-package "OUTDOOR_GCS::GENERALINFO"))
(unless (find-package "OUTDOOR_GCS::GENERALINFOREQUEST")
  (make-package "OUTDOOR_GCS::GENERALINFOREQUEST"))
(unless (find-package "OUTDOOR_GCS::GENERALINFORESPONSE")
  (make-package "OUTDOOR_GCS::GENERALINFORESPONSE"))

(in-package "ROS")





(defclass outdoor_gcs::GeneralInfoRequest
  :super ros::object
  :slots (_controllername _TargetdroneID _isMulti ))

(defmethod outdoor_gcs::GeneralInfoRequest
  (:init
   (&key
    ((:controllername __controllername) "")
    ((:TargetdroneID __TargetdroneID) 0)
    ((:isMulti __isMulti) nil)
    )
   (send-super :init)
   (setq _controllername (string __controllername))
   (setq _TargetdroneID (round __TargetdroneID))
   (setq _isMulti __isMulti)
   self)
  (:controllername
   (&optional __controllername)
   (if __controllername (setq _controllername __controllername)) _controllername)
  (:TargetdroneID
   (&optional __TargetdroneID)
   (if __TargetdroneID (setq _TargetdroneID __TargetdroneID)) _TargetdroneID)
  (:isMulti
   (&optional __isMulti)
   (if __isMulti (setq _isMulti __isMulti)) _isMulti)
  (:serialization-length
   ()
   (+
    ;; string _controllername
    4 (length _controllername)
    ;; int32 _TargetdroneID
    4
    ;; bool _isMulti
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _controllername
       (write-long (length _controllername) s) (princ _controllername s)
     ;; int32 _TargetdroneID
       (write-long _TargetdroneID s)
     ;; bool _isMulti
       (if _isMulti (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _controllername
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controllername (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _TargetdroneID
     (setq _TargetdroneID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isMulti
     (setq _isMulti (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass outdoor_gcs::GeneralInfoResponse
  :super ros::object
  :slots (_oktostart ))

(defmethod outdoor_gcs::GeneralInfoResponse
  (:init
   (&key
    ((:oktostart __oktostart) nil)
    )
   (send-super :init)
   (setq _oktostart __oktostart)
   self)
  (:oktostart
   (&optional __oktostart)
   (if __oktostart (setq _oktostart __oktostart)) _oktostart)
  (:serialization-length
   ()
   (+
    ;; bool _oktostart
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _oktostart
       (if _oktostart (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _oktostart
     (setq _oktostart (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass outdoor_gcs::GeneralInfo
  :super ros::object
  :slots ())

(setf (get outdoor_gcs::GeneralInfo :md5sum-) "f5411d5ea2241dbc1c5aa4c2c6403d8d")
(setf (get outdoor_gcs::GeneralInfo :datatype-) "outdoor_gcs/GeneralInfo")
(setf (get outdoor_gcs::GeneralInfo :request) outdoor_gcs::GeneralInfoRequest)
(setf (get outdoor_gcs::GeneralInfo :response) outdoor_gcs::GeneralInfoResponse)

(defmethod outdoor_gcs::GeneralInfoRequest
  (:response () (instance outdoor_gcs::GeneralInfoResponse :init)))

(setf (get outdoor_gcs::GeneralInfoRequest :md5sum-) "f5411d5ea2241dbc1c5aa4c2c6403d8d")
(setf (get outdoor_gcs::GeneralInfoRequest :datatype-) "outdoor_gcs/GeneralInfoRequest")
(setf (get outdoor_gcs::GeneralInfoRequest :definition-)
      "string controllername
int32 TargetdroneID
bool isMulti
---
bool oktostart

")

(setf (get outdoor_gcs::GeneralInfoResponse :md5sum-) "f5411d5ea2241dbc1c5aa4c2c6403d8d")
(setf (get outdoor_gcs::GeneralInfoResponse :datatype-) "outdoor_gcs/GeneralInfoResponse")
(setf (get outdoor_gcs::GeneralInfoResponse :definition-)
      "string controllername
int32 TargetdroneID
bool isMulti
---
bool oktostart

")



(provide :outdoor_gcs/GeneralInfo "f5411d5ea2241dbc1c5aa4c2c6403d8d")


