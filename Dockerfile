#继承基础镜像
FROM openjdk:8-jdk-stretch
#作者
MAINTAINER mingxing.li <mingxing.li01@hand-china.com>
#中国上海的时区设置
RUN echo "Asia/shanghai" > /etc/timezone;
#在容器中创建文件目录
RUN mkdir /usr/local/mycat
#讲mycat的jar包放入容器中
COPY  target/Mycat-server-1.6.7.4-test.jar /usr/local/mycat/hand_mycat.jar
#进入容器中直接显示文件目录
WORKDIR /usr/local/mycat
#说明该容器开放了哪些端口
EXPOSE 8066 9066

ENTRYPOINT java -jar /usr/local/mycat/hand_mycat.jar