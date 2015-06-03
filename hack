#!/bin/bash

xhost +

docker run -ti --rm --privileged \
           -e DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $HOME/.Xauthority:/root/.Xauthority \
           --device /dev/video0 \
           artoolkit-deps

xhost -
