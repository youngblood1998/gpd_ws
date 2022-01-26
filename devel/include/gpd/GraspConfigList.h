// Generated by gencpp from file gpd/GraspConfigList.msg
// DO NOT EDIT!


#ifndef GPD_MESSAGE_GRASPCONFIGLIST_H
#define GPD_MESSAGE_GRASPCONFIGLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <gpd/GraspConfig.h>

namespace gpd
{
template <class ContainerAllocator>
struct GraspConfigList_
{
  typedef GraspConfigList_<ContainerAllocator> Type;

  GraspConfigList_()
    : header()
    , grasps()  {
    }
  GraspConfigList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , grasps(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::gpd::GraspConfig_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::gpd::GraspConfig_<ContainerAllocator> >::other >  _grasps_type;
  _grasps_type grasps;





  typedef boost::shared_ptr< ::gpd::GraspConfigList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gpd::GraspConfigList_<ContainerAllocator> const> ConstPtr;

}; // struct GraspConfigList_

typedef ::gpd::GraspConfigList_<std::allocator<void> > GraspConfigList;

typedef boost::shared_ptr< ::gpd::GraspConfigList > GraspConfigListPtr;
typedef boost::shared_ptr< ::gpd::GraspConfigList const> GraspConfigListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gpd::GraspConfigList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gpd::GraspConfigList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gpd

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'gpd': ['/home/jay/gpd_ws/src/gpd/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gpd::GraspConfigList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gpd::GraspConfigList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gpd::GraspConfigList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gpd::GraspConfigList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gpd::GraspConfigList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gpd::GraspConfigList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gpd::GraspConfigList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e1675cb2ef4eacde35945da8d7b8c6f";
  }

  static const char* value(const ::gpd::GraspConfigList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e1675cb2ef4eacdULL;
  static const uint64_t static_value2 = 0xe35945da8d7b8c6fULL;
};

template<class ContainerAllocator>
struct DataType< ::gpd::GraspConfigList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gpd/GraspConfigList";
  }

  static const char* value(const ::gpd::GraspConfigList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gpd::GraspConfigList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message stores a list of grasp configurations.\n\
\n\
# The time of acquisition, and the coordinate frame ID.\n\
Header header\n\
\n\
# The list of grasp configurations.\n\
gpd/GraspConfig[] grasps\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: gpd/GraspConfig\n\
# This message describes a 2-finger grasp configuration by its 6-DOF pose, \n\
# consisting of a 3-DOF position and 3-DOF orientation, and the opening \n\
# width of the robot hand.\n\
\n\
# Position\n\
geometry_msgs/Point bottom # centered bottom/base of the robot hand)\n\
geometry_msgs/Point top # centered top/fingertip of the robot hand)\n\
geometry_msgs/Point surface # centered position on object surface\n\
\n\
# Orientation represented as three axis (R = [approach binormal axis])\n\
geometry_msgs/Vector3 approach # The grasp approach direction\n\
geometry_msgs/Vector3 binormal # The binormal\n\
geometry_msgs/Vector3 axis # The hand axis\n\
\n\
geometry_msgs/Point sample # Point at which the grasp was found\n\
\n\
std_msgs/Float32 width # Required aperture (opening width) of the robot hand \n\
\n\
std_msgs/Float32 score # Score assigned to the grasp by the classifier\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: std_msgs/Float32\n\
float32 data\n\
";
  }

  static const char* value(const ::gpd::GraspConfigList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gpd::GraspConfigList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.grasps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GraspConfigList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gpd::GraspConfigList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gpd::GraspConfigList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "grasps[]" << std::endl;
    for (size_t i = 0; i < v.grasps.size(); ++i)
    {
      s << indent << "  grasps[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::gpd::GraspConfig_<ContainerAllocator> >::stream(s, indent + "    ", v.grasps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPD_MESSAGE_GRASPCONFIGLIST_H