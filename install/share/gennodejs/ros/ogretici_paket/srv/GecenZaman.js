// Auto-generated. Do not edit!

// (in-package ogretici_paket.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GecenZamanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hedef_konum = null;
    }
    else {
      if (initObj.hasOwnProperty('hedef_konum')) {
        this.hedef_konum = initObj.hedef_konum
      }
      else {
        this.hedef_konum = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GecenZamanRequest
    // Serialize message field [hedef_konum]
    bufferOffset = _serializer.float64(obj.hedef_konum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GecenZamanRequest
    let len;
    let data = new GecenZamanRequest(null);
    // Deserialize message field [hedef_konum]
    data.hedef_konum = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ogretici_paket/GecenZamanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcd2cdadb1abf087165cc2ac6740489f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 hedef_konum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GecenZamanRequest(null);
    if (msg.hedef_konum !== undefined) {
      resolved.hedef_konum = msg.hedef_konum;
    }
    else {
      resolved.hedef_konum = 0.0
    }

    return resolved;
    }
};

class GecenZamanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gecen_sure = null;
    }
    else {
      if (initObj.hasOwnProperty('gecen_sure')) {
        this.gecen_sure = initObj.gecen_sure
      }
      else {
        this.gecen_sure = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GecenZamanResponse
    // Serialize message field [gecen_sure]
    bufferOffset = _serializer.float64(obj.gecen_sure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GecenZamanResponse
    let len;
    let data = new GecenZamanResponse(null);
    // Deserialize message field [gecen_sure]
    data.gecen_sure = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ogretici_paket/GecenZamanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc3e0f4d7e25e21dd2c6eae38526dccd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 gecen_sure
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GecenZamanResponse(null);
    if (msg.gecen_sure !== undefined) {
      resolved.gecen_sure = msg.gecen_sure;
    }
    else {
      resolved.gecen_sure = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GecenZamanRequest,
  Response: GecenZamanResponse,
  md5sum() { return 'd89a3e566b5de459800ae97d9237aa5b'; },
  datatype() { return 'ogretici_paket/GecenZaman'; }
};
