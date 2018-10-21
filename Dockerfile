FROM ubuntu:18.04

RUN export TERM=dumb ; \
  apt-get update && apt-get install -y \
    apt-transport-https gnupg \
    curl \
    haproxy supervisor \
    openjdk-8-jdk=8u181-b13-0ubuntu0.18.04.1 \
    less vim unzip \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD /bin/bash
