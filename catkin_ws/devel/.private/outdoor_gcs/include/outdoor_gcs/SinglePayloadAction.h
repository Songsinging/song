// Generated by gencpp from file outdoor_gcs/SinglePayloadAction.msg
// DO NOT EDIT!


#ifndef OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTION_H
#define OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTION_H

#include <ros/service_traits.h>


#include <outdoor_gcs/SinglePayloadActionRequest.h>
#include <outdoor_gcs/SinglePayloadActionResponse.h>


namespace outdoor_gcs
{

struct SinglePayloadAction
{

typedef SinglePayloadActionRequest Request;
typedef SinglePayloadActionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SinglePayloadAction
} // namespace outdoor_gcs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::outdoor_gcs::SinglePayloadAction > {
  static const char* value()
  {
    return "901dfe89bb4f4622133561aed17b3eb7";
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadAction&) { return value(); }
};

template<>
struct DataType< ::outdoor_gcs::SinglePayloadAction > {
  static const char* value()
  {
    return "outdoor_gcs/SinglePayloadAction";
  }

  static const char* value(const ::outdoor_gcs::SinglePayloadAction&) { return value(); }
};


// service_traits::MD5Sum< ::outdoor_gcs::SinglePayloadActionRequest> should match
// service_traits::MD5Sum< ::outdoor_gcs::SinglePayloadAction >
template<>
struct MD5Sum< ::outdoor_gcs::SinglePayloadActionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::outdoor_gcs::SinglePayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::SinglePayloadActionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::outdoor_gcs::SinglePayloadActionRequest> should match
// service_traits::DataType< ::outdoor_gcs::SinglePayloadAction >
template<>
struct DataType< ::outdoor_gcs::SinglePayloadActionRequest>
{
  static const char* value()
  {
    return DataType< ::outdoor_gcs::SinglePayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::SinglePayloadActionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::outdoor_gcs::SinglePayloadActionResponse> should match
// service_traits::MD5Sum< ::outdoor_gcs::SinglePayloadAction >
template<>
struct MD5Sum< ::outdoor_gcs::SinglePayloadActionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::outdoor_gcs::SinglePayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::SinglePayloadActionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::outdoor_gcs::SinglePayloadActionResponse> should match
// service_traits::DataType< ::outdoor_gcs::SinglePayloadAction >
template<>
struct DataType< ::outdoor_gcs::SinglePayloadActionResponse>
{
  static const char* value()
  {
    return DataType< ::outdoor_gcs::SinglePayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::SinglePayloadActionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OUTDOOR_GCS_MESSAGE_SINGLEPAYLOADACTION_H
