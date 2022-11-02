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

class RunMotionGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.run_mode = null;
      this.downshift = null;
      this.step_id = null;
    }
    else {
      if (initObj.hasOwnProperty('run_mode')) {
        this.run_mode = initObj.run_mode
      }
      else {
        this.run_mode = 0;
      }
      if (initObj.hasOwnProperty('downshift')) {
        this.downshift = initObj.downshift
      }
      else {
        this.downshift = 0.0;
      }
      if (initObj.hasOwnProperty('step_id')) {
        this.step_id = initObj.step_id
      }
      else {
        this.step_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RunMotionGoal
    // Serialize message field [run_mode]
    bufferOffset = _serializer.uint8(obj.run_mode, buffer, bufferOffset);
    // Serialize message field [downshift]
    bufferOffset = _serializer.float32(obj.downshift, buffer, bufferOffset);
    // Serialize message field [step_id]
    bufferOffset = _serializer.uint16(obj.step_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunMotionGoal
    let len;
    let data = new RunMotionGoal(null);
    // Deserialize message field [run_mode]
    data.run_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [downshift]
    data.downshift = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [step_id]
    data.step_id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'play_motion_builder_msgs/RunMotionGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93fd2cd7e64669cfb4a792f5ad9e13ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Motion modes
    uint8 RUN_MOTION=0
    uint8 GO_TO_STEP=1
    
    uint8 run_mode
    # Factor by which to slow down the motion (only used if run_mode is RUN_MOTION)
    float32 downshift
    # Step id to which the robot will be moved (only used if run_mode is GO_TO_STEP)
    uint16 step_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RunMotionGoal(null);
    if (msg.run_mode !== undefined) {
      resolved.run_mode = msg.run_mode;
    }
    else {
      resolved.run_mode = 0
    }

    if (msg.downshift !== undefined) {
      resolved.downshift = msg.downshift;
    }
    else {
      resolved.downshift = 0.0
    }

    if (msg.step_id !== undefined) {
      resolved.step_id = msg.step_id;
    }
    else {
      resolved.step_id = 0
    }

    return resolved;
    }
};

// Constants for message
RunMotionGoal.Constants = {
  RUN_MOTION: 0,
  GO_TO_STEP: 1,
}

module.exports = RunMotionGoal;
