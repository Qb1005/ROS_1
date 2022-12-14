// Generated by gencpp from file play_motion_builder_msgs/ChangeJointsResponse.msg
// DO NOT EDIT!


#ifndef PLAY_MOTION_BUILDER_MSGS_MESSAGE_CHANGEJOINTSRESPONSE_H
#define PLAY_MOTION_BUILDER_MSGS_MESSAGE_CHANGEJOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace play_motion_builder_msgs
{
template <class ContainerAllocator>
struct ChangeJointsResponse_
{
  typedef ChangeJointsResponse_<ContainerAllocator> Type;

  ChangeJointsResponse_()
    : ok(false)
    , message()
    , current_group()
    , used_joints()  {
    }
  ChangeJointsResponse_(const ContainerAllocator& _alloc)
    : ok(false)
    , message(_alloc)
    , current_group(_alloc)
    , used_joints(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _current_group_type;
  _current_group_type current_group;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _used_joints_type;
  _used_joints_type used_joints;





  typedef boost::shared_ptr< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeJointsResponse_

typedef ::play_motion_builder_msgs::ChangeJointsResponse_<std::allocator<void> > ChangeJointsResponse;

typedef boost::shared_ptr< ::play_motion_builder_msgs::ChangeJointsResponse > ChangeJointsResponsePtr;
typedef boost::shared_ptr< ::play_motion_builder_msgs::ChangeJointsResponse const> ChangeJointsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator1> & lhs, const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok &&
    lhs.message == rhs.message &&
    lhs.current_group == rhs.current_group &&
    lhs.used_joints == rhs.used_joints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator1> & lhs, const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace play_motion_builder_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84aa9b65e836172877daea91a88d9de9";
  }

  static const char* value(const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84aa9b65e8361728ULL;
  static const uint64_t static_value2 = 0x77daea91a88d9de9ULL;
};

template<class ContainerAllocator>
struct DataType< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "play_motion_builder_msgs/ChangeJointsResponse";
  }

  static const char* value(const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# True if no issues ocurred during the call\n"
"bool ok\n"
"# Error message in case an issue occurred during the call\n"
"string message\n"
"# Current group configuration\n"
"string current_group\n"
"# List of current active joints not in a group\n"
"string[] used_joints \n"
"\n"
;
  }

  static const char* value(const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
      stream.next(m.message);
      stream.next(m.current_group);
      stream.next(m.used_joints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeJointsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::play_motion_builder_msgs::ChangeJointsResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "current_group: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.current_group);
    s << indent << "used_joints[]" << std::endl;
    for (size_t i = 0; i < v.used_joints.size(); ++i)
    {
      s << indent << "  used_joints[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.used_joints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAY_MOTION_BUILDER_MSGS_MESSAGE_CHANGEJOINTSRESPONSE_H
