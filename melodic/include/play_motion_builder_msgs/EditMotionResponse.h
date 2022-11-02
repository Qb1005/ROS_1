// Generated by gencpp from file play_motion_builder_msgs/EditMotionResponse.msg
// DO NOT EDIT!


#ifndef PLAY_MOTION_BUILDER_MSGS_MESSAGE_EDITMOTIONRESPONSE_H
#define PLAY_MOTION_BUILDER_MSGS_MESSAGE_EDITMOTIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <play_motion_builder_msgs/Motion.h>

namespace play_motion_builder_msgs
{
template <class ContainerAllocator>
struct EditMotionResponse_
{
  typedef EditMotionResponse_<ContainerAllocator> Type;

  EditMotionResponse_()
    : ok(false)
    , message()
    , motion()  {
    }
  EditMotionResponse_(const ContainerAllocator& _alloc)
    : ok(false)
    , message(_alloc)
    , motion(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef  ::play_motion_builder_msgs::Motion_<ContainerAllocator>  _motion_type;
  _motion_type motion;





  typedef boost::shared_ptr< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EditMotionResponse_

typedef ::play_motion_builder_msgs::EditMotionResponse_<std::allocator<void> > EditMotionResponse;

typedef boost::shared_ptr< ::play_motion_builder_msgs::EditMotionResponse > EditMotionResponsePtr;
typedef boost::shared_ptr< ::play_motion_builder_msgs::EditMotionResponse const> EditMotionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator1> & lhs, const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok &&
    lhs.message == rhs.message &&
    lhs.motion == rhs.motion;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator1> & lhs, const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace play_motion_builder_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b8977f11190208bf644de5781a8adaa9";
  }

  static const char* value(const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb8977f11190208bfULL;
  static const uint64_t static_value2 = 0x644de5781a8adaa9ULL;
};

template<class ContainerAllocator>
struct DataType< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "play_motion_builder_msgs/EditMotionResponse";
  }

  static const char* value(const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# True if no issues ocurred during the call\n"
"bool ok\n"
"# Error message in case an issue occurred during the call\n"
"string message\n"
"# Current state of the motion\n"
"play_motion_builder_msgs/Motion motion\n"
"\n"
"\n"
"================================================================================\n"
"MSG: play_motion_builder_msgs/Motion\n"
"# List of joint names, keyframe positions are ordered based on this list\n"
"string[] joints\n"
"# List of Frames\n"
"play_motion_builder_msgs/Frame[] keyframes\n"
"# Name of the joint group used during this motion\n"
"string used_group\n"
"\n"
"================================================================================\n"
"MSG: play_motion_builder_msgs/Frame\n"
"# Array with joint poses\n"
"float64[] pose\n"
"# Time since last Frame\n"
"float32 time_from_last\n"
;
  }

  static const char* value(const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
      stream.next(m.message);
      stream.next(m.motion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EditMotionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::play_motion_builder_msgs::EditMotionResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "motion: ";
    s << std::endl;
    Printer< ::play_motion_builder_msgs::Motion_<ContainerAllocator> >::stream(s, indent + "  ", v.motion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAY_MOTION_BUILDER_MSGS_MESSAGE_EDITMOTIONRESPONSE_H