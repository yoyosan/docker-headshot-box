FROM ubuntu

RUN dpkg --add-architecture i386

RUN apt-get update -y
#RUN apt-get install -y software-properties-common python-software-properties
#	add-apt-repository -y ppa:ubuntu-wine/ppa && \
#	add-apt-repository -y ppa:webupd8team/java
#RUN apt-get update -y

#RUN apt-get install -y wine1.7 winetricks xvfb 
RUN apt-get install -y openjdk-7-jdk

#RUN apt-get purge -y software-properties-common
RUN apt-get autoclean -y

ADD hsbox/ /root/hsbox
COPY hsbox/demos/ /root/hsbox/demos
WORKDIR /root/hsbox

