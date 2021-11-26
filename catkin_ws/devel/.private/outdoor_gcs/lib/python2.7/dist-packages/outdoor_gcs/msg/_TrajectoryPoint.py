# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from outdoor_gcs/TrajectoryPoint.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class TrajectoryPoint(genpy.Message):
  _md5sum = "2f392e7a4c642ede78d900366dcf5edf"
  _type = "outdoor_gcs/TrajectoryPoint"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

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
"""
  # Pseudo-constants
  XYZ_POS = 0
  XY_POS_Z_VEL = 1
  XY_VEL_Z_POS = 2
  XY_VEL_Z_VEL = 3

  __slots__ = ['header','time_from_start','Sub_mode','position_ref','velocity_ref','acceleration_ref','yaw_ref','pitch_ref','roll_ref']
  _slot_types = ['std_msgs/Header','float32','uint8','float32[3]','float32[3]','float32[3]','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,time_from_start,Sub_mode,position_ref,velocity_ref,acceleration_ref,yaw_ref,pitch_ref,roll_ref

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrajectoryPoint, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.time_from_start is None:
        self.time_from_start = 0.
      if self.Sub_mode is None:
        self.Sub_mode = 0
      if self.position_ref is None:
        self.position_ref = [0.] * 3
      if self.velocity_ref is None:
        self.velocity_ref = [0.] * 3
      if self.acceleration_ref is None:
        self.acceleration_ref = [0.] * 3
      if self.yaw_ref is None:
        self.yaw_ref = 0.
      if self.pitch_ref is None:
        self.pitch_ref = 0.
      if self.roll_ref is None:
        self.roll_ref = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.time_from_start = 0.
      self.Sub_mode = 0
      self.position_ref = [0.] * 3
      self.velocity_ref = [0.] * 3
      self.acceleration_ref = [0.] * 3
      self.yaw_ref = 0.
      self.pitch_ref = 0.
      self.roll_ref = 0.

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
      buff.write(_get_struct_fB().pack(_x.time_from_start, _x.Sub_mode))
      buff.write(_get_struct_3f().pack(*self.position_ref))
      buff.write(_get_struct_3f().pack(*self.velocity_ref))
      buff.write(_get_struct_3f().pack(*self.acceleration_ref))
      _x = self
      buff.write(_get_struct_3f().pack(_x.yaw_ref, _x.pitch_ref, _x.roll_ref))
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
      end += 5
      (_x.time_from_start, _x.Sub_mode,) = _get_struct_fB().unpack(str[start:end])
      start = end
      end += 12
      self.position_ref = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.velocity_ref = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.acceleration_ref = _get_struct_3f().unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.yaw_ref, _x.pitch_ref, _x.roll_ref,) = _get_struct_3f().unpack(str[start:end])
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
      buff.write(_get_struct_fB().pack(_x.time_from_start, _x.Sub_mode))
      buff.write(self.position_ref.tostring())
      buff.write(self.velocity_ref.tostring())
      buff.write(self.acceleration_ref.tostring())
      _x = self
      buff.write(_get_struct_3f().pack(_x.yaw_ref, _x.pitch_ref, _x.roll_ref))
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
      end += 5
      (_x.time_from_start, _x.Sub_mode,) = _get_struct_fB().unpack(str[start:end])
      start = end
      end += 12
      self.position_ref = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.velocity_ref = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.acceleration_ref = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      _x = self
      start = end
      end += 12
      (_x.yaw_ref, _x.pitch_ref, _x.roll_ref,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
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
_struct_fB = None
def _get_struct_fB():
    global _struct_fB
    if _struct_fB is None:
        _struct_fB = struct.Struct("<fB")
    return _struct_fB
