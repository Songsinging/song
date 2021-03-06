# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from outdoor_gcs/Topic_for_log.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import outdoor_gcs.msg
import std_msgs.msg

class Topic_for_log(genpy.Message):
  _md5sum = "4d5a812650d243b5fcca43e9797b78b4"
  _type = "outdoor_gcs/Topic_for_log"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

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
float32[3] Throttle"""
  __slots__ = ['header','time','Drone_State','Control_Command','Attitude_Reference','Control_Output']
  _slot_types = ['std_msgs/Header','float32','outdoor_gcs/DroneState','outdoor_gcs/ControlCommand','outdoor_gcs/AttitudeReference','outdoor_gcs/ControlOutput']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,time,Drone_State,Control_Command,Attitude_Reference,Control_Output

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Topic_for_log, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.time is None:
        self.time = 0.
      if self.Drone_State is None:
        self.Drone_State = outdoor_gcs.msg.DroneState()
      if self.Control_Command is None:
        self.Control_Command = outdoor_gcs.msg.ControlCommand()
      if self.Attitude_Reference is None:
        self.Attitude_Reference = outdoor_gcs.msg.AttitudeReference()
      if self.Control_Output is None:
        self.Control_Output = outdoor_gcs.msg.ControlOutput()
    else:
      self.header = std_msgs.msg.Header()
      self.time = 0.
      self.Drone_State = outdoor_gcs.msg.DroneState()
      self.Control_Command = outdoor_gcs.msg.ControlCommand()
      self.Attitude_Reference = outdoor_gcs.msg.AttitudeReference()
      self.Control_Output = outdoor_gcs.msg.ControlOutput()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.time, _x.Drone_State.header.seq, _x.Drone_State.header.stamp.secs, _x.Drone_State.header.stamp.nsecs))
      _x = self.Drone_State.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.Drone_State.connected, _x.Drone_State.armed))
      _x = self.Drone_State.mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3f().pack(_x.Drone_State.time_from_start, _x.Drone_State.longitude, _x.Drone_State.latitude))
      buff.write(_get_struct_3f().pack(*self.Drone_State.position))
      buff.write(_get_struct_3f().pack(*self.Drone_State.velocity))
      buff.write(_get_struct_3f().pack(*self.Drone_State.attitude))
      _x = self
      buff.write(_get_struct_4d().pack(_x.Drone_State.attitude_q.x, _x.Drone_State.attitude_q.y, _x.Drone_State.attitude_q.z, _x.Drone_State.attitude_q.w))
      buff.write(_get_struct_3f().pack(*self.Drone_State.attitude_rate))
      buff.write(_get_struct_3f().pack(*self.Drone_State.acceleration))
      buff.write(_get_struct_3f().pack(*self.Drone_State.payload_vel))
      buff.write(_get_struct_3f().pack(*self.Drone_State.payload_pos))
      buff.write(_get_struct_4f().pack(*self.Drone_State.payload_quaternion))
      buff.write(_get_struct_3f().pack(*self.Drone_State.payload_angular_vel))
      _x = self
      buff.write(_get_struct_2fB3I().pack(_x.Drone_State.battery_voltage, _x.Drone_State.battery_remaining, _x.Drone_State.mocapOK, _x.Control_Command.header.seq, _x.Control_Command.header.stamp.secs, _x.Control_Command.header.stamp.nsecs))
      _x = self.Control_Command.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_IB3I().pack(_x.Control_Command.Command_ID, _x.Control_Command.Mode, _x.Control_Command.Reference_State.header.seq, _x.Control_Command.Reference_State.header.stamp.secs, _x.Control_Command.Reference_State.header.stamp.nsecs))
      _x = self.Control_Command.Reference_State.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_fB().pack(_x.Control_Command.Reference_State.time_from_start, _x.Control_Command.Reference_State.Sub_mode))
      buff.write(_get_struct_3f().pack(*self.Control_Command.Reference_State.position_ref))
      buff.write(_get_struct_3f().pack(*self.Control_Command.Reference_State.velocity_ref))
      buff.write(_get_struct_3f().pack(*self.Control_Command.Reference_State.acceleration_ref))
      _x = self
      buff.write(_get_struct_3f3I().pack(_x.Control_Command.Reference_State.yaw_ref, _x.Control_Command.Reference_State.pitch_ref, _x.Control_Command.Reference_State.roll_ref, _x.Attitude_Reference.header.seq, _x.Attitude_Reference.header.stamp.secs, _x.Attitude_Reference.header.stamp.nsecs))
      _x = self.Attitude_Reference.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      buff.write(_get_struct_3f().pack(*self.Attitude_Reference.throttle_sp))
      _x = self.Attitude_Reference.desired_throttle
      buff.write(_get_struct_f().pack(_x))
      buff.write(_get_struct_3f().pack(*self.Attitude_Reference.desired_attitude))
      _x = self
      buff.write(_get_struct_4d3I().pack(_x.Attitude_Reference.desired_att_q.x, _x.Attitude_Reference.desired_att_q.y, _x.Attitude_Reference.desired_att_q.z, _x.Attitude_Reference.desired_att_q.w, _x.Control_Output.header.seq, _x.Control_Output.header.stamp.secs, _x.Control_Output.header.stamp.nsecs))
      _x = self.Control_Output.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      buff.write(_get_struct_3f().pack(*self.Control_Output.u_l))
      buff.write(_get_struct_3f().pack(*self.Control_Output.u_d))
      buff.write(_get_struct_3f().pack(*self.Control_Output.NE))
      buff.write(_get_struct_3f().pack(*self.Control_Output.Thrust))
      buff.write(_get_struct_3f().pack(*self.Control_Output.Throttle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.Drone_State is None:
        self.Drone_State = outdoor_gcs.msg.DroneState()
      if self.Control_Command is None:
        self.Control_Command = outdoor_gcs.msg.ControlCommand()
      if self.Attitude_Reference is None:
        self.Attitude_Reference = outdoor_gcs.msg.AttitudeReference()
      if self.Control_Output is None:
        self.Control_Output = outdoor_gcs.msg.ControlOutput()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.time, _x.Drone_State.header.seq, _x.Drone_State.header.stamp.secs, _x.Drone_State.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Drone_State.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Drone_State.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.Drone_State.connected, _x.Drone_State.armed,) = _get_struct_2B().unpack(str[start:end])
      self.Drone_State.connected = bool(self.Drone_State.connected)
      self.Drone_State.armed = bool(self.Drone_State.armed)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Drone_State.mode = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Drone_State.mode = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.Drone_State.time_from_start, _x.Drone_State.longitude, _x.Drone_State.latitude,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.position = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.velocity = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.attitude = _get_struct_3f().unpack(str[start:end])
      _x = self
      start = end
      end += 32
      (_x.Drone_State.attitude_q.x, _x.Drone_State.attitude_q.y, _x.Drone_State.attitude_q.z, _x.Drone_State.attitude_q.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.attitude_rate = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.acceleration = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.payload_vel = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.payload_pos = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 16
      self.Drone_State.payload_quaternion = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.payload_angular_vel = _get_struct_3f().unpack(str[start:end])
      _x = self
      start = end
      end += 21
      (_x.Drone_State.battery_voltage, _x.Drone_State.battery_remaining, _x.Drone_State.mocapOK, _x.Control_Command.header.seq, _x.Control_Command.header.stamp.secs, _x.Control_Command.header.stamp.nsecs,) = _get_struct_2fB3I().unpack(str[start:end])
      self.Drone_State.mocapOK = bool(self.Drone_State.mocapOK)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Control_Command.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Control_Command.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.Control_Command.Command_ID, _x.Control_Command.Mode, _x.Control_Command.Reference_State.header.seq, _x.Control_Command.Reference_State.header.stamp.secs, _x.Control_Command.Reference_State.header.stamp.nsecs,) = _get_struct_IB3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Control_Command.Reference_State.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Control_Command.Reference_State.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.Control_Command.Reference_State.time_from_start, _x.Control_Command.Reference_State.Sub_mode,) = _get_struct_fB().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Command.Reference_State.position_ref = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Command.Reference_State.velocity_ref = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Command.Reference_State.acceleration_ref = _get_struct_3f().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.Control_Command.Reference_State.yaw_ref, _x.Control_Command.Reference_State.pitch_ref, _x.Control_Command.Reference_State.roll_ref, _x.Attitude_Reference.header.seq, _x.Attitude_Reference.header.stamp.secs, _x.Attitude_Reference.header.stamp.nsecs,) = _get_struct_3f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Attitude_Reference.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Attitude_Reference.header.frame_id = str[start:end]
      start = end
      end += 12
      self.Attitude_Reference.throttle_sp = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 4
      (self.Attitude_Reference.desired_throttle,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 12
      self.Attitude_Reference.desired_attitude = _get_struct_3f().unpack(str[start:end])
      _x = self
      start = end
      end += 44
      (_x.Attitude_Reference.desired_att_q.x, _x.Attitude_Reference.desired_att_q.y, _x.Attitude_Reference.desired_att_q.z, _x.Attitude_Reference.desired_att_q.w, _x.Control_Output.header.seq, _x.Control_Output.header.stamp.secs, _x.Control_Output.header.stamp.nsecs,) = _get_struct_4d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Control_Output.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Control_Output.header.frame_id = str[start:end]
      start = end
      end += 12
      self.Control_Output.u_l = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Output.u_d = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Output.NE = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Output.Thrust = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Output.Throttle = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.time, _x.Drone_State.header.seq, _x.Drone_State.header.stamp.secs, _x.Drone_State.header.stamp.nsecs))
      _x = self.Drone_State.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.Drone_State.connected, _x.Drone_State.armed))
      _x = self.Drone_State.mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3f().pack(_x.Drone_State.time_from_start, _x.Drone_State.longitude, _x.Drone_State.latitude))
      buff.write(self.Drone_State.position.tostring())
      buff.write(self.Drone_State.velocity.tostring())
      buff.write(self.Drone_State.attitude.tostring())
      _x = self
      buff.write(_get_struct_4d().pack(_x.Drone_State.attitude_q.x, _x.Drone_State.attitude_q.y, _x.Drone_State.attitude_q.z, _x.Drone_State.attitude_q.w))
      buff.write(self.Drone_State.attitude_rate.tostring())
      buff.write(self.Drone_State.acceleration.tostring())
      buff.write(self.Drone_State.payload_vel.tostring())
      buff.write(self.Drone_State.payload_pos.tostring())
      buff.write(self.Drone_State.payload_quaternion.tostring())
      buff.write(self.Drone_State.payload_angular_vel.tostring())
      _x = self
      buff.write(_get_struct_2fB3I().pack(_x.Drone_State.battery_voltage, _x.Drone_State.battery_remaining, _x.Drone_State.mocapOK, _x.Control_Command.header.seq, _x.Control_Command.header.stamp.secs, _x.Control_Command.header.stamp.nsecs))
      _x = self.Control_Command.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_IB3I().pack(_x.Control_Command.Command_ID, _x.Control_Command.Mode, _x.Control_Command.Reference_State.header.seq, _x.Control_Command.Reference_State.header.stamp.secs, _x.Control_Command.Reference_State.header.stamp.nsecs))
      _x = self.Control_Command.Reference_State.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_fB().pack(_x.Control_Command.Reference_State.time_from_start, _x.Control_Command.Reference_State.Sub_mode))
      buff.write(self.Control_Command.Reference_State.position_ref.tostring())
      buff.write(self.Control_Command.Reference_State.velocity_ref.tostring())
      buff.write(self.Control_Command.Reference_State.acceleration_ref.tostring())
      _x = self
      buff.write(_get_struct_3f3I().pack(_x.Control_Command.Reference_State.yaw_ref, _x.Control_Command.Reference_State.pitch_ref, _x.Control_Command.Reference_State.roll_ref, _x.Attitude_Reference.header.seq, _x.Attitude_Reference.header.stamp.secs, _x.Attitude_Reference.header.stamp.nsecs))
      _x = self.Attitude_Reference.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      buff.write(self.Attitude_Reference.throttle_sp.tostring())
      _x = self.Attitude_Reference.desired_throttle
      buff.write(_get_struct_f().pack(_x))
      buff.write(self.Attitude_Reference.desired_attitude.tostring())
      _x = self
      buff.write(_get_struct_4d3I().pack(_x.Attitude_Reference.desired_att_q.x, _x.Attitude_Reference.desired_att_q.y, _x.Attitude_Reference.desired_att_q.z, _x.Attitude_Reference.desired_att_q.w, _x.Control_Output.header.seq, _x.Control_Output.header.stamp.secs, _x.Control_Output.header.stamp.nsecs))
      _x = self.Control_Output.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      buff.write(self.Control_Output.u_l.tostring())
      buff.write(self.Control_Output.u_d.tostring())
      buff.write(self.Control_Output.NE.tostring())
      buff.write(self.Control_Output.Thrust.tostring())
      buff.write(self.Control_Output.Throttle.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.Drone_State is None:
        self.Drone_State = outdoor_gcs.msg.DroneState()
      if self.Control_Command is None:
        self.Control_Command = outdoor_gcs.msg.ControlCommand()
      if self.Attitude_Reference is None:
        self.Attitude_Reference = outdoor_gcs.msg.AttitudeReference()
      if self.Control_Output is None:
        self.Control_Output = outdoor_gcs.msg.ControlOutput()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.time, _x.Drone_State.header.seq, _x.Drone_State.header.stamp.secs, _x.Drone_State.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Drone_State.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Drone_State.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.Drone_State.connected, _x.Drone_State.armed,) = _get_struct_2B().unpack(str[start:end])
      self.Drone_State.connected = bool(self.Drone_State.connected)
      self.Drone_State.armed = bool(self.Drone_State.armed)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Drone_State.mode = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Drone_State.mode = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.Drone_State.time_from_start, _x.Drone_State.longitude, _x.Drone_State.latitude,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.position = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Drone_State.velocity = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Drone_State.attitude = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      _x = self
      start = end
      end += 32
      (_x.Drone_State.attitude_q.x, _x.Drone_State.attitude_q.y, _x.Drone_State.attitude_q.z, _x.Drone_State.attitude_q.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 12
      self.Drone_State.attitude_rate = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Drone_State.acceleration = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Drone_State.payload_vel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Drone_State.payload_pos = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 16
      self.Drone_State.payload_quaternion = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      start = end
      end += 12
      self.Drone_State.payload_angular_vel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      _x = self
      start = end
      end += 21
      (_x.Drone_State.battery_voltage, _x.Drone_State.battery_remaining, _x.Drone_State.mocapOK, _x.Control_Command.header.seq, _x.Control_Command.header.stamp.secs, _x.Control_Command.header.stamp.nsecs,) = _get_struct_2fB3I().unpack(str[start:end])
      self.Drone_State.mocapOK = bool(self.Drone_State.mocapOK)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Control_Command.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Control_Command.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.Control_Command.Command_ID, _x.Control_Command.Mode, _x.Control_Command.Reference_State.header.seq, _x.Control_Command.Reference_State.header.stamp.secs, _x.Control_Command.Reference_State.header.stamp.nsecs,) = _get_struct_IB3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Control_Command.Reference_State.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Control_Command.Reference_State.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.Control_Command.Reference_State.time_from_start, _x.Control_Command.Reference_State.Sub_mode,) = _get_struct_fB().unpack(str[start:end])
      start = end
      end += 12
      self.Control_Command.Reference_State.position_ref = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Control_Command.Reference_State.velocity_ref = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Control_Command.Reference_State.acceleration_ref = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      _x = self
      start = end
      end += 24
      (_x.Control_Command.Reference_State.yaw_ref, _x.Control_Command.Reference_State.pitch_ref, _x.Control_Command.Reference_State.roll_ref, _x.Attitude_Reference.header.seq, _x.Attitude_Reference.header.stamp.secs, _x.Attitude_Reference.header.stamp.nsecs,) = _get_struct_3f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Attitude_Reference.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Attitude_Reference.header.frame_id = str[start:end]
      start = end
      end += 12
      self.Attitude_Reference.throttle_sp = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 4
      (self.Attitude_Reference.desired_throttle,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 12
      self.Attitude_Reference.desired_attitude = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      _x = self
      start = end
      end += 44
      (_x.Attitude_Reference.desired_att_q.x, _x.Attitude_Reference.desired_att_q.y, _x.Attitude_Reference.desired_att_q.z, _x.Attitude_Reference.desired_att_q.w, _x.Control_Output.header.seq, _x.Control_Output.header.stamp.secs, _x.Control_Output.header.stamp.nsecs,) = _get_struct_4d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Control_Output.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Control_Output.header.frame_id = str[start:end]
      start = end
      end += 12
      self.Control_Output.u_l = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Control_Output.u_d = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Control_Output.NE = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Control_Output.Thrust = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.Control_Output.Throttle = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_2fB3I = None
def _get_struct_2fB3I():
    global _struct_2fB3I
    if _struct_2fB3I is None:
        _struct_2fB3I = struct.Struct("<2fB3I")
    return _struct_2fB3I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_3f3I = None
def _get_struct_3f3I():
    global _struct_3f3I
    if _struct_3f3I is None:
        _struct_3f3I = struct.Struct("<3f3I")
    return _struct_3f3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_4d3I = None
def _get_struct_4d3I():
    global _struct_4d3I
    if _struct_4d3I is None:
        _struct_4d3I = struct.Struct("<4d3I")
    return _struct_4d3I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_IB3I = None
def _get_struct_IB3I():
    global _struct_IB3I
    if _struct_IB3I is None:
        _struct_IB3I = struct.Struct("<IB3I")
    return _struct_IB3I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
_struct_f3I = None
def _get_struct_f3I():
    global _struct_f3I
    if _struct_f3I is None:
        _struct_f3I = struct.Struct("<f3I")
    return _struct_f3I
_struct_fB = None
def _get_struct_fB():
    global _struct_fB
    if _struct_fB is None:
        _struct_fB = struct.Struct("<fB")
    return _struct_fB
