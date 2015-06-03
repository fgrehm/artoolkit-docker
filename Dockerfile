FROM ubuntu:12.04

ENV ARTOOLKIT_CONFIG="v4l2src device=/dev/video0 use-fixed-fps=false ! ffmpegcolorspace ! capsfilter caps=video/x-raw-rgb,bpp=24 ! identity name=artoolkit ! fakesink"

RUN apt-get update \
    && apt-get install -y curl \
    && curl -L http://downloads.sourceforge.net/project/artoolkit/artoolkit/2.72.1/ARToolKit-2.72.1.tgz > /tmp/artoolkit.tgz \
    && cd /opt \
    && tar xfz /tmp/artoolkit.tgz \
    && rm /tmp/artoolkit.tgz

RUN apt-get update \
    && apt-get install -y \
                    pkg-config \
                    libgstreamer0.10-dev \
                    freeglut3-dev \
                    libxi-dev \
                    gstreamer0.10-plugins-good \
                    vim \
                    gstreamer-tools

WORKDIR /opt/ARToolKit

COPY Configure.patch /opt/ARToolKit/Configure.patch
RUN patch < Configure.patch \
    && echo -e "5\ny\ny\n" | ./Configure \
    && make
