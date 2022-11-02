// Auto-generated. Do not edit!

// (in-package play_motion_builder_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Meta = require('../msg/Meta.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StoreMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_path = null;
      this.ros_name = null;
      this.meta = null;
    }
    else {
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
      if (initObj.hasOwnProperty('ros_name')) {
        this.ros_name = initObj.ros_name
      }
      else {
        this.ros_name = '';
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new Meta();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StoreMotionRequest
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    // Serialize message field [ros_name]
    bufferOffset = _serializer.string(obj.ros_name, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = Meta.serialize(obj.meta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StoreMotionRequest
    let len;
    let data = new StoreMotionRequest(null);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ros_name]
    data.ros_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = Meta.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_path.length;
    length += object.ros_name.length;
    length += Meta.getMessageSize(object.meta);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/StoreMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e011623bacdee6d99901579b964c8623';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Path to where the file should be stored (if wmpty no file is stored)
    string file_path
    # Parameter name assigned to the motion
    string ros_name
    # Metadata of the motion
    play_motion_builder_msgs/Meta meta
    
    ================================================================================
    MSG: play_motion_builder_msgs/Meta
    # Human-readable name for the motion
    string name
    # Keywords to identify purpose of the motion
    string usage
    # Short description of the motion
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StoreMotionRequest(null);
    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    if (msg.ros_name !== undefined) {
      resolved.ros_name = msg.ros_name;
    }
    else {
      resolved.ros_name = ''
    }

    if (msg.meta !== undefined) {
      resolved.meta = Meta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new Meta()
    }

    return resolved;
    }
};

class StoreMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StoreMotionResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StoreMotionResponse
    let len;
    let data = new StoreMotionResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/StoreMotionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6fcb3b1ed8c7743c7fb7d5bcca28513';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # True if no issues occured
    bool ok
    # If an error has occurred information on the error, otherwise 
    # this field will contain the data written to the file in string format
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StoreMotionResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: StoreMotionRequest,
  Response: StoreMotionResponse,
  md5sum() { return '878970372ab61349ab9cd98973b0ae49'; },
  datatype() { return 'play_motion_builder_msgs/StoreMotion'; }
};
