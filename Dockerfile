ARG ARCH="amd64" OS="linux"
FROM --platform=linux/amd64 ubuntu:20.04

ENV TZ="Asia/Shanghai"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt-get install -y --no-install-recommends tmux git software-properties-common curl clangd python3-pip
RUN apt-add-repository -y ppa:jonathonf/vim && apt-get install -y --no-install-recommends vim
RUN cd ~ && git clone https://github.com/weiguoz/zdots.git tmp && cd tmp && mv $(ls -A) .. && cd .. && rm -rf tmp
RUN cd ~ && git clone https://github.com/junegunn/vim-plug.git && mkdir -p ~/.vim/autoload/ && mv vim-plug/plug.vim ~/.vim/autoload/ && rm -rf vim-plug
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash - && apt-get install -y --no-install-recommends nodejs
RUN pip install cmake
