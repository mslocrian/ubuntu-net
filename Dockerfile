FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install curl net-tools inetutils-ping iproute2 tcpdump mtr
