#include "ros/ros.h"

/* 
    需要实现参数的新增与修改
    需求：首先设置机器人的共享参数，类型，半径（0.12）
        在修改半径
    实现：
        ros::NodeHandle
            setParam
        ros::param
            set


*/
int main(int argc, char *argv[])
{
    // 初始化Ros节点
    ros::init(argc,argv,"set_pram_c");
    // 创建Ros节点句柄
    ros::NodeHandle nh;

    //参数曾
    nh.setParam("type","xiaohuang");
    nh.setParam("radiu",0.12);

    ros::param::set("type_param","xiaobai");
    ros::param::set("radiu_param",0.15);
    //参数删
    
    return 0;
}
