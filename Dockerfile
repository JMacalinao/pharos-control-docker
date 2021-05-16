FROM ubuntu:18.04 as build

WORKDIR /app

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

RUN apt-get update && \
    apt-get install -y wget unzip openjdk-8-jre-headless && \
    wget https://static.tp-link.com/2019/201905/20190508/PharosControl2.0.2_linux.zip && \
    unzip Pharos*.zip && \
    cd PharosControl2.0.2_linux && \
    dpkg -i PharosControl-2.0.2-ub14.noarch.deb && \
    mkdir /var/lock/subsys && \
    useradd -m pharoscontrol

USER pharoscontrol

WORKDIR /opt/pharoscontrol

ENTRYPOINT ["/app/entrypoint.sh"]