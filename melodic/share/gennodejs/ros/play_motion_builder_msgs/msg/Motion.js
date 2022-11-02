// Auto-generated. Do not edit!

// (in-package play_motion_builder_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Frame = require('./Frame.js');

//-----------------------------------------------------------

class Motion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.keyframes = null;
      this.used_group = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('keyframes')) {
        this.keyframes = initObj.keyframes
      }
      else {
        this.keyframes = [];
      }
      if (initObj.hasOwnProperty('used_group')) {
        this.used_group = initObj.used_group
      }
      else {
        this.used_group = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motion
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.string(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [keyframes]
    // Serialize the length for message field [keyframes]
    bufferOffset = _serializer.uint32(obj.keyframes.length, buffer, bufferOffset);
    obj.keyframes.forEach((val) => {
      bufferOffset = Frame.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [used_group]
    bufferOffset = _serializer.string(obj.used_group, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motion
    let len;
    let data = new Motion(null);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [keyframes]
    // Deserialize array length for message field [keyframes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keyframes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keyframes[i] = Frame.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [used_group]
    data.used_group = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joints.forEach((val) => {
      length += 4 + val.length;
    });
    object.keyframes.forEach((val) => {
      length += Frame.getMessageSize(val);
    });
    length += object.used_group.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'play_motion_builder_msgs/Motion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0cd6cb21dc200c52ee3c8d281eccf636';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of joint names, keyframe positions are ordered based on this list
    string[] joints
    # List of Frames
    play_motion_builder_msgs/Frame[] keyframes
    # Name of the joint group used during this motion
    string used_group
    
    ================================================================================
    MSG: play_motion_builder_msgs/Frame
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
    const resolved = new Motion(null);
    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.keyframes !== undefined) {
      resolved.keyframes = new Array(msg.keyframes.length);
      for (let i = 0; i < resolved.keyframes.length; ++i) {
        resolved.keyframes[i] = Frame.Resolve(msg.keyframes[i]);
      }
    }
    else {
      resolved.keyframes = []
    }

    if (msg.used_group !== undefined) {
      resolved.used_group = msg.used_group;
    }
    else {
      resolved.used_group = ''
    }

    return resolved;
    }
};

module.exports = Motion;
