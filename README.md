# net-speeder-in-docker
该项目将net-speeder迁移到容器上，方便快速和弹性地使用。
原项目：[net-speeder](https://github.com/snooda/net-speeder)  by snooda

## 安装方法

利用dockerfile进行本地build
```
docker build -t your-image-tag .
```

## 项目介绍

本项目将原有的net-speeder容器化，利用host网络模式来实现对网卡加速
实现快速部署
并为以后的弹性化部署以及ss容器化提供加速方式

## 使用方法
```
docker run -d --network host your-image-tag eth0 ip
```
注意network必须设置为host
eth0 是网卡
ip 表示所加速的协议

也可以
```
docker run -d --network host your-image-tag docker0 ip
```
来加速docker0,

## 注意事项
请注意不同虚拟平台的用户要改变编译方式，
详见原项目