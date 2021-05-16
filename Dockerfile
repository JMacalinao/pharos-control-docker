FROM debian:stable as build

ARG PHAROS_DL="https://static.tp-link.com/2019/201905/20190508/PharosControl2.0.2_linux.zip"
ARG PHAROS_PORT="9321"

WORKDIR /install

RUN apt-get update && \
    apt-get install curl openjdk-8-jre-headless -y
RUN curl -Ss -L $PHAROS_DL | jar xv && \
    dpkg -i PharosControl-2.0.2-ub14.noarch.deb

ENTRYPOINT ["/etc/init.d/pharoscontrol", "start"]