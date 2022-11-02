// Auto-generated. Do not edit!

// (in-package play_motion_builder_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Motion = require('../msg/Motion.js');

//-----------------------------------------------------------

class EditMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.step_id = null;
      this.action = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('step_id')) {
        this.step_id = initObj.step_id
      }
      else {
        this.step_id = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EditMotionRequest
    // Serialize message field [step_id]
    bufferOffset = _serializer.uint16(obj.step_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditMotionRequest
    let len;
    let data = new EditMotionRequest(null);
    // Deserialize message field [step_id]
    data.step_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/EditMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '994d269af2f608a6b9a823b10da14d7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definitions of actions
    uint8 LIST=0
    uint8 APPEND=1
    uint8 EDIT=2
    uint8 COPY_AS_NEXT=3
    uint8 COPY_AS_LAST=4
    uint8 REMOVE=5
    uint8 EDIT_TIME=6
    
    # Step id for the step to which the action should be applied
    uint16 step_id
    # Action to execute
    uint8 action
    # Time to be set (only used if action is EDIT_TIME)
    float32 time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EditMotionRequest(null);
    if (msg.step_id !== undefined) {
      resolved.step_id = msg.step_id;
    }
    else {
      resolved.step_id = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

// Constants for message
EditMotionRequest.Constants = {
  LIST: 0,
  APPEND: 1,
  EDIT: 2,
  COPY_AS_NEXT: 3,
  COPY_AS_LAST: 4,
  REMOVE: 5,
  EDIT_TIME: 6,
}

class EditMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.message = null;
      this.motion = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('motion')) {
        this.motion = initObj.motion
      }
      else {
        this.motion = new Motion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EditMotionResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [motion]
    bufferOffset = Motion.serialize(obj.motion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditMotionResponse
    let len;
    let data = new EditMotionResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motion]
    data.motion = Motion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += Motion.getMessageSize(object.motion);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/EditMotionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8977f11190208bf644de5781a8adaa9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # True if no issues ocurred during the call
    bool ok
    # Error message in case an issue occurred during the call
    string message
    # Current state of the motion
    play_motion_builder_msgs/Motion motion
    
    
    ================================================================================
    MSG: play_motion_builder_msgs/Motion
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
    const resolved = new EditMotionResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.motion !== undefined) {
      resolved.motion = Motion.Resolve(msg.motion)
    }
    else {
      resolved.motion = new Motion()
    }

    return resolved;
    }
};

module.exports = {
  Request: EditMotionRequest,
  Response: EditMotionResponse,
  md5sum() { return '85e84c3afe79c9be731c7f83946f6b7b'; },
  datatype() { return 'play_motion_builder_msgs/EditMotion'; }
};
