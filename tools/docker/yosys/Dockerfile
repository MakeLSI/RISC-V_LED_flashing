FROM ubuntu:18.04
MAINTAINER watari3

##### Get environment variable
ARG uid
ARG gid
ARG uid_name
ARG gid_name
ARG password
ARG home

ENV uid ${uid}
ENV gid ${gid}
ENV uid_name ${uid_name}
ENV gid_name ${gid_name}
ENV password ${password}
ENV home ${home}

##### Install
RUN apt-get -y update && apt-get -y upgrade
RUN add-apt-repository ppa:saltmakrell/ppa
RUN apt-get -y update && apt-get -y install yosys

