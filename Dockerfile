ARG ARCH="amd64" OS="linux"
FROM --platform=linux/amd64 ubuntu:20.04

ENV TZ="Asia/Shanghai"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt-get install -y --no-install-recommends tmux software-properties-common
RUN apt-add-repository -y ppa:jonathonf/vim && apt-get install -y --no-install-recommends vim

