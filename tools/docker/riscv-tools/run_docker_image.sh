#!/bin/bash

#####
source ./tag.env

#####
uid=$(id -u)
gid=$(id -g)
uid_name=$(id -u -n)
uid_name=${uid_name/ /_}
gid_name=$(id -g -n)
gid_name=${gid_name/ /_}

#####
docker run --rm \
       --net host \
       -e TZ=Asia/Tokyo \
       -e DISPLAY=${DISPLAY} \
       -e ${HOME}=${HOME} \
       -e ${uid}=${uid} \
       -e ${gid}=${gid} \
       -e ${uid_name}=${uid_name} \
       -e ${gid_name}=${gid_name} \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v /home:/home \
       -u ${uid}:${gid} \
       -it ${tag} /bin/bash

