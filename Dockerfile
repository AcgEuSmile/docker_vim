FROM docker.io/alpine:latest

ADD ./install.sh /usr/local
ADD ./vimrc /root/.vimrc

RUN ["chmod", "+x", "/usr/local/install.sh"]
RUN /usr/local/install.sh
