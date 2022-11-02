// Generated by gencpp from file moveit_msgs/ListRobotStatesInWarehouseRequest.msg
// DO NOT EDIT!


#ifndef MOVEIT_MSGS_MESSAGE_LISTROBOTSTATESINWAREHOUSEREQUEST_H
#define MOVEIT_MSGS_MESSAGE_LISTROBOTSTATESINWAREHOUSEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace moveit_msgs
{
template <class ContainerAllocator>
struct ListRobotStatesInWarehouseRequest_
{
  typedef ListRobotStatesInWarehouseRequest_<ContainerAllocator> Type;

  ListRobotStatesInWarehouseRequest_()
    : regex()
    , robot()  {
    }
  ListRobotStatesInWarehouseRequest_(const ContainerAllocator& _alloc)
    : regex(_alloc)
    , robot(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _regex_type;
  _regex_type regex;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_type;
  _robot_type robot;





  typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ListRobotStatesInWarehouseRequest_

typedef ::moveit_msgs::ListRobotStatesInWarehouseRequest_<std::allocator<void> > ListRobotStatesInWarehouseRequest;

typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseRequest > ListRobotStatesInWarehouseRequestPtr;
typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseRequest const> ListRobotStatesInWarehouseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator1> & lhs, const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.regex == rhs.regex &&
    lhs.robot == rhs.robot;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator1> & lhs, const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moveit_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f0970a3ca837e2fc3ed63e314b44b42";
  }

  static const char* value(const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f0970a3ca837e2fULL;
  static const uint64_t static_value2 = 0xc3ed63e314b44b42ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_msgs/ListRobotStatesInWarehouseRequest";
  }

  static const char* value(const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string regex\n"
"string robot\n"
"\n"
;
  }

  static const char* value(const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.regex);
      stream.next(m.robot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ListRobotStatesInWarehouseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_msgs::ListRobotStatesInWarehouseRequest_<ContainerAllocator>& v)
  {
    s << indent << "regex: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.regex);
    s << indent << "robot: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_MSGS_MESSAGE_LISTROBOTSTATESINWAREHOUSEREQUEST_H
