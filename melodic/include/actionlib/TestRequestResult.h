// Generated by gencpp from file actionlib/TestRequestResult.msg
// DO NOT EDIT!


#ifndef ACTIONLIB_MESSAGE_TESTREQUESTRESULT_H
#define ACTIONLIB_MESSAGE_TESTREQUESTRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace actionlib
{
template <class ContainerAllocator>
struct TestRequestResult_
{
  typedef TestRequestResult_<ContainerAllocator> Type;

  TestRequestResult_()
    : the_result(0)
    , is_simple_server(false)  {
    }
  TestRequestResult_(const ContainerAllocator& _alloc)
    : the_result(0)
    , is_simple_server(false)  {
  (void)_alloc;
    }



   typedef int32_t _the_result_type;
  _the_result_type the_result;

   typedef uint8_t _is_simple_server_type;
  _is_simple_server_type is_simple_server;





  typedef boost::shared_ptr< ::actionlib::TestRequestResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actionlib::TestRequestResult_<ContainerAllocator> const> ConstPtr;

}; // struct TestRequestResult_

typedef ::actionlib::TestRequestResult_<std::allocator<void> > TestRequestResult;

typedef boost::shared_ptr< ::actionlib::TestRequestResult > TestRequestResultPtr;
typedef boost::shared_ptr< ::actionlib::TestRequestResult const> TestRequestResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actionlib::TestRequestResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actionlib::TestRequestResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::actionlib::TestRequestResult_<ContainerAllocator1> & lhs, const ::actionlib::TestRequestResult_<ContainerAllocator2> & rhs)
{
  return lhs.the_result == rhs.the_result &&
    lhs.is_simple_server == rhs.is_simple_server;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::actionlib::TestRequestResult_<ContainerAllocator1> & lhs, const ::actionlib::TestRequestResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace actionlib

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::actionlib::TestRequestResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actionlib::TestRequestResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib::TestRequestResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib::TestRequestResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib::TestRequestResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib::TestRequestResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actionlib::TestRequestResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61c2364524499c7c5017e2f3fce7ba06";
  }

  static const char* value(const ::actionlib::TestRequestResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61c2364524499c7cULL;
  static const uint64_t static_value2 = 0x5017e2f3fce7ba06ULL;
};

template<class ContainerAllocator>
struct DataType< ::actionlib::TestRequestResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actionlib/TestRequestResult";
  }

  static const char* value(const ::actionlib::TestRequestResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actionlib::TestRequestResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"int32 the_result\n"
"bool is_simple_server\n"
;
  }

  static const char* value(const ::actionlib::TestRequestResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actionlib::TestRequestResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.the_result);
      stream.next(m.is_simple_server);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TestRequestResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actionlib::TestRequestResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actionlib::TestRequestResult_<ContainerAllocator>& v)
  {
    s << indent << "the_result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.the_result);
    s << indent << "is_simple_server: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_simple_server);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONLIB_MESSAGE_TESTREQUESTRESULT_H
