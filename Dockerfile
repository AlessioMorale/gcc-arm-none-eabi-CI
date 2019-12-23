FROM ubuntu:18.04
RUN apt-get update -qq && \
    apt-get install -y software-properties-common --no-install-recommends && \
    apt-get install -y -qq  curl make git autoconf libtool g++ && \
    apt-get clean && \
    curl  -L "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2" --output /tmp/gcc-arm-none-eabi.tar.bz2 && \
    mkdir -p /opt && \
    cd /opt && \
    tar xjf /tmp/gcc-arm-none-eabi.tar.bz2 && \
    rm /tmp/gcc-arm-none-eabi.tar.bz2

    ENV PATH "$PATH:/opt/gcc-arm-none-eabi-9-2019-q4-major/bin"


