// Auto-generated. Do not edit!

// (in-package fundamentals.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MissionStatusFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ratio = null;
    }
    else {
      if (initObj.hasOwnProperty('ratio')) {
        this.ratio = initObj.ratio
      }
      else {
        this.ratio = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionStatusFeedback
    // Serialize message field [ratio]
    bufferOffset = _serializer.string(obj.ratio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionStatusFeedback
    let len;
    let data = new MissionStatusFeedback(null);
    // Deserialize message field [ratio]
    data.ratio = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ratio);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fundamentals/MissionStatusFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d421494c6ac860ca5661fb574da8e84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    string ratio
    
    # The ordering above is:
    # client request
    # server response
    # action feedback
    
    # When you `catkin_make` and `catkin_make install` after creating this file,
    # you will have created 7 different .msg and .h files named:
    # MissionStatus
    # MissionStatusGoal
    # MissionStatusResult
    # MissionStatusFeedback
    # MissionStatusAction
    # MissionStatusActionResult
    # MissionStatusActionFeedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionStatusFeedback(null);
    if (msg.ratio !== undefined) {
      resolved.ratio = msg.ratio;
    }
    else {
      resolved.ratio = ''
    }

    return resolved;
    }
};

module.exports = MissionStatusFeedback;
