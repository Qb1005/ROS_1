// Generated by gencpp from file play_motion_builder_msgs/RunMotionFeedback.msg
// DO NOT EDIT!


#ifndef PLAY_MOTION_BUILDER_MSGS_MESSAGE_RUNMOTIONFEEDBACK_H
#define PLAY_MOTION_BUILDER_MSGS_MESSAGE_RUNMOTIONFEEDBACK_H


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
struct RunMotionFeedback_
{
  typedef RunMotionFeedback_<ContainerAllocator> Type;

  RunMotionFeedback_()
    {
    }
  RunMotionFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct RunMotionFeedback_

typedef ::play_motion_builder_msgs::RunMotionFeedback_<std::allocator<void> > RunMotionFeedback;

typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionFeedback > RunMotionFeedbackPtr;
typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionFeedback const> RunMotionFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace play_motion_builder_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "play_motion_builder_msgs/RunMotionFeedback";
  }

  static const char* value(const ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
;
  }

  static const char* value(const ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RunMotionFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::play_motion_builder_msgs::RunMotionFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // PLAY_MOTION_BUILDER_MSGS_MESSAGE_RUNMOTIONFEEDBACK_H