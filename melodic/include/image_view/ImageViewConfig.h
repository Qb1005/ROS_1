//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the image_view package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __image_view__IMAGEVIEWCONFIG_H__
#define __image_view__IMAGEVIEWCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace image_view
{
  class ImageViewConfigStatics;

  class ImageViewConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(ImageViewConfig &config, const ImageViewConfig &max, const ImageViewConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const ImageViewConfig &config1, const ImageViewConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, ImageViewConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const ImageViewConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ImageViewConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const ImageViewConfig &config) const = 0;
      virtual void getValue(const ImageViewConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T ImageViewConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T ImageViewConfig::* field;

      virtual void clamp(ImageViewConfig &config, const ImageViewConfig &max, const ImageViewConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const ImageViewConfig &config1, const ImageViewConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, ImageViewConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const ImageViewConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ImageViewConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const ImageViewConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const ImageViewConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, ImageViewConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, ImageViewConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<ImageViewConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(ImageViewConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("do_dynamic_scaling"==(*_i)->name){do_dynamic_scaling = boost::any_cast<bool>(val);}
        if("colormap"==(*_i)->name){colormap = boost::any_cast<int>(val);}
        if("min_image_value"==(*_i)->name){min_image_value = boost::any_cast<double>(val);}
        if("max_image_value"==(*_i)->name){max_image_value = boost::any_cast<double>(val);}
      }
    }

    bool do_dynamic_scaling;
int colormap;
double min_image_value;
double max_image_value;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool do_dynamic_scaling;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int colormap;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_image_value;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_image_value;
//#line 228 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("ImageViewConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const ImageViewConfig &__max__ = __getMax__();
      const ImageViewConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const ImageViewConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const ImageViewConfig &__getDefault__();
    static const ImageViewConfig &__getMax__();
    static const ImageViewConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const ImageViewConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void ImageViewConfig::ParamDescription<std::string>::clamp(ImageViewConfig &config, const ImageViewConfig &max, const ImageViewConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class ImageViewConfigStatics
  {
    friend class ImageViewConfig;

    ImageViewConfigStatics()
    {
ImageViewConfig::GroupDescription<ImageViewConfig::DEFAULT, ImageViewConfig> Default("Default", "", 0, 0, true, &ImageViewConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.do_dynamic_scaling = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.do_dynamic_scaling = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.do_dynamic_scaling = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<bool>("do_dynamic_scaling", "bool", 0, "Do dynamic scaling about pixel values or not", "", &ImageViewConfig::do_dynamic_scaling)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<bool>("do_dynamic_scaling", "bool", 0, "Do dynamic scaling about pixel values or not", "", &ImageViewConfig::do_dynamic_scaling)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.colormap = -1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.colormap = 11;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.colormap = -1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<int>("colormap", "int", 0, "colormap", "{'enum_description': 'colormap', 'enum': [{'srcline': 9, 'description': 'NO_COLORMAP', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': -1, 'ctype': 'int', 'type': 'int', 'name': 'NO_COLORMAP'}, {'srcline': 10, 'description': 'COLORMAP_AUTUMN', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'AUTUMN'}, {'srcline': 11, 'description': 'COLORMAP_BONE', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'BONE'}, {'srcline': 12, 'description': 'COLORMAP_JET', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'JET'}, {'srcline': 13, 'description': 'COLORMAP_WINTER', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'WINTER'}, {'srcline': 14, 'description': 'COLORMAP_RAINBOW', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'RAINBOW'}, {'srcline': 15, 'description': 'COLORMAP_OCEAN', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': 'OCEAN'}, {'srcline': 16, 'description': 'COLORMAP_SUMMER', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': 'SUMMER'}, {'srcline': 17, 'description': 'COLORMAP_SPRING', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 7, 'ctype': 'int', 'type': 'int', 'name': 'SPRING'}, {'srcline': 18, 'description': 'COLORMAP_COOL', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': 'COOL'}, {'srcline': 19, 'description': 'COLORMAP_HSV', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 9, 'ctype': 'int', 'type': 'int', 'name': 'HSV'}, {'srcline': 20, 'description': 'COLORMAP_PINK', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 10, 'ctype': 'int', 'type': 'int', 'name': 'PINK'}, {'srcline': 21, 'description': 'COLORMAP_HOT', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 11, 'ctype': 'int', 'type': 'int', 'name': 'HOT'}]}", &ImageViewConfig::colormap)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<int>("colormap", "int", 0, "colormap", "{'enum_description': 'colormap', 'enum': [{'srcline': 9, 'description': 'NO_COLORMAP', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': -1, 'ctype': 'int', 'type': 'int', 'name': 'NO_COLORMAP'}, {'srcline': 10, 'description': 'COLORMAP_AUTUMN', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'AUTUMN'}, {'srcline': 11, 'description': 'COLORMAP_BONE', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'BONE'}, {'srcline': 12, 'description': 'COLORMAP_JET', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'JET'}, {'srcline': 13, 'description': 'COLORMAP_WINTER', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'WINTER'}, {'srcline': 14, 'description': 'COLORMAP_RAINBOW', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'RAINBOW'}, {'srcline': 15, 'description': 'COLORMAP_OCEAN', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': 'OCEAN'}, {'srcline': 16, 'description': 'COLORMAP_SUMMER', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': 'SUMMER'}, {'srcline': 17, 'description': 'COLORMAP_SPRING', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 7, 'ctype': 'int', 'type': 'int', 'name': 'SPRING'}, {'srcline': 18, 'description': 'COLORMAP_COOL', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': 'COOL'}, {'srcline': 19, 'description': 'COLORMAP_HSV', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 9, 'ctype': 'int', 'type': 'int', 'name': 'HSV'}, {'srcline': 20, 'description': 'COLORMAP_PINK', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 10, 'ctype': 'int', 'type': 'int', 'name': 'PINK'}, {'srcline': 21, 'description': 'COLORMAP_HOT', 'srcfile': '/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg', 'cconsttype': 'const int', 'value': 11, 'ctype': 'int', 'type': 'int', 'name': 'HOT'}]}", &ImageViewConfig::colormap)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_image_value = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_image_value = std::numeric_limits<double>::infinity();
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_image_value = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<double>("min_image_value", "double", 0, "Minimum image value for scaling depth/float image.", "", &ImageViewConfig::min_image_value)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<double>("min_image_value", "double", 0, "Minimum image value for scaling depth/float image.", "", &ImageViewConfig::min_image_value)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_image_value = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_image_value = std::numeric_limits<double>::infinity();
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_image_value = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<double>("max_image_value", "double", 0, "Maximum image value for scaling depth/float image.", "", &ImageViewConfig::max_image_value)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ImageViewConfig::AbstractParamDescriptionConstPtr(new ImageViewConfig::ParamDescription<double>("max_image_value", "double", 0, "Maximum image value for scaling depth/float image.", "", &ImageViewConfig::max_image_value)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(ImageViewConfig::AbstractGroupDescriptionConstPtr(new ImageViewConfig::GroupDescription<ImageViewConfig::DEFAULT, ImageViewConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<ImageViewConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<ImageViewConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<ImageViewConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    ImageViewConfig __max__;
    ImageViewConfig __min__;
    ImageViewConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const ImageViewConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static ImageViewConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &ImageViewConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const ImageViewConfig &ImageViewConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const ImageViewConfig &ImageViewConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const ImageViewConfig &ImageViewConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<ImageViewConfig::AbstractParamDescriptionConstPtr> &ImageViewConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<ImageViewConfig::AbstractGroupDescriptionConstPtr> &ImageViewConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const ImageViewConfigStatics *ImageViewConfig::__get_statics__()
  {
    const static ImageViewConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = ImageViewConfigStatics::get_instance();

    return statics;
  }

//#line 9 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_NO_COLORMAP = -1;
//#line 10 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_AUTUMN = 0;
//#line 11 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_BONE = 1;
//#line 12 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_JET = 2;
//#line 13 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_WINTER = 3;
//#line 14 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_RAINBOW = 4;
//#line 15 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_OCEAN = 5;
//#line 16 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_SUMMER = 6;
//#line 17 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_SPRING = 7;
//#line 18 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_COOL = 8;
//#line 19 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_HSV = 9;
//#line 20 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_PINK = 10;
//#line 21 "/tmp/binarydeb/ros-melodic-image-view-1.15.2/cfg/ImageView.cfg"
      const int ImageView_HOT = 11;
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __IMAGEVIEWRECONFIGURATOR_H__
