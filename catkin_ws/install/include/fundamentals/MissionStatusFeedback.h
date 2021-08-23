// Generated by gencpp from file fundamentals/MissionStatusFeedback.msg
// DO NOT EDIT!


#ifndef FUNDAMENTALS_MESSAGE_MISSIONSTATUSFEEDBACK_H
#define FUNDAMENTALS_MESSAGE_MISSIONSTATUSFEEDBACK_H


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
struct MissionStatusFeedback_
{
  typedef MissionStatusFeedback_<ContainerAllocator> Type;

  MissionStatusFeedback_()
    : ratio()  {
    }
  MissionStatusFeedback_(const ContainerAllocator& _alloc)
    : ratio(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ratio_type;
  _ratio_type ratio;





  typedef boost::shared_ptr< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct MissionStatusFeedback_

typedef ::fundamentals::MissionStatusFeedback_<std::allocator<void> > MissionStatusFeedback;

typedef boost::shared_ptr< ::fundamentals::MissionStatusFeedback > MissionStatusFeedbackPtr;
typedef boost::shared_ptr< ::fundamentals::MissionStatusFeedback const> MissionStatusFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fundamentals::MissionStatusFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fundamentals::MissionStatusFeedback_<ContainerAllocator1> & lhs, const ::fundamentals::MissionStatusFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.ratio == rhs.ratio;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fundamentals::MissionStatusFeedback_<ContainerAllocator1> & lhs, const ::fundamentals::MissionStatusFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fundamentals

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d421494c6ac860ca5661fb574da8e84";
  }

  static const char* value(const ::fundamentals::MissionStatusFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d421494c6ac860cULL;
  static const uint64_t static_value2 = 0xa5661fb574da8e84ULL;
};

template<class ContainerAllocator>
struct DataType< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fundamentals/MissionStatusFeedback";
  }

  static const char* value(const ::fundamentals::MissionStatusFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"string ratio\n"
"\n"
"# The ordering above is:\n"
"# client request\n"
"# server response\n"
"# action feedback\n"
"\n"
"# When you `catkin_make` and `catkin_make install` after creating this file,\n"
"# you will have created 7 different .msg and .h files named:\n"
"# MissionStatus\n"
"# MissionStatusGoal\n"
"# MissionStatusResult\n"
"# MissionStatusFeedback\n"
"# MissionStatusAction\n"
"# MissionStatusActionResult\n"
"# MissionStatusActionFeedback\n"
"\n"
;
  }

  static const char* value(const ::fundamentals::MissionStatusFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ratio);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MissionStatusFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fundamentals::MissionStatusFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fundamentals::MissionStatusFeedback_<ContainerAllocator>& v)
  {
    s << indent << "ratio: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ratio);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FUNDAMENTALS_MESSAGE_MISSIONSTATUSFEEDBACK_H
