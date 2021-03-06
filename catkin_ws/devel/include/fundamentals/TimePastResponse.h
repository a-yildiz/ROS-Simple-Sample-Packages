// Generated by gencpp from file fundamentals/TimePastResponse.msg
// DO NOT EDIT!


#ifndef FUNDAMENTALS_MESSAGE_TIMEPASTRESPONSE_H
#define FUNDAMENTALS_MESSAGE_TIMEPASTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fundamentals
{
template <class ContainerAllocator>
struct TimePastResponse_
{
  typedef TimePastResponse_<ContainerAllocator> Type;

  TimePastResponse_()
    : time_past(0.0)  {
    }
  TimePastResponse_(const ContainerAllocator& _alloc)
    : time_past(0.0)  {
  (void)_alloc;
    }



   typedef double _time_past_type;
  _time_past_type time_past;





  typedef boost::shared_ptr< ::fundamentals::TimePastResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fundamentals::TimePastResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TimePastResponse_

typedef ::fundamentals::TimePastResponse_<std::allocator<void> > TimePastResponse;

typedef boost::shared_ptr< ::fundamentals::TimePastResponse > TimePastResponsePtr;
typedef boost::shared_ptr< ::fundamentals::TimePastResponse const> TimePastResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fundamentals::TimePastResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fundamentals::TimePastResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fundamentals::TimePastResponse_<ContainerAllocator1> & lhs, const ::fundamentals::TimePastResponse_<ContainerAllocator2> & rhs)
{
  return lhs.time_past == rhs.time_past;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fundamentals::TimePastResponse_<ContainerAllocator1> & lhs, const ::fundamentals::TimePastResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fundamentals

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fundamentals::TimePastResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fundamentals::TimePastResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fundamentals::TimePastResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fundamentals::TimePastResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fundamentals::TimePastResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fundamentals::TimePastResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fundamentals::TimePastResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "12f537547d59039d230176ac3e51ac5a";
  }

  static const char* value(const ::fundamentals::TimePastResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x12f537547d59039dULL;
  static const uint64_t static_value2 = 0x230176ac3e51ac5aULL;
};

template<class ContainerAllocator>
struct DataType< ::fundamentals::TimePastResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fundamentals/TimePastResponse";
  }

  static const char* value(const ::fundamentals::TimePastResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fundamentals::TimePastResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 time_past\n"
"\n"
"# The ordering above is:\n"
"# client request\n"
"# server response\n"
"\n"
;
  }

  static const char* value(const ::fundamentals::TimePastResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fundamentals::TimePastResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_past);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TimePastResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fundamentals::TimePastResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fundamentals::TimePastResponse_<ContainerAllocator>& v)
  {
    s << indent << "time_past: ";
    Printer<double>::stream(s, indent + "  ", v.time_past);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FUNDAMENTALS_MESSAGE_TIMEPASTRESPONSE_H
