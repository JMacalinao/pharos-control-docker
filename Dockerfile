FROM ubuntu:18.04 as build

WORKDIR /install

RUN apt-get update && \
    apt-get install -y wget openjdk-8-jre-headless
RUN wget https://static.tp-link.com/2019/201905/20190508/PharosControl2.0.2_linux.zip && \
    unzip Pharos*.zip && \
    cd PharosControl2.0.2_linux && \
    dpkg -i PharosControl-2.0.2-ub14.noarch.deb

ENTRYPOINT ["/etc/init.d/pharoscontrol", "start"]