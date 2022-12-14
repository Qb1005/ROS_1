// Generated by gencpp from file py_trees_msgs/RotateFeedback.msg
// DO NOT EDIT!


#ifndef PY_TREES_MSGS_MESSAGE_ROTATEFEEDBACK_H
#define PY_TREES_MSGS_MESSAGE_ROTATEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace py_trees_msgs
{
template <class ContainerAllocator>
struct RotateFeedback_
{
  typedef RotateFeedback_<ContainerAllocator> Type;

  RotateFeedback_()
    : percentage_completed(0.0)
    , angle_rotated(0.0)  {
    }
  RotateFeedback_(const ContainerAllocator& _alloc)
    : percentage_completed(0.0)
    , angle_rotated(0.0)  {
  (void)_alloc;
    }



   typedef float _percentage_completed_type;
  _percentage_completed_type percentage_completed;

   typedef float _angle_rotated_type;
  _angle_rotated_type angle_rotated;





  typedef boost::shared_ptr< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct RotateFeedback_

typedef ::py_trees_msgs::RotateFeedback_<std::allocator<void> > RotateFeedback;

typedef boost::shared_ptr< ::py_trees_msgs::RotateFeedback > RotateFeedbackPtr;
typedef boost::shared_ptr< ::py_trees_msgs::RotateFeedback const> RotateFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::py_trees_msgs::RotateFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::py_trees_msgs::RotateFeedback_<ContainerAllocator1> & lhs, const ::py_trees_msgs::RotateFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.percentage_completed == rhs.percentage_completed &&
    lhs.angle_rotated == rhs.angle_rotated;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::py_trees_msgs::RotateFeedback_<ContainerAllocator1> & lhs, const ::py_trees_msgs::RotateFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace py_trees_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1088922e17b4a9f4319356ac8d99645";
  }

  static const char* value(const ::py_trees_msgs::RotateFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf1088922e17b4a9fULL;
  static const uint64_t static_value2 = 0x4319356ac8d99645ULL;
};

template<class ContainerAllocator>
struct DataType< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "py_trees_msgs/RotateFeedback";
  }

  static const char* value(const ::py_trees_msgs::RotateFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"####################\n"
"# Feedback\n"
"####################\n"
"\n"
"float32 percentage_completed\n"
"float32 angle_rotated          # in radians\n"
"\n"
;
  }

  static const char* value(const ::py_trees_msgs::RotateFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percentage_completed);
      stream.next(m.angle_rotated);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RotateFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::py_trees_msgs::RotateFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::py_trees_msgs::RotateFeedback_<ContainerAllocator>& v)
  {
    s << indent << "percentage_completed: ";
    Printer<float>::stream(s, indent + "  ", v.percentage_completed);
    s << indent << "angle_rotated: ";
    Printer<float>::stream(s, indent + "  ", v.angle_rotated);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PY_TREES_MSGS_MESSAGE_ROTATEFEEDBACK_H
