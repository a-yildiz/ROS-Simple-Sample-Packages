// Generated by gencpp from file simple_applications/Distance.msg
// DO NOT EDIT!


#ifndef SIMPLE_APPLICATIONS_MESSAGE_DISTANCE_H
#define SIMPLE_APPLICATIONS_MESSAGE_DISTANCE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simple_applications
{
template <class ContainerAllocator>
struct Distance_
{
  typedef Distance_<ContainerAllocator> Type;

  Distance_()
    : amount(0.0)  {
    }
  Distance_(const ContainerAllocator& _alloc)
    : amount(0.0)  {
  (void)_alloc;
    }



   typedef double _amount_type;
  _amount_type amount;





  typedef boost::shared_ptr< ::simple_applications::Distance_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simple_applications::Distance_<ContainerAllocator> const> ConstPtr;

}; // struct Distance_

typedef ::simple_applications::Distance_<std::allocator<void> > Distance;

typedef boost::shared_ptr< ::simple_applications::Distance > DistancePtr;
typedef boost::shared_ptr< ::simple_applications::Distance const> DistanceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simple_applications::Distance_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simple_applications::Distance_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::simple_applications::Distance_<ContainerAllocator1> & lhs, const ::simple_applications::Distance_<ContainerAllocator2> & rhs)
{
  return lhs.amount == rhs.amount;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::simple_applications::Distance_<ContainerAllocator1> & lhs, const ::simple_applications::Distance_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace simple_applications

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::simple_applications::Distance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_applications::Distance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simple_applications::Distance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simple_applications::Distance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_applications::Distance_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_applications::Distance_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simple_applications::Distance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6816fb13cdadc51f50a8e1a596fde6dd";
  }

  static const char* value(const ::simple_applications::Distance_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6816fb13cdadc51fULL;
  static const uint64_t static_value2 = 0x50a8e1a596fde6ddULL;
};

template<class ContainerAllocator>
struct DataType< ::simple_applications::Distance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simple_applications/Distance";
  }

  static const char* value(const ::simple_applications::Distance_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simple_applications::Distance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 amount\n"
;
  }

  static const char* value(const ::simple_applications::Distance_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simple_applications::Distance_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.amount);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Distance_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simple_applications::Distance_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simple_applications::Distance_<ContainerAllocator>& v)
  {
    s << indent << "amount: ";
    Printer<double>::stream(s, indent + "  ", v.amount);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMPLE_APPLICATIONS_MESSAGE_DISTANCE_H
