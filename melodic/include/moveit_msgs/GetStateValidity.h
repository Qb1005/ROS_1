// Generated by gencpp from file moveit_msgs/GetStateValidity.msg
// DO NOT EDIT!


#ifndef MOVEIT_MSGS_MESSAGE_GETSTATEVALIDITY_H
#define MOVEIT_MSGS_MESSAGE_GETSTATEVALIDITY_H

#include <ros/service_traits.h>


#include <moveit_msgs/GetStateValidityRequest.h>
#include <moveit_msgs/GetStateValidityResponse.h>


namespace moveit_msgs
{

struct GetStateValidity
{

typedef GetStateValidityRequest Request;
typedef GetStateValidityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetStateValidity
} // namespace moveit_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::moveit_msgs::GetStateValidity > {
  static const char* value()
  {
    return "0c7c937b6a056e7ae5fded13d8e9b242";
  }

  static const char* value(const ::moveit_msgs::GetStateValidity&) { return value(); }
};

template<>
struct DataType< ::moveit_msgs::GetStateValidity > {
  static const char* value()
  {
    return "moveit_msgs/GetStateValidity";
  }

  static const char* value(const ::moveit_msgs::GetStateValidity&) { return value(); }
};


// service_traits::MD5Sum< ::moveit_msgs::GetStateValidityRequest> should match
// service_traits::MD5Sum< ::moveit_msgs::GetStateValidity >
template<>
struct MD5Sum< ::moveit_msgs::GetStateValidityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::moveit_msgs::GetStateValidity >::value();
  }
  static const char* value(const ::moveit_msgs::GetStateValidityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::moveit_msgs::GetStateValidityRequest> should match
// service_traits::DataType< ::moveit_msgs::GetStateValidity >
template<>
struct DataType< ::moveit_msgs::GetStateValidityRequest>
{
  static const char* value()
  {
    return DataType< ::moveit_msgs::GetStateValidity >::value();
  }
  static const char* value(const ::moveit_msgs::GetStateValidityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::moveit_msgs::GetStateValidityResponse> should match
// service_traits::MD5Sum< ::moveit_msgs::GetStateValidity >
template<>
struct MD5Sum< ::moveit_msgs::GetStateValidityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::moveit_msgs::GetStateValidity >::value();
  }
  static const char* value(const ::moveit_msgs::GetStateValidityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::moveit_msgs::GetStateValidityResponse> should match
// service_traits::DataType< ::moveit_msgs::GetStateValidity >
template<>
struct DataType< ::moveit_msgs::GetStateValidityResponse>
{
  static const char* value()
  {
    return DataType< ::moveit_msgs::GetStateValidity >::value();
  }
  static const char* value(const ::moveit_msgs::GetStateValidityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MOVEIT_MSGS_MESSAGE_GETSTATEVALIDITY_H
