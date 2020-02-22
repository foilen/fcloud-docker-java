FROM ubuntu:18.04

RUN export TERM=dumb ; \
  apt-get update && apt-get install -y \
    apt-transport-https gnupg \
    curl locales \
    haproxy supervisor \
    openjdk-11-jdk=11.0.6+10-1ubuntu1~18.04.1 \
    less vim unzip \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

CMD /bin/bash
