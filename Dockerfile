FROM ubuntu:14.04

RUN dpkg --add-architecture i386

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update -y

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN apt-get install -y libc6-i386

RUN apt-get purge -y software-properties-common
RUN apt-get autoclean -y

ADD hsbox/ /root/hsbox
WORKDIR /root/hsbox
