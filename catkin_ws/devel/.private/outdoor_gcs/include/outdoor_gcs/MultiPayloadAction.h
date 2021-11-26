// Generated by gencpp from file outdoor_gcs/MultiPayloadAction.msg
// DO NOT EDIT!


#ifndef OUTDOOR_GCS_MESSAGE_MULTIPAYLOADACTION_H
#define OUTDOOR_GCS_MESSAGE_MULTIPAYLOADACTION_H

#include <ros/service_traits.h>


#include <outdoor_gcs/MultiPayloadActionRequest.h>
#include <outdoor_gcs/MultiPayloadActionResponse.h>


namespace outdoor_gcs
{

struct MultiPayloadAction
{

typedef MultiPayloadActionRequest Request;
typedef MultiPayloadActionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MultiPayloadAction
} // namespace outdoor_gcs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::outdoor_gcs::MultiPayloadAction > {
  static const char* value()
  {
    return "901dfe89bb4f4622133561aed17b3eb7";
  }

  static const char* value(const ::outdoor_gcs::MultiPayloadAction&) { return value(); }
};

template<>
struct DataType< ::outdoor_gcs::MultiPayloadAction > {
  static const char* value()
  {
    return "outdoor_gcs/MultiPayloadAction";
  }

  static const char* value(const ::outdoor_gcs::MultiPayloadAction&) { return value(); }
};


// service_traits::MD5Sum< ::outdoor_gcs::MultiPayloadActionRequest> should match
// service_traits::MD5Sum< ::outdoor_gcs::MultiPayloadAction >
template<>
struct MD5Sum< ::outdoor_gcs::MultiPayloadActionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::outdoor_gcs::MultiPayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::MultiPayloadActionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::outdoor_gcs::MultiPayloadActionRequest> should match
// service_traits::DataType< ::outdoor_gcs::MultiPayloadAction >
template<>
struct DataType< ::outdoor_gcs::MultiPayloadActionRequest>
{
  static const char* value()
  {
    return DataType< ::outdoor_gcs::MultiPayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::MultiPayloadActionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::outdoor_gcs::MultiPayloadActionResponse> should match
// service_traits::MD5Sum< ::outdoor_gcs::MultiPayloadAction >
template<>
struct MD5Sum< ::outdoor_gcs::MultiPayloadActionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::outdoor_gcs::MultiPayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::MultiPayloadActionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::outdoor_gcs::MultiPayloadActionResponse> should match
// service_traits::DataType< ::outdoor_gcs::MultiPayloadAction >
template<>
struct DataType< ::outdoor_gcs::MultiPayloadActionResponse>
{
  static const char* value()
  {
    return DataType< ::outdoor_gcs::MultiPayloadAction >::value();
  }
  static const char* value(const ::outdoor_gcs::MultiPayloadActionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OUTDOOR_GCS_MESSAGE_MULTIPAYLOADACTION_H
