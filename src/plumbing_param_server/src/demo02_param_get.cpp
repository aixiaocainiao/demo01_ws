#include "ros/ros.h"
/*
    参数服务器操作之查询_C++实现:
    在 roscpp 中提供了两套 API 实现参数操作
    ros::NodeHandle

        param(键,默认值) 
            存在，返回对应结果，否则返回默认值

        getParam(键,存储结果的变量)
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值

        getParamCached键,存储结果的变量)--提高变量获取效率
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值

        getParamNames(std::vector<std::string>)
            获取所有的键,并存储在参数 vector 中 

        hasParam(键)
            是否包含某个键，存在返回 true，否则返回 false

        searchParam(参数1，参数2)
            搜索键，参数1是被搜索的键，参数2存储搜索结果的变量

    ros::param ----- 与 NodeHandle 类似





*/
int main(int argc, char *argv[])
{
    //设置编码
    setlocale(LC_ALL,"");
    //初始化ros节点
    ros::init(argc,argv,"get_param_c");
    //创建节点句柄
    ros::NodeHandle nh;
    /* 
    ros::NodeHandle

        param(键,默认值) 
            存在，返回对应结果，否则返回默认值
     */
    double radiu = nh.param("radiu",0.5);
    ROS_INFO("radiu=%.2f",radiu);

    return 0;
}
