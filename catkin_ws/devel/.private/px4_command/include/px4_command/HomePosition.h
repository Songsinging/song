// Generated by gencpp from file px4_command/HomePosition.msg
// DO NOT EDIT!


#ifndef PX4_COMMAND_MESSAGE_HOMEPOSITION_H
#define PX4_COMMAND_MESSAGE_HOMEPOSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geographic_msgs/GeoPoint.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Vector3.h>

namespace px4_command
{
template <class ContainerAllocator>
struct HomePosition_
{
  typedef HomePosition_<ContainerAllocator> Type;

  HomePosition_()
    : header()
    , geo()
    , position()
    , orientation()
    , approach()  {
    }
  HomePosition_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , geo(_alloc)
    , position(_alloc)
    , orientation(_alloc)
    , approach(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geographic_msgs::GeoPoint_<ContainerAllocator>  _geo_type;
  _geo_type geo;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _approach_type;
  _approach_type approach;





  typedef boost::shared_ptr< ::px4_command::HomePosition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::px4_command::HomePosition_<ContainerAllocator> const> ConstPtr;

}; // struct HomePosition_

typedef ::px4_command::HomePosition_<std::allocator<void> > HomePosition;

typedef boost::shared_ptr< ::px4_command::HomePosition > HomePositionPtr;
typedef boost::shared_ptr< ::px4_command::HomePosition const> HomePositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::px4_command::HomePosition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::px4_command::HomePosition_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::px4_command::HomePosition_<ContainerAllocator1> & lhs, const ::px4_command::HomePosition_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.geo == rhs.geo &&
    lhs.position == rhs.position &&
    lhs.orientation == rhs.orientation &&
    lhs.approach == rhs.approach;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::px4_command::HomePosition_<ContainerAllocator1> & lhs, const ::px4_command::HomePosition_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace px4_command

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::px4_command::HomePosition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::px4_command::HomePosition_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::px4_command::HomePosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::px4_command::HomePosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::px4_command::HomePosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::px4_command::HomePosition_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::px4_command::HomePosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1167922de8c97acdb0ec714c1dba774";
  }

  static const char* value(const ::px4_command::HomePosition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1167922de8c97acULL;
  static const uint64_t static_value2 = 0xdb0ec714c1dba774ULL;
};

template<class ContainerAllocator>
struct DataType< ::px4_command::HomePosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "px4_command/HomePosition";
  }

  static const char* value(const ::px4_command::HomePosition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::px4_command::HomePosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# MAVLink message: HOME_POSITION\n"
"# https://mavlink.io/en/messages/common.html#HOME_POSITION\n"
"\n"
"std_msgs/Header header\n"
"\n"
"geographic_msgs/GeoPoint geo # geodetic coordinates in WGS-84 datum\n"
"\n"
"geometry_msgs/Point position	# local position\n"
"geometry_msgs/Quaternion orientation	# XXX: verify field name (q[4])\n"
"geometry_msgs/Vector3 approach	# position of the end of approach vector\n"
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
"\n"
"================================================================================\n"
"MSG: geographic_msgs/GeoPoint\n"
"# Geographic point, using the WGS 84 reference ellipsoid.\n"
"\n"
"# Latitude [degrees]. Positive is north of equator; negative is south\n"
"# (-90 <= latitude <= +90).\n"
"float64 latitude\n"
"\n"
"# Longitude [degrees]. Positive is east of prime meridian; negative is\n"
"# west (-180 <= longitude <= +180). At the poles, latitude is -90 or\n"
"# +90, and longitude is irrelevant, but must be in range.\n"
"float64 longitude\n"
"\n"
"# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).\n"
"float64 altitude\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::px4_command::HomePosition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::px4_command::HomePosition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.geo);
      stream.next(m.position);
      stream.next(m.orientation);
      stream.next(m.approach);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HomePosition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::px4_command::HomePosition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::px4_command::HomePosition_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "geo: ";
    s << std::endl;
    Printer< ::geographic_msgs::GeoPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.geo);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
    s << indent << "approach: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.approach);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PX4_COMMAND_MESSAGE_HOMEPOSITION_H
