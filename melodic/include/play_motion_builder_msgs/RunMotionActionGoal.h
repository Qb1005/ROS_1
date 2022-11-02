// Generated by gencpp from file play_motion_builder_msgs/RunMotionActionGoal.msg
// DO NOT EDIT!


#ifndef PLAY_MOTION_BUILDER_MSGS_MESSAGE_RUNMOTIONACTIONGOAL_H
#define PLAY_MOTION_BUILDER_MSGS_MESSAGE_RUNMOTIONACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <play_motion_builder_msgs/RunMotionGoal.h>

namespace play_motion_builder_msgs
{
template <class ContainerAllocator>
struct RunMotionActionGoal_
{
  typedef RunMotionActionGoal_<ContainerAllocator> Type;

  RunMotionActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  RunMotionActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::play_motion_builder_msgs::RunMotionGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RunMotionActionGoal_

typedef ::play_motion_builder_msgs::RunMotionActionGoal_<std::allocator<void> > RunMotionActionGoal;

typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionActionGoal > RunMotionActionGoalPtr;
typedef boost::shared_ptr< ::play_motion_builder_msgs::RunMotionActionGoal const> RunMotionActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator1> & lhs, const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator1> & lhs, const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace play_motion_builder_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c76dae4d7be5d9ae3aa0a8f7ba1d019f";
  }

  static const char* value(const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc76dae4d7be5d9aeULL;
  static const uint64_t static_value2 = 0x3aa0a8f7ba1d019fULL;
};

template<class ContainerAllocator>
struct DataType< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "play_motion_builder_msgs/RunMotionActionGoal";
  }

  static const char* value(const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"RunMotionGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: play_motion_builder_msgs/RunMotionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Motion modes\n"
"uint8 RUN_MOTION=0\n"
"uint8 GO_TO_STEP=1\n"
"\n"
"uint8 run_mode\n"
"# Factor by which to slow down the motion (only used if run_mode is RUN_MOTION)\n"
"float32 downshift\n"
"# Step id to which the robot will be moved (only used if run_mode is GO_TO_STEP)\n"
"uint16 step_id\n"
;
  }

  static const char* value(const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RunMotionActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::play_motion_builder_msgs::RunMotionActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::play_motion_builder_msgs::RunMotionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLAY_MOTION_BUILDER_MSGS_MESSAGE_RUNMOTIONACTIONGOAL_H
