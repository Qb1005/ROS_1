// Generated by gencpp from file object_recognition_msgs/GetObjectInformationResponse.msg
// DO NOT EDIT!


#ifndef OBJECT_RECOGNITION_MSGS_MESSAGE_GETOBJECTINFORMATIONRESPONSE_H
#define OBJECT_RECOGNITION_MSGS_MESSAGE_GETOBJECTINFORMATIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <object_recognition_msgs/ObjectInformation.h>

namespace object_recognition_msgs
{
template <class ContainerAllocator>
struct GetObjectInformationResponse_
{
  typedef GetObjectInformationResponse_<ContainerAllocator> Type;

  GetObjectInformationResponse_()
    : information()  {
    }
  GetObjectInformationResponse_(const ContainerAllocator& _alloc)
    : information(_alloc)  {
  (void)_alloc;
    }



   typedef  ::object_recognition_msgs::ObjectInformation_<ContainerAllocator>  _information_type;
  _information_type information;





  typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetObjectInformationResponse_

typedef ::object_recognition_msgs::GetObjectInformationResponse_<std::allocator<void> > GetObjectInformationResponse;

typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationResponse > GetObjectInformationResponsePtr;
typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationResponse const> GetObjectInformationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator1> & lhs, const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.information == rhs.information;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator1> & lhs, const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a62c5d1c41e250373b3e8e912a13a9cb";
  }

  static const char* value(const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa62c5d1c41e25037ULL;
  static const uint64_t static_value2 = 0x3b3e8e912a13a9cbULL;
};

template<class ContainerAllocator>
struct DataType< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_recognition_msgs/GetObjectInformationResponse";
  }

  static const char* value(const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"# Extra object info \n"
"object_recognition_msgs/ObjectInformation information\n"
"\n"
"\n"
"================================================================================\n"
"MSG: object_recognition_msgs/ObjectInformation\n"
"############################################## VISUALIZATION INFO ######################################################\n"
"################### THIS INFO SHOULD BE OBTAINED INDEPENDENTLY FROM THE CORE, LIKE IN AN RVIZ PLUGIN ###################\n"
"\n"
"# The human readable name of the object\n"
"string name\n"
"\n"
"# The full mesh of the object: this can be useful for display purposes, augmented reality ... but it can be big\n"
"# Make sure the type is MESH\n"
"shape_msgs/Mesh ground_truth_mesh\n"
"\n"
"# Sometimes, you only have a cloud in the DB\n"
"# Make sure the type is POINTS\n"
"sensor_msgs/PointCloud2 ground_truth_point_cloud\n"
"\n"
"================================================================================\n"
"MSG: shape_msgs/Mesh\n"
"# Definition of a mesh\n"
"\n"
"# list of triangles; the index values refer to positions in vertices[]\n"
"MeshTriangle[] triangles\n"
"\n"
"# the actual vertices that make up the mesh\n"
"geometry_msgs/Point[] vertices\n"
"\n"
"================================================================================\n"
"MSG: shape_msgs/MeshTriangle\n"
"# Definition of a triangle's vertices\n"
"uint32[3] vertex_indices\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
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
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
;
  }

  static const char* value(const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.information);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetObjectInformationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_recognition_msgs::GetObjectInformationResponse_<ContainerAllocator>& v)
  {
    s << indent << "information: ";
    s << std::endl;
    Printer< ::object_recognition_msgs::ObjectInformation_<ContainerAllocator> >::stream(s, indent + "  ", v.information);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_RECOGNITION_MSGS_MESSAGE_GETOBJECTINFORMATIONRESPONSE_H
