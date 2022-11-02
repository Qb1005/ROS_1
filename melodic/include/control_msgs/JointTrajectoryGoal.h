// Generated by gencpp from file control_msgs/JointTrajectoryGoal.msg
// DO NOT EDIT!


#ifndef CONTROL_MSGS_MESSAGE_JOINTTRAJECTORYGOAL_H
#define CONTROL_MSGS_MESSAGE_JOINTTRAJECTORYGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trajectory_msgs/JointTrajectory.h>

namespace control_msgs
{
template <class ContainerAllocator>
struct JointTrajectoryGoal_
{
  typedef JointTrajectoryGoal_<ContainerAllocator> Type;

  JointTrajectoryGoal_()
    : trajectory()  {
    }
  JointTrajectoryGoal_(const ContainerAllocator& _alloc)
    : trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef  ::trajectory_msgs::JointTrajectory_<ContainerAllocator>  _trajectory_type;
  _trajectory_type trajectory;





  typedef boost::shared_ptr< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> const> ConstPtr;

}; // struct JointTrajectoryGoal_

typedef ::control_msgs::JointTrajectoryGoal_<std::allocator<void> > JointTrajectoryGoal;

typedef boost::shared_ptr< ::control_msgs::JointTrajectoryGoal > JointTrajectoryGoalPtr;
typedef boost::shared_ptr< ::control_msgs::JointTrajectoryGoal const> JointTrajectoryGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator1> & lhs, const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator2> & rhs)
{
  return lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator1> & lhs, const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a0eff76c870e8595636c2a562ca298e";
  }

  static const char* value(const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a0eff76c870e859ULL;
  static const uint64_t static_value2 = 0x5636c2a562ca298eULL;
};

template<class ContainerAllocator>
struct DataType< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "control_msgs/JointTrajectoryGoal";
  }

  static const char* value(const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"trajectory_msgs/JointTrajectory trajectory\n"
"\n"
"================================================================================\n"
"MSG: trajectory_msgs/JointTrajectory\n"
"Header header\n"
"string[] joint_names\n"
"JointTrajectoryPoint[] points\n"
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
"MSG: trajectory_msgs/JointTrajectoryPoint\n"
"# Each trajectory point specifies either positions[, velocities[, accelerations]]\n"
"# or positions[, effort] for the trajectory to be executed.\n"
"# All specified values are in the same order as the joint names in JointTrajectory.msg\n"
"\n"
"float64[] positions\n"
"float64[] velocities\n"
"float64[] accelerations\n"
"float64[] effort\n"
"duration time_from_start\n"
;
  }

  static const char* value(const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointTrajectoryGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::control_msgs::JointTrajectoryGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::control_msgs::JointTrajectoryGoal_<ContainerAllocator>& v)
  {
    s << indent << "trajectory: ";
    s << std::endl;
    Printer< ::trajectory_msgs::JointTrajectory_<ContainerAllocator> >::stream(s, indent + "  ", v.trajectory);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROL_MSGS_MESSAGE_JOINTTRAJECTORYGOAL_H
