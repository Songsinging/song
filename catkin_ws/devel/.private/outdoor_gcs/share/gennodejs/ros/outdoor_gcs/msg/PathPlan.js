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

class PathPlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.alg = null;
      this.num = null;
      this.uavs_id = null;
      this.start = null;
      this.cur_position = null;
      this.des_position = null;
      this.nxt_position = null;
      this.cur_velocity = null;
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('alg')) {
        this.alg = initObj.alg
      }
      else {
        this.alg = '';
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('uavs_id')) {
        this.uavs_id = initObj.uavs_id
      }
      else {
        this.uavs_id = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = false;
      }
      if (initObj.hasOwnProperty('cur_position')) {
        this.cur_position = initObj.cur_position
      }
      else {
        this.cur_position = new Array(27).fill(0);
      }
      if (initObj.hasOwnProperty('des_position')) {
        this.des_position = initObj.des_position
      }
      else {
        this.des_position = new Array(27).fill(0);
      }
      if (initObj.hasOwnProperty('nxt_position')) {
        this.nxt_position = initObj.nxt_position
      }
      else {
        this.nxt_position = new Array(27).fill(0);
      }
      if (initObj.hasOwnProperty('cur_velocity')) {
        this.cur_velocity = initObj.cur_velocity
      }
      else {
        this.cur_velocity = new Array(27).fill(0);
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [alg]
    bufferOffset = _serializer.string(obj.alg, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.int8(obj.num, buffer, bufferOffset);
    // Check that the constant length array field [uavs_id] has the right length
    if (obj.uavs_id.length !== 9) {
      throw new Error('Unable to serialize array field uavs_id - length must be 9')
    }
    // Serialize message field [uavs_id]
    bufferOffset = _arraySerializer.bool(obj.uavs_id, buffer, bufferOffset, 9);
    // Serialize message field [start]
    bufferOffset = _serializer.bool(obj.start, buffer, bufferOffset);
    // Check that the constant length array field [cur_position] has the right length
    if (obj.cur_position.length !== 27) {
      throw new Error('Unable to serialize array field cur_position - length must be 27')
    }
    // Serialize message field [cur_position]
    bufferOffset = _arraySerializer.float64(obj.cur_position, buffer, bufferOffset, 27);
    // Check that the constant length array field [des_position] has the right length
    if (obj.des_position.length !== 27) {
      throw new Error('Unable to serialize array field des_position - length must be 27')
    }
    // Serialize message field [des_position]
    bufferOffset = _arraySerializer.float64(obj.des_position, buffer, bufferOffset, 27);
    // Check that the constant length array field [nxt_position] has the right length
    if (obj.nxt_position.length !== 27) {
      throw new Error('Unable to serialize array field nxt_position - length must be 27')
    }
    // Serialize message field [nxt_position]
    bufferOffset = _arraySerializer.float64(obj.nxt_position, buffer, bufferOffset, 27);
    // Check that the constant length array field [cur_velocity] has the right length
    if (obj.cur_velocity.length !== 27) {
      throw new Error('Unable to serialize array field cur_velocity - length must be 27')
    }
    // Serialize message field [cur_velocity]
    bufferOffset = _arraySerializer.float64(obj.cur_velocity, buffer, bufferOffset, 27);
    // Check that the constant length array field [params] has the right length
    if (obj.params.length !== 10) {
      throw new Error('Unable to serialize array field params - length must be 10')
    }
    // Serialize message field [params]
    bufferOffset = _arraySerializer.float64(obj.params, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlan
    let len;
    let data = new PathPlan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [alg]
    data.alg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [uavs_id]
    data.uavs_id = _arrayDeserializer.bool(buffer, bufferOffset, 9)
    // Deserialize message field [start]
    data.start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cur_position]
    data.cur_position = _arrayDeserializer.float64(buffer, bufferOffset, 27)
    // Deserialize message field [des_position]
    data.des_position = _arrayDeserializer.float64(buffer, bufferOffset, 27)
    // Deserialize message field [nxt_position]
    data.nxt_position = _arrayDeserializer.float64(buffer, bufferOffset, 27)
    // Deserialize message field [cur_velocity]
    data.cur_velocity = _arrayDeserializer.float64(buffer, bufferOffset, 27)
    // Deserialize message field [params]
    data.params = _arrayDeserializer.float64(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.alg.length;
    return length + 959;
  }

  static datatype() {
    // Returns string type for a message object
    return 'outdoor_gcs/PathPlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd0ba91e4fa13527e6deb13cd9ac383a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header   
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathPlan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.alg !== undefined) {
      resolved.alg = msg.alg;
    }
    else {
      resolved.alg = ''
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.uavs_id !== undefined) {
      resolved.uavs_id = msg.uavs_id;
    }
    else {
      resolved.uavs_id = new Array(9).fill(0)
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = false
    }

    if (msg.cur_position !== undefined) {
      resolved.cur_position = msg.cur_position;
    }
    else {
      resolved.cur_position = new Array(27).fill(0)
    }

    if (msg.des_position !== undefined) {
      resolved.des_position = msg.des_position;
    }
    else {
      resolved.des_position = new Array(27).fill(0)
    }

    if (msg.nxt_position !== undefined) {
      resolved.nxt_position = msg.nxt_position;
    }
    else {
      resolved.nxt_position = new Array(27).fill(0)
    }

    if (msg.cur_velocity !== undefined) {
      resolved.cur_velocity = msg.cur_velocity;
    }
    else {
      resolved.cur_velocity = new Array(27).fill(0)
    }

    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = new Array(10).fill(0)
    }

    return resolved;
    }
};

module.exports = PathPlan;
