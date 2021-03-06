// Auto-generated. Do not edit!

// (in-package px4_command.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryPoint = require('./TrajectoryPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Command_ID = null;
      this.Mode = null;
      this.Reference_State = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Command_ID')) {
        this.Command_ID = initObj.Command_ID
      }
      else {
        this.Command_ID = 0;
      }
      if (initObj.hasOwnProperty('Mode')) {
        this.Mode = initObj.Mode
      }
      else {
        this.Mode = 0;
      }
      if (initObj.hasOwnProperty('Reference_State')) {
        this.Reference_State = initObj.Reference_State
      }
      else {
        this.Reference_State = new TrajectoryPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Command_ID]
    bufferOffset = _serializer.uint32(obj.Command_ID, buffer, bufferOffset);
    // Serialize message field [Mode]
    bufferOffset = _serializer.uint8(obj.Mode, buffer, bufferOffset);
    // Serialize message field [Reference_State]
    bufferOffset = TrajectoryPoint.serialize(obj.Reference_State, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlCommand
    let len;
    let data = new ControlCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Command_ID]
    data.Command_ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Mode]
    data.Mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Reference_State]
    data.Reference_State = TrajectoryPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TrajectoryPoint.getMessageSize(object.Reference_State);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'px4_command/ControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5825d4d3402a7fd96de515173f6f5d19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    ## ????????????????????? ?????????????????????????????? ????????????????????????
    uint32 Command_ID
    
    ## ????????????????????? 
    uint8 Mode
    # enum Mode ??????????????????
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
    
    ## ??????????????? 
    ## ??????????????????????????????????????????????????????????????????????????????
    ## ??????????????????????????????????????????????????????????????????
    TrajectoryPoint Reference_State
    
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
    MSG: px4_command/TrajectoryPoint
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Command_ID !== undefined) {
      resolved.Command_ID = msg.Command_ID;
    }
    else {
      resolved.Command_ID = 0
    }

    if (msg.Mode !== undefined) {
      resolved.Mode = msg.Mode;
    }
    else {
      resolved.Mode = 0
    }

    if (msg.Reference_State !== undefined) {
      resolved.Reference_State = TrajectoryPoint.Resolve(msg.Reference_State)
    }
    else {
      resolved.Reference_State = new TrajectoryPoint()
    }

    return resolved;
    }
};

// Constants for message
ControlCommand.Constants = {
  IDLE: 0,
  TAKEOFF: 1,
  MOVE_ENU: 2,
  MOVE_BODY: 3,
  HOLD: 4,
  LAND: 5,
  DISARM: 6,
  PAYLOAD_STABILIZATION_SINGLEUAV: 7,
  TRAJECTORY_TRACKING: 8,
  PAYLOAD_STABILIZATION: 9,
  PAYLOAD_LAND: 10,
}

module.exports = ControlCommand;
