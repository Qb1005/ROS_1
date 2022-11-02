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


//-----------------------------------------------------------

class ChangeJointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group = null;
      this.joints_to_remove = null;
      this.joints_to_add = null;
    }
    else {
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('joints_to_remove')) {
        this.joints_to_remove = initObj.joints_to_remove
      }
      else {
        this.joints_to_remove = [];
      }
      if (initObj.hasOwnProperty('joints_to_add')) {
        this.joints_to_add = initObj.joints_to_add
      }
      else {
        this.joints_to_add = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeJointsRequest
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [joints_to_remove]
    bufferOffset = _arraySerializer.string(obj.joints_to_remove, buffer, bufferOffset, null);
    // Serialize message field [joints_to_add]
    bufferOffset = _arraySerializer.string(obj.joints_to_add, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeJointsRequest
    let len;
    let data = new ChangeJointsRequest(null);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joints_to_remove]
    data.joints_to_remove = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [joints_to_add]
    data.joints_to_add = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.group.length;
    object.joints_to_remove.forEach((val) => {
      length += 4 + val.length;
    });
    object.joints_to_add.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/ChangeJointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '973a28a7a5f5fe66851191cc72cc5580';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Empty if group shouldn't be changed, name of the group otherwise
    string group
    # List of joints not in a group to be removed from the motion
    string[] joints_to_remove
    # List of joints not in a group to be added to a motion
    string[] joints_to_add
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeJointsRequest(null);
    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.joints_to_remove !== undefined) {
      resolved.joints_to_remove = msg.joints_to_remove;
    }
    else {
      resolved.joints_to_remove = []
    }

    if (msg.joints_to_add !== undefined) {
      resolved.joints_to_add = msg.joints_to_add;
    }
    else {
      resolved.joints_to_add = []
    }

    return resolved;
    }
};

class ChangeJointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.message = null;
      this.current_group = null;
      this.used_joints = null;
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
      if (initObj.hasOwnProperty('current_group')) {
        this.current_group = initObj.current_group
      }
      else {
        this.current_group = '';
      }
      if (initObj.hasOwnProperty('used_joints')) {
        this.used_joints = initObj.used_joints
      }
      else {
        this.used_joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeJointsResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [current_group]
    bufferOffset = _serializer.string(obj.current_group, buffer, bufferOffset);
    // Serialize message field [used_joints]
    bufferOffset = _arraySerializer.string(obj.used_joints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeJointsResponse
    let len;
    let data = new ChangeJointsResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_group]
    data.current_group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [used_joints]
    data.used_joints = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += object.current_group.length;
    object.used_joints.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/ChangeJointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84aa9b65e836172877daea91a88d9de9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # True if no issues ocurred during the call
    bool ok
    # Error message in case an issue occurred during the call
    string message
    # Current group configuration
    string current_group
    # List of current active joints not in a group
    string[] used_joints 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeJointsResponse(null);
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

    if (msg.current_group !== undefined) {
      resolved.current_group = msg.current_group;
    }
    else {
      resolved.current_group = ''
    }

    if (msg.used_joints !== undefined) {
      resolved.used_joints = msg.used_joints;
    }
    else {
      resolved.used_joints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeJointsRequest,
  Response: ChangeJointsResponse,
  md5sum() { return '80789d75311b0b87f8012fc3ec0415aa'; },
  datatype() { return 'play_motion_builder_msgs/ChangeJoints'; }
};
