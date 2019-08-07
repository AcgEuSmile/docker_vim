FROM docker.io/ubuntu:latest

ADD ./install.sh /usr/local
ADD ./vimrc /root/.vimrc

RUN ["chmod", "+x", "/usr/local/install.sh"] \
    && /usr/local/install.sh
