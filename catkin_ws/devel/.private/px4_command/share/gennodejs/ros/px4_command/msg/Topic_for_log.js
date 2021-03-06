// Auto-generated. Do not edit!

// (in-package px4_command.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DroneState = require('./DroneState.js');
let ControlCommand = require('./ControlCommand.js');
let AttitudeReference = require('./AttitudeReference.js');
let ControlOutput = require('./ControlOutput.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Topic_for_log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.Drone_State = null;
      this.Control_Command = null;
      this.Attitude_Reference = null;
      this.Control_Output = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('Drone_State')) {
        this.Drone_State = initObj.Drone_State
      }
      else {
        this.Drone_State = new DroneState();
      }
      if (initObj.hasOwnProperty('Control_Command')) {
        this.Control_Command = initObj.Control_Command
      }
      else {
        this.Control_Command = new ControlCommand();
      }
      if (initObj.hasOwnProperty('Attitude_Reference')) {
        this.Attitude_Reference = initObj.Attitude_Reference
      }
      else {
        this.Attitude_Reference = new AttitudeReference();
      }
      if (initObj.hasOwnProperty('Control_Output')) {
        this.Control_Output = initObj.Control_Output
      }
      else {
        this.Control_Output = new ControlOutput();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Topic_for_log
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [Drone_State]
    bufferOffset = DroneState.serialize(obj.Drone_State, buffer, bufferOffset);
    // Serialize message field [Control_Command]
    bufferOffset = ControlCommand.serialize(obj.Control_Command, buffer, bufferOffset);
    // Serialize message field [Attitude_Reference]
    bufferOffset = AttitudeReference.serialize(obj.Attitude_Reference, buffer, bufferOffset);
    // Serialize message field [Control_Output]
    bufferOffset = ControlOutput.serialize(obj.Control_Output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Topic_for_log
    let len;
    let data = new Topic_for_log(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Drone_State]
    data.Drone_State = DroneState.deserialize(buffer, bufferOffset);
    // Deserialize message field [Control_Command]
    data.Control_Command = ControlCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [Attitude_Reference]
    data.Attitude_Reference = AttitudeReference.deserialize(buffer, bufferOffset);
    // Deserialize message field [Control_Output]
    data.Control_Output = ControlOutput.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += DroneState.getMessageSize(object.Drone_State);
    length += ControlCommand.getMessageSize(object.Control_Command);
    length += AttitudeReference.getMessageSize(object.Attitude_Reference);
    length += ControlOutput.getMessageSize(object.Control_Output);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'px4_command/Topic_for_log';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d5a812650d243b5fcca43e9797b78b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    ## log??????
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
    MSG: px4_command/DroneState
    std_msgs/Header header
    
    ## ????????????????????????????????????true????????????false?????????
    bool connected
    ## ???????????????true???????????????false?????????
    bool armed
    ## PX4????????????????????????
    string mode
    
    ## ??????????????????
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
    MSG: px4_command/ControlCommand
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
    ================================================================================
    MSG: px4_command/AttitudeReference
    std_msgs/Header header
    
    ## ???????????????????????? ?????????????????????????????????
    float32[3] throttle_sp                 ## [0-1] ????????????????????????
    float32 desired_throttle               ## [0-1] ?????????z???
    float32[3] desired_attitude            ## [rad]
    geometry_msgs/Quaternion desired_att_q ## ?????????
    
    ================================================================================
    MSG: px4_command/ControlOutput
    std_msgs/Header header
    
    ## ???????????????????????? ?????????????????????????????????
    float32[3] u_l                 ## [0-1] ????????????????????????
    float32[3] u_d                 ## [rad]
    
    float32[3] NE                  ## [rad]
      
    float32[3] Thrust              ## [rad]  
    float32[3] Throttle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Topic_for_log(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.Drone_State !== undefined) {
      resolved.Drone_State = DroneState.Resolve(msg.Drone_State)
    }
    else {
      resolved.Drone_State = new DroneState()
    }

    if (msg.Control_Command !== undefined) {
      resolved.Control_Command = ControlCommand.Resolve(msg.Control_Command)
    }
    else {
      resolved.Control_Command = new ControlCommand()
    }

    if (msg.Attitude_Reference !== undefined) {
      resolved.Attitude_Reference = AttitudeReference.Resolve(msg.Attitude_Reference)
    }
    else {
      resolved.Attitude_Reference = new AttitudeReference()
    }

    if (msg.Control_Output !== undefined) {
      resolved.Control_Output = ControlOutput.Resolve(msg.Control_Output)
    }
    else {
      resolved.Control_Output = new ControlOutput()
    }

    return resolved;
    }
};

module.exports = Topic_for_log;
