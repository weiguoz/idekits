ARG ARCH="amd64" OS="linux"
FROM --platform=linux/amd64 ubuntu:20.04

RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone

COPY statics /idekits/statics

RUN apt update && apt install -y --no-install-recommends tmux git g++
RUN apt install -y software-properties-common && apt-add-repository -y ppa:jonathonf/vim && apt install -y vim
RUN mkdir -p ~/.vim/autoload/ && cp /idekits/statics/vim/plug.vim ~/.vim/autoload/
RUN cd /idekits/statics/tmux && cp tmux.conf ~/.tmux.conf && cp tmux.conf.local ~/.tmux.conf.local
RUN cd /idekits/statics/vim && cp vimrc ~/.vimrc && cp -r dotvim ~/dotvim

# how to install latest nodejs: RUN curl -sL https://deb.nodesource.com/setup_17.x | bash - && apt install -y nodejs
# RUN cd ~ && git clone https://github.com/weiguoz/zdots.git tmp && cd tmp && mv $(ls -A) .. && cd .. && rm -rf tmp

RUN rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*
