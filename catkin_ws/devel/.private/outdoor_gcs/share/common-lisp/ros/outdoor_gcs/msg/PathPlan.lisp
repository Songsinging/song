; Auto-generated. Do not edit!


(cl:in-package outdoor_gcs-msg)


;//! \htmlinclude PathPlan.msg.html

(cl:defclass <PathPlan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (alg
    :reader alg
    :initarg :alg
    :type cl:string
    :initform "")
   (num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (uavs_id
    :reader uavs_id
    :initarg :uavs_id
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 9 :element-type 'cl:boolean :initial-element cl:nil))
   (start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil)
   (cur_position
    :reader cur_position
    :initarg :cur_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 27 :element-type 'cl:float :initial-element 0.0))
   (des_position
    :reader des_position
    :initarg :des_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 27 :element-type 'cl:float :initial-element 0.0))
   (nxt_position
    :reader nxt_position
    :initarg :nxt_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 27 :element-type 'cl:float :initial-element 0.0))
   (cur_velocity
    :reader cur_velocity
    :initarg :cur_velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 27 :element-type 'cl:float :initial-element 0.0))
   (params
    :reader params
    :initarg :params
    :type (cl:vector cl:float)
   :initform (cl:make-array 10 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PathPlan (<PathPlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name outdoor_gcs-msg:<PathPlan> is deprecated: use outdoor_gcs-msg:PathPlan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:header-val is deprecated.  Use outdoor_gcs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'alg-val :lambda-list '(m))
(cl:defmethod alg-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:alg-val is deprecated.  Use outdoor_gcs-msg:alg instead.")
  (alg m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:num-val is deprecated.  Use outdoor_gcs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'uavs_id-val :lambda-list '(m))
(cl:defmethod uavs_id-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:uavs_id-val is deprecated.  Use outdoor_gcs-msg:uavs_id instead.")
  (uavs_id m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:start-val is deprecated.  Use outdoor_gcs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'cur_position-val :lambda-list '(m))
(cl:defmethod cur_position-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:cur_position-val is deprecated.  Use outdoor_gcs-msg:cur_position instead.")
  (cur_position m))

(cl:ensure-generic-function 'des_position-val :lambda-list '(m))
(cl:defmethod des_position-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:des_position-val is deprecated.  Use outdoor_gcs-msg:des_position instead.")
  (des_position m))

(cl:ensure-generic-function 'nxt_position-val :lambda-list '(m))
(cl:defmethod nxt_position-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:nxt_position-val is deprecated.  Use outdoor_gcs-msg:nxt_position instead.")
  (nxt_position m))

(cl:ensure-generic-function 'cur_velocity-val :lambda-list '(m))
(cl:defmethod cur_velocity-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:cur_velocity-val is deprecated.  Use outdoor_gcs-msg:cur_velocity instead.")
  (cur_velocity m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <PathPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader outdoor_gcs-msg:params-val is deprecated.  Use outdoor_gcs-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPlan>) ostream)
  "Serializes a message object of type '<PathPlan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alg))
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'uavs_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cur_position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'des_position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'nxt_position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cur_velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPlan>) istream)
  "Deserializes a message object of type '<PathPlan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:setf (cl:slot-value msg 'uavs_id) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'uavs_id)))
    (cl:dotimes (i 9)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'cur_position) (cl:make-array 27))
  (cl:let ((vals (cl:slot-value msg 'cur_position)))
    (cl:dotimes (i 27)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'des_position) (cl:make-array 27))
  (cl:let ((vals (cl:slot-value msg 'des_position)))
    (cl:dotimes (i 27)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'nxt_position) (cl:make-array 27))
  (cl:let ((vals (cl:slot-value msg 'nxt_position)))
    (cl:dotimes (i 27)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'cur_velocity) (cl:make-array 27))
  (cl:let ((vals (cl:slot-value msg 'cur_velocity)))
    (cl:dotimes (i 27)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i 10)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPlan>)))
  "Returns string type for a message object of type '<PathPlan>"
  "outdoor_gcs/PathPlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPlan)))
  "Returns string type for a message object of type 'PathPlan"
  "outdoor_gcs/PathPlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPlan>)))
  "Returns md5sum for a message object of type '<PathPlan>"
  "fd0ba91e4fa13527e6deb13cd9ac383a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPlan)))
  "Returns md5sum for a message object of type 'PathPlan"
  "fd0ba91e4fa13527e6deb13cd9ac383a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPlan>)))
  "Returns full string definition for message of type '<PathPlan>"
  (cl:format cl:nil "std_msgs/Header header   ~%~%string alg~%int8 num ## max 9~%bool[9] uavs_id ~%bool start~%float64[27] cur_position~%float64[27] des_position~%float64[27] nxt_position~%float64[27] cur_velocity~%float64[10] params~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPlan)))
  "Returns full string definition for message of type 'PathPlan"
  (cl:format cl:nil "std_msgs/Header header   ~%~%string alg~%int8 num ## max 9~%bool[9] uavs_id ~%bool start~%float64[27] cur_position~%float64[27] des_position~%float64[27] nxt_position~%float64[27] cur_velocity~%float64[10] params~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPlan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'alg))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'uavs_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cur_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'des_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'nxt_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cur_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPlan>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPlan
    (cl:cons ':header (header msg))
    (cl:cons ':alg (alg msg))
    (cl:cons ':num (num msg))
    (cl:cons ':uavs_id (uavs_id msg))
    (cl:cons ':start (start msg))
    (cl:cons ':cur_position (cur_position msg))
    (cl:cons ':des_position (des_position msg))
    (cl:cons ':nxt_position (nxt_position msg))
    (cl:cons ':cur_velocity (cur_velocity msg))
    (cl:cons ':params (params msg))
))
