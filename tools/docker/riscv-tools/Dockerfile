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
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git
RUN mkdir /opt/riscv/ && mkdir /opt/riscv/git_work
RUN cd /opt/riscv/git_work && git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
RUN cd /opt/riscv/git_work/riscv-gnu-toolchain && ./configure --prefix=/opt/riscv && make linux
