// Auto-generated. Do not edit!

// (in-package outdoor_gcs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_from_start = null;
      this.Sub_mode = null;
      this.position_ref = null;
      this.velocity_ref = null;
      this.acceleration_ref = null;
      this.yaw_ref = null;
      this.pitch_ref = null;
      this.roll_ref = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_from_start')) {
        this.time_from_start = initObj.time_from_start
      }
      else {
        this.time_from_start = 0.0;
      }
      if (initObj.hasOwnProperty('Sub_mode')) {
        this.Sub_mode = initObj.Sub_mode
      }
      else {
        this.Sub_mode = 0;
      }
      if (initObj.hasOwnProperty('position_ref')) {
        this.position_ref = initObj.position_ref
      }
      else {
        this.position_ref = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('velocity_ref')) {
        this.velocity_ref = initObj.velocity_ref
      }
      else {
        this.velocity_ref = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('acceleration_ref')) {
        this.acceleration_ref = initObj.acceleration_ref
      }
      else {
        this.acceleration_ref = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('yaw_ref')) {
        this.yaw_ref = initObj.yaw_ref
      }
      else {
        this.yaw_ref = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_ref')) {
        this.pitch_ref = initObj.pitch_ref
      }
      else {
        this.pitch_ref = 0.0;
      }
      if (initObj.hasOwnProperty('roll_ref')) {
        this.roll_ref = initObj.roll_ref
      }
      else {
        this.roll_ref = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_from_start]
    bufferOffset = _serializer.float32(obj.time_from_start, buffer, bufferOffset);
    // Serialize message field [Sub_mode]
    bufferOffset = _serializer.uint8(obj.Sub_mode, buffer, bufferOffset);
    // Check that the constant length array field [position_ref] has the right length
    if (obj.position_ref.length !== 3) {
      throw new Error('Unable to serialize array field position_ref - length must be 3')
    }
    // Serialize message field [position_ref]
    bufferOffset = _arraySerializer.float32(obj.position_ref, buffer, bufferOffset, 3);
    // Check that the constant length array field [velocity_ref] has the right length
    if (obj.velocity_ref.length !== 3) {
      throw new Error('Unable to serialize array field velocity_ref - length must be 3')
    }
    // Serialize message field [velocity_ref]
    bufferOffset = _arraySerializer.float32(obj.velocity_ref, buffer, bufferOffset, 3);
    // Check that the constant length array field [acceleration_ref] has the right length
    if (obj.acceleration_ref.length !== 3) {
      throw new Error('Unable to serialize array field acceleration_ref - length must be 3')
    }
    // Serialize message field [acceleration_ref]
    bufferOffset = _arraySerializer.float32(obj.acceleration_ref, buffer, bufferOffset, 3);
    // Serialize message field [yaw_ref]
    bufferOffset = _serializer.float32(obj.yaw_ref, buffer, bufferOffset);
    // Serialize message field [pitch_ref]
    bufferOffset = _serializer.float32(obj.pitch_ref, buffer, bufferOffset);
    // Serialize message field [roll_ref]
    bufferOffset = _serializer.float32(obj.roll_ref, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_from_start]
    data.time_from_start = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Sub_mode]
    data.Sub_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_ref]
    data.position_ref = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [velocity_ref]
    data.velocity_ref = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [acceleration_ref]
    data.acceleration_ref = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [yaw_ref]
    data.yaw_ref = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_ref]
    data.pitch_ref = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_ref]
    data.roll_ref = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'outdoor_gcs/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f392e7a4c642ede78d900366dcf5edf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    ## ????????? ??????????????????
    float32 time_from_start          ## [s]
    
    # sub_mode 2-bit value:
    # 0 for position, 1 for vel, 1st for xy, 2nd for z.
    #                   xy position     xy velocity
    # z position       	0b00(0)       0b10(2)
    # z velocity		0b01(1)       0b11(3)
    #
    ## ???????????????????????? 
    ## ???????????? ??????????????????????????????????????????????????????
    ## ????????? XYZ?????????????????? ???sub_mode = 0?????? ??????????????????????????????????????????????????????????????????????????????
    uint8 Sub_mode
    # enum sub_mode
    uint8 XYZ_POS = 0
    uint8 XY_POS_Z_VEL = 1
    uint8 XY_VEL_Z_POS = 2
    uint8 XY_VEL_Z_VEL = 3
    
    ## ????????????????????????????????????????????????????????????????????????
    float32[3] position_ref          ## [m]
    float32[3] velocity_ref          ## [m/s]
    float32[3] acceleration_ref      ## [m/s^2]
    ## float32[3] jerk_ref              ## [m/s^3]
    ## float32[3] snap_ref              ## [m/s^4]
    
    ## ??????????????????????????????????????????????????????????????????
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryPoint(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_from_start !== undefined) {
      resolved.time_from_start = msg.time_from_start;
    }
    else {
      resolved.time_from_start = 0.0
    }

    if (msg.Sub_mode !== undefined) {
      resolved.Sub_mode = msg.Sub_mode;
    }
    else {
      resolved.Sub_mode = 0
    }

    if (msg.position_ref !== undefined) {
      resolved.position_ref = msg.position_ref;
    }
    else {
      resolved.position_ref = new Array(3).fill(0)
    }

    if (msg.velocity_ref !== undefined) {
      resolved.velocity_ref = msg.velocity_ref;
    }
    else {
      resolved.velocity_ref = new Array(3).fill(0)
    }

    if (msg.acceleration_ref !== undefined) {
      resolved.acceleration_ref = msg.acceleration_ref;
    }
    else {
      resolved.acceleration_ref = new Array(3).fill(0)
    }

    if (msg.yaw_ref !== undefined) {
      resolved.yaw_ref = msg.yaw_ref;
    }
    else {
      resolved.yaw_ref = 0.0
    }

    if (msg.pitch_ref !== undefined) {
      resolved.pitch_ref = msg.pitch_ref;
    }
    else {
      resolved.pitch_ref = 0.0
    }

    if (msg.roll_ref !== undefined) {
      resolved.roll_ref = msg.roll_ref;
    }
    else {
      resolved.roll_ref = 0.0
    }

    return resolved;
    }
};

// Constants for message
TrajectoryPoint.Constants = {
  XYZ_POS: 0,
  XY_POS_Z_VEL: 1,
  XY_VEL_Z_POS: 2,
  XY_VEL_Z_VEL: 3,
}

module.exports = TrajectoryPoint;
