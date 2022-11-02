// Generated by gencpp from file moveit_msgs/ListRobotStatesInWarehouseResponse.msg
// DO NOT EDIT!


#ifndef MOVEIT_MSGS_MESSAGE_LISTROBOTSTATESINWAREHOUSERESPONSE_H
#define MOVEIT_MSGS_MESSAGE_LISTROBOTSTATESINWAREHOUSERESPONSE_H


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
struct ListRobotStatesInWarehouseResponse_
{
  typedef ListRobotStatesInWarehouseResponse_<ContainerAllocator> Type;

  ListRobotStatesInWarehouseResponse_()
    : states()  {
    }
  ListRobotStatesInWarehouseResponse_(const ContainerAllocator& _alloc)
    : states(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _states_type;
  _states_type states;





  typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ListRobotStatesInWarehouseResponse_

typedef ::moveit_msgs::ListRobotStatesInWarehouseResponse_<std::allocator<void> > ListRobotStatesInWarehouseResponse;

typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseResponse > ListRobotStatesInWarehouseResponsePtr;
typedef boost::shared_ptr< ::moveit_msgs::ListRobotStatesInWarehouseResponse const> ListRobotStatesInWarehouseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator1> & lhs, const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator2> & rhs)
{
  return lhs.states == rhs.states;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator1> & lhs, const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moveit_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a8656b247c0429bb79afe0ddb88eb2f5";
  }

  static const char* value(const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa8656b247c0429bbULL;
  static const uint64_t static_value2 = 0x79afe0ddb88eb2f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_msgs/ListRobotStatesInWarehouseResponse";
  }

  static const char* value(const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"string[] states\n"
"\n"
;
  }

  static const char* value(const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ListRobotStatesInWarehouseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_msgs::ListRobotStatesInWarehouseResponse_<ContainerAllocator>& v)
  {
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.states[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_MSGS_MESSAGE_LISTROBOTSTATESINWAREHOUSERESPONSE_H