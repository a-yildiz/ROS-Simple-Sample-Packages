// Generated by gencpp from file simple_applications/CircularMotion.msg
// DO NOT EDIT!


#ifndef SIMPLE_APPLICATIONS_MESSAGE_CIRCULARMOTION_H
#define SIMPLE_APPLICATIONS_MESSAGE_CIRCULARMOTION_H

#include <ros/service_traits.h>


#include <simple_applications/CircularMotionRequest.h>
#include <simple_applications/CircularMotionResponse.h>


namespace simple_applications
{

struct CircularMotion
{

typedef CircularMotionRequest Request;
typedef CircularMotionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CircularMotion
} // namespace simple_applications


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::simple_applications::CircularMotion > {
  static const char* value()
  {
    return "34d1b51a3aa2a07a0194bc3c5de27677";
  }

  static const char* value(const ::simple_applications::CircularMotion&) { return value(); }
};

template<>
struct DataType< ::simple_applications::CircularMotion > {
  static const char* value()
  {
    return "simple_applications/CircularMotion";
  }

  static const char* value(const ::simple_applications::CircularMotion&) { return value(); }
};


// service_traits::MD5Sum< ::simple_applications::CircularMotionRequest> should match
// service_traits::MD5Sum< ::simple_applications::CircularMotion >
template<>
struct MD5Sum< ::simple_applications::CircularMotionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::simple_applications::CircularMotion >::value();
  }
  static const char* value(const ::simple_applications::CircularMotionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::simple_applications::CircularMotionRequest> should match
// service_traits::DataType< ::simple_applications::CircularMotion >
template<>
struct DataType< ::simple_applications::CircularMotionRequest>
{
  static const char* value()
  {
    return DataType< ::simple_applications::CircularMotion >::value();
  }
  static const char* value(const ::simple_applications::CircularMotionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::simple_applications::CircularMotionResponse> should match
// service_traits::MD5Sum< ::simple_applications::CircularMotion >
template<>
struct MD5Sum< ::simple_applications::CircularMotionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::simple_applications::CircularMotion >::value();
  }
  static const char* value(const ::simple_applications::CircularMotionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::simple_applications::CircularMotionResponse> should match
// service_traits::DataType< ::simple_applications::CircularMotion >
template<>
struct DataType< ::simple_applications::CircularMotionResponse>
{
  static const char* value()
  {
    return DataType< ::simple_applications::CircularMotion >::value();
  }
  static const char* value(const ::simple_applications::CircularMotionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SIMPLE_APPLICATIONS_MESSAGE_CIRCULARMOTION_H
