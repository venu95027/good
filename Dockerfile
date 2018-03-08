FROM tomcat
FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get update
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get update
RUN apt-get install -y ssh
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install sudo
COPY  ${WORKSPACE}/target/gamutkart.war /usr/local/tomcat/webapps
EXPOSE 8080
ENTRYPOINT service ssh start && bash  
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash  