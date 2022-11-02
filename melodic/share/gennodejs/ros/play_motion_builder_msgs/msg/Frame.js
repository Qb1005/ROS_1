// Auto-generated. Do not edit!

// (in-package play_motion_builder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.time_from_last = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('time_from_last')) {
        this.time_from_last = initObj.time_from_last
      }
      else {
        this.time_from_last = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frame
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float64(obj.pose, buffer, bufferOffset, null);
    // Serialize message field [time_from_last]
    bufferOffset = _serializer.float32(obj.time_from_last, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frame
    let len;
    let data = new Frame(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [time_from_last]
    data.time_from_last = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.pose.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'play_motion_builder_msgs/Frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e413d8203e397a420aef72e551374ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Array with joint poses
    float64[] pose
    # Time since last Frame
    float32 time_from_last
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frame(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = []
    }

    if (msg.time_from_last !== undefined) {
      resolved.time_from_last = msg.time_from_last;
    }
    else {
      resolved.time_from_last = 0.0
    }

    return resolved;
    }
};

module.exports = Frame;
