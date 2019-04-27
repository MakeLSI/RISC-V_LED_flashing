#!/bin/bash

#####
source ./tag.env

#####
source ./build.env

#####
docker build \
       --no-cache=true \
       --build-arg http_proxy=${http_proxy} \
       --build-arg https_proxy=${https_proxy} \
       --build-arg uid=${uid} \
       --build-arg gid=${gid} \
       --build-arg uid_name=${uid_name} \
       --build-arg gid_name=${gid_name} \
       --build-arg password=${password} \
       --build-arg home=${home} \
       -t ${tag} .
