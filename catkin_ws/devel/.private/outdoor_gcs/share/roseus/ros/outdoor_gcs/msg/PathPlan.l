;; Auto-generated. Do not edit!


(when (boundp 'outdoor_gcs::PathPlan)
  (if (not (find-package "OUTDOOR_GCS"))
    (make-package "OUTDOOR_GCS"))
  (shadow 'PathPlan (find-package "OUTDOOR_GCS")))
(unless (find-package "OUTDOOR_GCS::PATHPLAN")
  (make-package "OUTDOOR_GCS::PATHPLAN"))

(in-package "ROS")
;;//! \htmlinclude PathPlan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass outdoor_gcs::PathPlan
  :super ros::object
  :slots (_header _alg _num _uavs_id _start _cur_position _des_position _nxt_position _cur_velocity _params ))

(defmethod outdoor_gcs::PathPlan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:alg __alg) "")
    ((:num __num) 0)
    ((:uavs_id __uavs_id) (let (r) (dotimes (i 9) (push nil r)) r))
    ((:start __start) nil)
    ((:cur_position __cur_position) (make-array 27 :initial-element 0.0 :element-type :float))
    ((:des_position __des_position) (make-array 27 :initial-element 0.0 :element-type :float))
    ((:nxt_position __nxt_position) (make-array 27 :initial-element 0.0 :element-type :float))
    ((:cur_velocity __cur_velocity) (make-array 27 :initial-element 0.0 :element-type :float))
    ((:params __params) (make-array 10 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _alg (string __alg))
   (setq _num (round __num))
   (setq _uavs_id __uavs_id)
   (setq _start __start)
   (setq _cur_position __cur_position)
   (setq _des_position __des_position)
   (setq _nxt_position __nxt_position)
   (setq _cur_velocity __cur_velocity)
   (setq _params __params)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:alg
   (&optional __alg)
   (if __alg (setq _alg __alg)) _alg)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:uavs_id
   (&optional __uavs_id)
   (if __uavs_id (setq _uavs_id __uavs_id)) _uavs_id)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:cur_position
   (&optional __cur_position)
   (if __cur_position (setq _cur_position __cur_position)) _cur_position)
  (:des_position
   (&optional __des_position)
   (if __des_position (setq _des_position __des_position)) _des_position)
  (:nxt_position
   (&optional __nxt_position)
   (if __nxt_position (setq _nxt_position __nxt_position)) _nxt_position)
  (:cur_velocity
   (&optional __cur_velocity)
   (if __cur_velocity (setq _cur_velocity __cur_velocity)) _cur_velocity)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _alg
    4 (length _alg)
    ;; int8 _num
    1
    ;; bool[9] _uavs_id
    (* 1    9)
    ;; bool _start
    1
    ;; float64[27] _cur_position
    (* 8    27)
    ;; float64[27] _des_position
    (* 8    27)
    ;; float64[27] _nxt_position
    (* 8    27)
    ;; float64[27] _cur_velocity
    (* 8    27)
    ;; float64[10] _params
    (* 8    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _alg
       (write-long (length _alg) s) (princ _alg s)
     ;; int8 _num
       (write-byte _num s)
     ;; bool[9] _uavs_id
     (dotimes (i 9)
       (if (elt _uavs_id i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;; float64[27] _cur_position
     (dotimes (i 27)
       (sys::poke (elt _cur_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[27] _des_position
     (dotimes (i 27)
       (sys::poke (elt _des_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[27] _nxt_position
     (dotimes (i 27)
       (sys::poke (elt _nxt_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[27] _cur_velocity
     (dotimes (i 27)
       (sys::poke (elt _cur_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[10] _params
     (dotimes (i 10)
       (sys::poke (elt _params i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _alg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num 127) (setq _num (- _num 256)))
   ;; bool[9] _uavs_id
   (dotimes (i (length _uavs_id))
     (setf (elt _uavs_id i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[27] _cur_position
   (dotimes (i (length _cur_position))
     (setf (elt _cur_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[27] _des_position
   (dotimes (i (length _des_position))
     (setf (elt _des_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[27] _nxt_position
   (dotimes (i (length _nxt_position))
     (setf (elt _nxt_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[27] _cur_velocity
   (dotimes (i (length _cur_velocity))
     (setf (elt _cur_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[10] _params
   (dotimes (i (length _params))
     (setf (elt _params i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get outdoor_gcs::PathPlan :md5sum-) "fd0ba91e4fa13527e6deb13cd9ac383a")
(setf (get outdoor_gcs::PathPlan :datatype-) "outdoor_gcs/PathPlan")
(setf (get outdoor_gcs::PathPlan :definition-)
      "std_msgs/Header header   

string alg
int8 num ## max 9
bool[9] uavs_id 
bool start
float64[27] cur_position
float64[27] des_position
float64[27] nxt_position
float64[27] cur_velocity
float64[10] params
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :outdoor_gcs/PathPlan "fd0ba91e4fa13527e6deb13cd9ac383a")


