// Auto-generated. Do not edit!

// (in-package gpd.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GraspConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bottom = null;
      this.top = null;
      this.surface = null;
      this.approach = null;
      this.binormal = null;
      this.axis = null;
      this.sample = null;
      this.width = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('surface')) {
        this.surface = initObj.surface
      }
      else {
        this.surface = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('approach')) {
        this.approach = initObj.approach
      }
      else {
        this.approach = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('binormal')) {
        this.binormal = initObj.binormal
      }
      else {
        this.binormal = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('sample')) {
        this.sample = initObj.sample
      }
      else {
        this.sample = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspConfig
    // Serialize message field [bottom]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bottom, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.top, buffer, bufferOffset);
    // Serialize message field [surface]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.surface, buffer, bufferOffset);
    // Serialize message field [approach]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.approach, buffer, bufferOffset);
    // Serialize message field [binormal]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.binormal, buffer, bufferOffset);
    // Serialize message field [axis]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.axis, buffer, bufferOffset);
    // Serialize message field [sample]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.sample, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.width, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspConfig
    let len;
    let data = new GraspConfig(null);
    // Deserialize message field [bottom]
    data.bottom = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [surface]
    data.surface = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [approach]
    data.approach = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [binormal]
    data.binormal = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [axis]
    data.axis = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [sample]
    data.sample = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 176;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gpd/GraspConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e6b3c31591d4b0fc202f092dca68301';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes a 2-finger grasp configuration by its 6-DOF pose, 
    # consisting of a 3-DOF position and 3-DOF orientation, and the opening 
    # width of the robot hand.
    
    # Position
    geometry_msgs/Point bottom # centered bottom/base of the robot hand)
    geometry_msgs/Point top # centered top/fingertip of the robot hand)
    geometry_msgs/Point surface # centered position on object surface
    
    # Orientation represented as three axis (R = [approach binormal axis])
    geometry_msgs/Vector3 approach # The grasp approach direction
    geometry_msgs/Vector3 binormal # The binormal
    geometry_msgs/Vector3 axis # The hand axis
    
    geometry_msgs/Point sample # Point at which the grasp was found
    
    std_msgs/Float32 width # Required aperture (opening width) of the robot hand 
    
    std_msgs/Float32 score # Score assigned to the grasp by the classifier
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspConfig(null);
    if (msg.bottom !== undefined) {
      resolved.bottom = geometry_msgs.msg.Point.Resolve(msg.bottom)
    }
    else {
      resolved.bottom = new geometry_msgs.msg.Point()
    }

    if (msg.top !== undefined) {
      resolved.top = geometry_msgs.msg.Point.Resolve(msg.top)
    }
    else {
      resolved.top = new geometry_msgs.msg.Point()
    }

    if (msg.surface !== undefined) {
      resolved.surface = geometry_msgs.msg.Point.Resolve(msg.surface)
    }
    else {
      resolved.surface = new geometry_msgs.msg.Point()
    }

    if (msg.approach !== undefined) {
      resolved.approach = geometry_msgs.msg.Vector3.Resolve(msg.approach)
    }
    else {
      resolved.approach = new geometry_msgs.msg.Vector3()
    }

    if (msg.binormal !== undefined) {
      resolved.binormal = geometry_msgs.msg.Vector3.Resolve(msg.binormal)
    }
    else {
      resolved.binormal = new geometry_msgs.msg.Vector3()
    }

    if (msg.axis !== undefined) {
      resolved.axis = geometry_msgs.msg.Vector3.Resolve(msg.axis)
    }
    else {
      resolved.axis = new geometry_msgs.msg.Vector3()
    }

    if (msg.sample !== undefined) {
      resolved.sample = geometry_msgs.msg.Point.Resolve(msg.sample)
    }
    else {
      resolved.sample = new geometry_msgs.msg.Point()
    }

    if (msg.width !== undefined) {
      resolved.width = std_msgs.msg.Float32.Resolve(msg.width)
    }
    else {
      resolved.width = new std_msgs.msg.Float32()
    }

    if (msg.score !== undefined) {
      resolved.score = std_msgs.msg.Float32.Resolve(msg.score)
    }
    else {
      resolved.score = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = GraspConfig;
