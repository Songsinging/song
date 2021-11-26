// Generated by gencpp from file px4_command/PayloadPoseCommand.msg
// DO NOT EDIT!


#ifndef PX4_COMMAND_MESSAGE_PAYLOADPOSECOMMAND_H
#define PX4_COMMAND_MESSAGE_PAYLOADPOSECOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace px4_command
{
template <class ContainerAllocator>
struct PayloadPoseCommand_
{
  typedef PayloadPoseCommand_<ContainerAllocator> Type;

  PayloadPoseCommand_()
    : header()
    , Command_ID(0)
    , x_ref(0.0)
    , y_ref(0.0)
    , z_ref(0.0)
    , roll_ref(0.0)
    , pitch_ref(0.0)
    , yaw_ref(0.0)  {
    }
  PayloadPoseCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Command_ID(0)
    , x_ref(0.0)
    , y_ref(0.0)
    , z_ref(0.0)
    , roll_ref(0.0)
    , pitch_ref(0.0)
    , yaw_ref(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _Command_ID_type;
  _Command_ID_type Command_ID;

   typedef float _x_ref_type;
  _x_ref_type x_ref;

   typedef float _y_ref_type;
  _y_ref_type y_ref;

   typedef float _z_ref_type;
  _z_ref_type z_ref;

   typedef float _roll_ref_type;
  _roll_ref_type roll_ref;

   typedef float _pitch_ref_type;
  _pitch_ref_type pitch_ref;

   typedef float _yaw_ref_type;
  _yaw_ref_type yaw_ref;





  typedef boost::shared_ptr< ::px4_command::PayloadPoseCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::px4_command::PayloadPoseCommand_<ContainerAllocator> const> ConstPtr;

}; // struct PayloadPoseCommand_

typedef ::px4_command::PayloadPoseCommand_<std::allocator<void> > PayloadPoseCommand;

typedef boost::shared_ptr< ::px4_command::PayloadPoseCommand > PayloadPoseCommandPtr;
typedef boost::shared_ptr< ::px4_command::PayloadPoseCommand const> PayloadPoseCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::px4_command::PayloadPoseCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::px4_command::PayloadPoseCommand_<ContainerAllocator1> & lhs, const ::px4_command::PayloadPoseCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.Command_ID == rhs.Command_ID &&
    lhs.x_ref == rhs.x_ref &&
    lhs.y_ref == rhs.y_ref &&
    lhs.z_ref == rhs.z_ref &&
    lhs.roll_ref == rhs.roll_ref &&
    lhs.pitch_ref == rhs.pitch_ref &&
    lhs.yaw_ref == rhs.yaw_ref;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::px4_command::PayloadPoseCommand_<ContainerAllocator1> & lhs, const ::px4_command::PayloadPoseCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace px4_command

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::px4_command::PayloadPoseCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::px4_command::PayloadPoseCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::px4_command::PayloadPoseCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "77efd6dec5239a5d7365b131312c9722";
  }

  static const char* value(const ::px4_command::PayloadPoseCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x77efd6dec5239a5dULL;
  static const uint64_t static_value2 = 0x7365b131312c9722ULL;
};

template<class ContainerAllocator>
struct DataType< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "px4_command/PayloadPoseCommand";
  }

  static const char* value(const ::px4_command::PayloadPoseCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"## Command_ID for safety, the command ID should increase with every command sent.\n"
"uint32 Command_ID\n"
"\n"
"## Payload Pose Setpoint\n"
"float32    x_ref         ## [m]\n"
"float32    y_ref         ## [m]\n"
"float32    z_ref         ## [m]\n"
"float32    roll_ref      ## [deg]\n"
"float32    pitch_ref     ## [deg]\n"
"float32    yaw_ref       ## [deg]\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::px4_command::PayloadPoseCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Command_ID);
      stream.next(m.x_ref);
      stream.next(m.y_ref);
      stream.next(m.z_ref);
      stream.next(m.roll_ref);
      stream.next(m.pitch_ref);
      stream.next(m.yaw_ref);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PayloadPoseCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::px4_command::PayloadPoseCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::px4_command::PayloadPoseCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Command_ID: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.Command_ID);
    s << indent << "x_ref: ";
    Printer<float>::stream(s, indent + "  ", v.x_ref);
    s << indent << "y_ref: ";
    Printer<float>::stream(s, indent + "  ", v.y_ref);
    s << indent << "z_ref: ";
    Printer<float>::stream(s, indent + "  ", v.z_ref);
    s << indent << "roll_ref: ";
    Printer<float>::stream(s, indent + "  ", v.roll_ref);
    s << indent << "pitch_ref: ";
    Printer<float>::stream(s, indent + "  ", v.pitch_ref);
    s << indent << "yaw_ref: ";
    Printer<float>::stream(s, indent + "  ", v.yaw_ref);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PX4_COMMAND_MESSAGE_PAYLOADPOSECOMMAND_H