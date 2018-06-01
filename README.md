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
## 使用方法
```
docker run -d your-image-tag 
```
## 其他