// Generated by gencpp from file outdoor_gcs/SinglePayloadActionRequest.msg
// DO NOT EDIT!


#ifndef OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTIONREQUEST_H
#define OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTIONREQUEST_H


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
struct SinglePayloadActionRequest_
{
  typedef SinglePayloadActionRequest_<ContainerAllocator> Type;

  SinglePayloadActionRequest_()
    : perform_action(false)
    , action_type(0)  {
    }
  SinglePayloadActionRequest_(const ContainerAllocator& _alloc)
    : perform_action(false)
    , action_type(0)  {
  (void)_alloc;
    }



   typedef uint8_t _perform_action_type;
  _perform_action_type perform_action;

   typedef int32_t _action_type_type;
  _action_type_type action_type;





  typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SinglePayloadActionRequest_

typedef ::outdoor_gcs::SinglePayloadActionRequest_<std::allocator<void> > SinglePayloadActionRequest;

typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionRequest > SinglePayloadActionRequestPtr;
typedef boost::shared_ptr< ::outdoor_gcs::SinglePayloadActionRequest const> SinglePayloadActionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator1> & lhs, const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.perform_action == rhs.perform_action &&
    lhs.action_type == rhs.action_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator1> & lhs, const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace outdoor_gcs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "715e569e860f60215e794bdade55e91c";
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x715e569e860f6021ULL;
  static const uint64_t static_value2 = 0x5e794bdade55e91cULL;
};

template<class ContainerAllocator>
struct DataType< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "outdoor_gcs/SinglePayloadActionRequest";
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool perform_action\n"
"int32 action_type\n"
;
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.perform_action);
      stream.next(m.action_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SinglePayloadActionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::outdoor_gcs::SinglePayloadActionRequest_<ContainerAllocator>& v)
  {
    s << indent << "perform_action: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.perform_action);
    s << indent << "action_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.action_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTIONREQUEST_H
