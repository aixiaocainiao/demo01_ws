// Generated by gencpp from file demo03/Person.msg
// DO NOT EDIT!


#ifndef DEMO03_MESSAGE_PERSON_H
#define DEMO03_MESSAGE_PERSON_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace demo03
{
template <class ContainerAllocator>
struct Person_
{
  typedef Person_<ContainerAllocator> Type;

  Person_()
    : name()
    , age(0)
    , height(0.0)  {
    }
  Person_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)
    , height(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef uint16_t _age_type;
  _age_type age;

   typedef double _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::demo03::Person_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::demo03::Person_<ContainerAllocator> const> ConstPtr;

}; // struct Person_

typedef ::demo03::Person_<std::allocator<void> > Person;

typedef boost::shared_ptr< ::demo03::Person > PersonPtr;
typedef boost::shared_ptr< ::demo03::Person const> PersonConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::demo03::Person_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::demo03::Person_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::demo03::Person_<ContainerAllocator1> & lhs, const ::demo03::Person_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.age == rhs.age &&
    lhs.height == rhs.height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::demo03::Person_<ContainerAllocator1> & lhs, const ::demo03::Person_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace demo03

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::demo03::Person_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::demo03::Person_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::demo03::Person_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::demo03::Person_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::demo03::Person_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::demo03::Person_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::demo03::Person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "81ccf2097ef38ca6466e5a60ea1f8e49";
  }

  static const char* value(const ::demo03::Person_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x81ccf2097ef38ca6ULL;
  static const uint64_t static_value2 = 0x466e5a60ea1f8e49ULL;
};

template<class ContainerAllocator>
struct DataType< ::demo03::Person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "demo03/Person";
  }

  static const char* value(const ::demo03::Person_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::demo03::Person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"uint16 age\n"
"float64 height\n"
;
  }

  static const char* value(const ::demo03::Person_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::demo03::Person_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Person_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::demo03::Person_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::demo03::Person_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.age);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DEMO03_MESSAGE_PERSON_H
