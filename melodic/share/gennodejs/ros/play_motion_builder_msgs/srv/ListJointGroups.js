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

class ListJointGroupsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListJointGroupsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListJointGroupsRequest
    let len;
    let data = new ListJointGroupsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/ListJointGroupsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListJointGroupsRequest(null);
    return resolved;
    }
};

class ListJointGroupsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.groups = null;
      this.additional_joints = null;
      this.available_joints = null;
    }
    else {
      if (initObj.hasOwnProperty('groups')) {
        this.groups = initObj.groups
      }
      else {
        this.groups = [];
      }
      if (initObj.hasOwnProperty('additional_joints')) {
        this.additional_joints = initObj.additional_joints
      }
      else {
        this.additional_joints = [];
      }
      if (initObj.hasOwnProperty('available_joints')) {
        this.available_joints = initObj.available_joints
      }
      else {
        this.available_joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListJointGroupsResponse
    // Serialize message field [groups]
    bufferOffset = _arraySerializer.string(obj.groups, buffer, bufferOffset, null);
    // Serialize message field [additional_joints]
    bufferOffset = _arraySerializer.string(obj.additional_joints, buffer, bufferOffset, null);
    // Serialize message field [available_joints]
    bufferOffset = _arraySerializer.string(obj.available_joints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListJointGroupsResponse
    let len;
    let data = new ListJointGroupsResponse(null);
    // Deserialize message field [groups]
    data.groups = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [additional_joints]
    data.additional_joints = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [available_joints]
    data.available_joints = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.groups.forEach((val) => {
      length += 4 + val.length;
    });
    object.additional_joints.forEach((val) => {
      length += 4 + val.length;
    });
    object.available_joints.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_builder_msgs/ListJointGroupsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fdaed4e1eb95768801699335d06285a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of available groups
    string[] groups
    # List of joints not in any group
    string[] additional_joints
    # Complete list of joints (including those in a group)
    string[] available_joints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListJointGroupsResponse(null);
    if (msg.groups !== undefined) {
      resolved.groups = msg.groups;
    }
    else {
      resolved.groups = []
    }

    if (msg.additional_joints !== undefined) {
      resolved.additional_joints = msg.additional_joints;
    }
    else {
      resolved.additional_joints = []
    }

    if (msg.available_joints !== undefined) {
      resolved.available_joints = msg.available_joints;
    }
    else {
      resolved.available_joints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListJointGroupsRequest,
  Response: ListJointGroupsResponse,
  md5sum() { return '9fdaed4e1eb95768801699335d06285a'; },
  datatype() { return 'play_motion_builder_msgs/ListJointGroups'; }
};
