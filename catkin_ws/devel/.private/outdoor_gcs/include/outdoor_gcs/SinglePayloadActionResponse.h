// Generated by gencpp from file outdoor_gcs/SinglePayloadActionResponse.msg
// DO NOT EDIT!


#ifndef OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTIONRESPONSE_H
#define OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace outdoor_gcs
{
template <class ContainerAllocator>
struct SinglePayloadActionResponse_
{
  typedef SinglePayloadActionResponse_<ContainerAllocator> Type;

  SinglePayloadActionResponse_()
    : status_ok(false)
    , trajectory_type(0)  {
    }
  SinglePayloadActionResponse_(const ContainerAllocator& _alloc)
    : status_ok(false)
    , trajectory_type(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_ok_type;
  _status_ok_type status_ok;

   typedef int32_t _trajectory_type_type;
  _trajectory_type_type trajectory_type;





  typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SinglePayloadActionResponse_

typedef ::outdoor_gcs::SinglePayloadActionResponse_<std::allocator<void> > SinglePayloadActionResponse;

typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionResponse > SinglePayloadActionResponsePtr;
typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionResponse const> SinglePayloadActionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator1> & lhs, const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status_ok == rhs.status_ok &&
    lhs.trajectory_type == rhs.trajectory_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator1> & lhs, const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace outdoor_gcs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e9a3d533bfea15b77587ba33878cc56a";
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe9a3d533bfea15b7ULL;
  static const uint64_t static_value2 = 0x7587ba33878cc56aULL;
};

template<class ContainerAllocator>
struct DataType< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "outdoor_gcs/SinglePayloadActionResponse";
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status_ok\n"
"int32 trajectory_type\n"
"\n"
;
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status_ok);
      stream.next(m.trajectory_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SinglePayloadActionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::outdoor_gcs::SinglePayloadActionResponse_<ContainerAllocator>& v)
  {
    s << indent << "status_ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status_ok);
    s << indent << "trajectory_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.trajectory_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTIONRESPONSE_H
