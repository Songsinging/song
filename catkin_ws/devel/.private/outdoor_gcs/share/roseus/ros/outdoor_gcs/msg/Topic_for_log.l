;; Auto-generated. Do not edit!


(when (boundp 'outdoor_gcs::Topic_for_log)
  (if (not (find-package "OUTDOOR_GCS"))
    (make-package "OUTDOOR_GCS"))
  (shadow 'Topic_for_log (find-package "OUTDOOR_GCS")))
(unless (find-package "OUTDOOR_GCS::TOPIC_FOR_LOG")
  (make-package "OUTDOOR_GCS::TOPIC_FOR_LOG"))

(in-package "ROS")
;;//! \htmlinclude Topic_for_log.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass outdoor_gcs::Topic_for_log
  :super ros::object
  :slots (_header _time _Drone_State _Control_Command _Attitude_Reference _Control_Output ))

(defmethod outdoor_gcs::Topic_for_log
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:Drone_State __Drone_State) (instance outdoor_gcs::DroneState :init))
    ((:Control_Command __Control_Command) (instance outdoor_gcs::ControlCommand :init))
    ((:Attitude_Reference __Attitude_Reference) (instance outdoor_gcs::AttitudeReference :init))
    ((:Control_Output __Control_Output) (instance outdoor_gcs::ControlOutput :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (float __time))
   (setq _Drone_State __Drone_State)
   (setq _Control_Command __Control_Command)
   (setq _Attitude_Reference __Attitude_Reference)
   (setq _Control_Output __Control_Output)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:Drone_State
   (&rest __Drone_State)
   (if (keywordp (car __Drone_State))
       (send* _Drone_State __Drone_State)
     (progn
       (if __Drone_State (setq _Drone_State (car __Drone_State)))
       _Drone_State)))
  (:Control_Command
   (&rest __Control_Command)
   (if (keywordp (car __Control_Command))
       (send* _Control_Command __Control_Command)
     (progn
       (if __Control_Command (setq _Control_Command (car __Control_Command)))
       _Control_Command)))
  (:Attitude_Reference
   (&rest __Attitude_Reference)
   (if (keywordp (car __Attitude_Reference))
       (send* _Attitude_Reference __Attitude_Reference)
     (progn
       (if __Attitude_Reference (setq _Attitude_Reference (car __Attitude_Reference)))
       _Attitude_Reference)))
  (:Control_Output
   (&rest __Control_Output)
   (if (keywordp (car __Control_Output))
       (send* _Control_Output __Control_Output)
     (progn
       (if __Control_Output (setq _Control_Output (car __Control_Output)))
       _Control_Output)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _time
    4
    ;; outdoor_gcs/DroneState _Drone_State
    (send _Drone_State :serialization-length)
    ;; outdoor_gcs/ControlCommand _Control_Command
    (send _Control_Command :serialization-length)
    ;; outdoor_gcs/AttitudeReference _Attitude_Reference
    (send _Attitude_Reference :serialization-length)
    ;; outdoor_gcs/ControlOutput _Control_Output
    (send _Control_Output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; outdoor_gcs/DroneState _Drone_State
       (send _Drone_State :serialize s)
     ;; outdoor_gcs/ControlCommand _Control_Command
       (send _Control_Command :serialize s)
     ;; outdoor_gcs/AttitudeReference _Attitude_Reference
       (send _Attitude_Reference :serialize s)
     ;; outdoor_gcs/ControlOutput _Control_Output
       (send _Control_Output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; outdoor_gcs/DroneState _Drone_State
     (send _Drone_State :deserialize buf ptr-) (incf ptr- (send _Drone_State :serialization-length))
   ;; outdoor_gcs/ControlCommand _Control_Command
     (send _Control_Command :deserialize buf ptr-) (incf ptr- (send _Control_Command :serialization-length))
   ;; outdoor_gcs/AttitudeReference _Attitude_Reference
     (send _Attitude_Reference :deserialize buf ptr-) (incf ptr- (send _Attitude_Reference :serialization-length))
   ;; outdoor_gcs/ControlOutput _Control_Output
     (send _Control_Output :deserialize buf ptr-) (incf ptr- (send _Control_Output :serialization-length))
   ;;
   self)
  )

(setf (get outdoor_gcs::Topic_for_log :md5sum-) "4d5a812650d243b5fcca43e9797b78b4")
(setf (get outdoor_gcs::Topic_for_log :datatype-) "outdoor_gcs/Topic_for_log")
(setf (get outdoor_gcs::Topic_for_log :definition-)
      "std_msgs/Header header

## log时间
float32 time             ## [s]

DroneState Drone_State

ControlCommand Control_Command

AttitudeReference Attitude_Reference

ControlOutput Control_Output




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

================================================================================
MSG: outdoor_gcs/DroneState
std_msgs/Header header

## 机载电脑是否连接上飞控，true已连接，false则不是
bool connected
## 是否解锁，true为已解锁，false则不是
bool armed
## PX4飞控当前飞行模式
string mode

## 系统启动时间
float32 time_from_start             ## [s]

## drone position and attitude
float32  longitude                  ## global position
float32  latitude                   ## global position
float32[3] position                 ## [m] local position if in outdoor mode
float32[3] velocity                 ## [m/s] inertial velocity in ENU
float32[3] attitude                 ## [rad]
geometry_msgs/Quaternion attitude_q ## []
float32[3] attitude_rate            ## [rad/s]
float32[3] acceleration             ## [m/s^2] defined in body fixed frame
## payload info from mocap system
float32[3] payload_vel              ## [m/s]
float32[3] payload_pos              ## [m]
float32[4] payload_quaternion       ## []
float32[3] payload_angular_vel      ## [rad/s]
## battery status
float32 battery_voltage             ## [V] 
float32 battery_remaining           ## 
## Flag showing whether the mocap msg has been updated very loop
bool mocapOK                        
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: outdoor_gcs/ControlCommand
std_msgs/Header header

## 控制命令的编号 防止接收到错误命令， 编号应该逐次递加
uint32 Command_ID

## 控制命令的模式 
uint8 Mode
# enum Mode 控制模式枚举
uint8 Idle=0
uint8 Takeoff=1
uint8 Move_ENU=2
uint8 Move_Body=3
uint8 Hold=4
uint8 Land=5
uint8 Disarm=6
uint8 Payload_Stabilization_SingleUAV=7
uint8 Trajectory_Tracking=8
uint8 Payload_Stabilization=9
uint8 Payload_Land=10

## 控制参考量 
## 位置参考量：位置、速度、加速度、加加速度、加加加速度
## 角度参考量：偏航角、偏航角速度、偏航角加速度
TrajectoryPoint Reference_State

================================================================================
MSG: outdoor_gcs/TrajectoryPoint
std_msgs/Header header

## 时刻： 用于轨迹追踪
float32 time_from_start          ## [s]

# sub_mode 2-bit value:
# 0 for position, 1 for vel, 1st for xy, 2nd for z.
#                   xy position     xy velocity
# z position       	0b00(0)       0b10(2)
# z velocity		0b01(1)       0b11(3)
#
## 控制命令的子模式 
## 可以选择 位置追踪、速度追踪或者其他复合模式，
## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈
uint8 Sub_mode
# enum sub_mode
uint8 XYZ_POS = 0
uint8 XY_POS_Z_VEL = 1
uint8 XY_VEL_Z_POS = 2
uint8 XY_VEL_Z_VEL = 3

## 参考量：位置、速度、加速度、加加速度、加加加速度
float32[3] position_ref          ## [m]
float32[3] velocity_ref          ## [m/s]
float32[3] acceleration_ref      ## [m/s^2]
## float32[3] jerk_ref              ## [m/s^3]
## float32[3] snap_ref              ## [m/s^4]

## 角度参考量：偏航角、偏航角速度、偏航角加速度
float32 yaw_ref                  ## [rad]
## float32 yaw_rate_ref             ## [rad/s] 
## float32 yaw_acceleration_ref     ## [rad/s] 

## attitude angle reference for payload control 
float32 pitch_ref ## [rad]
float32 roll_ref  ## [rad]
================================================================================
MSG: outdoor_gcs/AttitudeReference
std_msgs/Header header

## 位置控制器输出： 期望角度、期望角加速度
float32[3] throttle_sp                 ## [0-1] 惯性系下的油门量
float32 desired_throttle               ## [0-1] 机体系z轴
float32[3] desired_attitude            ## [rad]
geometry_msgs/Quaternion desired_att_q ## 四元数

================================================================================
MSG: outdoor_gcs/ControlOutput
std_msgs/Header header

## 位置控制器输出： 期望角度、期望角加速度
float32[3] u_l                 ## [0-1] 惯性系下的油门量
float32[3] u_d                 ## [rad]

float32[3] NE                  ## [rad]
  
float32[3] Thrust              ## [rad]  
float32[3] Throttle
")



(provide :outdoor_gcs/Topic_for_log "4d5a812650d243b5fcca43e9797b78b4")


