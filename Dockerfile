FROM ubuntu:18.04
RUN apt-get update -qq && \
    apt-get install -y software-properties-common --no-install-recommends && \
    add-apt-repository ppa:team-gcc-arm-embedded/ppa -y && \
    apt-get install -y -qq gcc-arm-none-eabi make git && \
    apt-get clean
