// Auto-generated. Do not edit!

// (in-package fundamentals.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TimePastRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('target_distance')) {
        this.target_distance = initObj.target_distance
      }
      else {
        this.target_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimePastRequest
    // Serialize message field [target_distance]
    bufferOffset = _serializer.float64(obj.target_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimePastRequest
    let len;
    let data = new TimePastRequest(null);
    // Deserialize message field [target_distance]
    data.target_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fundamentals/TimePastRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99cf60967b85886d96696de0f9b38d4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 target_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimePastRequest(null);
    if (msg.target_distance !== undefined) {
      resolved.target_distance = msg.target_distance;
    }
    else {
      resolved.target_distance = 0.0
    }

    return resolved;
    }
};

class TimePastResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_past = null;
    }
    else {
      if (initObj.hasOwnProperty('time_past')) {
        this.time_past = initObj.time_past
      }
      else {
        this.time_past = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimePastResponse
    // Serialize message field [time_past]
    bufferOffset = _serializer.float64(obj.time_past, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimePastResponse
    let len;
    let data = new TimePastResponse(null);
    // Deserialize message field [time_past]
    data.time_past = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fundamentals/TimePastResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12f537547d59039d230176ac3e51ac5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time_past
    
    # The ordering above is:
    # client request
    # server response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimePastResponse(null);
    if (msg.time_past !== undefined) {
      resolved.time_past = msg.time_past;
    }
    else {
      resolved.time_past = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: TimePastRequest,
  Response: TimePastResponse,
  md5sum() { return 'f6a073bb75b4f1328610282d59ded8da'; },
  datatype() { return 'fundamentals/TimePast'; }
};
