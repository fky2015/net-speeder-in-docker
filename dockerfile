FROM alpine:3.6
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
      && apk update \
      && apk upgrade \
      && apk add libnet-dev libpcap-dev libc-dev wget unzip\
      && cd \
      && wget --no-check-certificate https://github.com/snooda/net-speeder/archive/master.zip \
      && unzip master.zip \
      && sh build.sh
