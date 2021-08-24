// Auto-generated. Do not edit!

// (in-package simple_applications.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Distance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.amount = null;
    }
    else {
      if (initObj.hasOwnProperty('amount')) {
        this.amount = initObj.amount
      }
      else {
        this.amount = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Distance
    // Serialize message field [amount]
    bufferOffset = _serializer.float64(obj.amount, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Distance
    let len;
    let data = new Distance(null);
    // Deserialize message field [amount]
    data.amount = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simple_applications/Distance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6816fb13cdadc51f50a8e1a596fde6dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 amount
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Distance(null);
    if (msg.amount !== undefined) {
      resolved.amount = msg.amount;
    }
    else {
      resolved.amount = 0.0
    }

    return resolved;
    }
};

module.exports = Distance;
