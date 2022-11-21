FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget unzip openjdk-8-jre-headless gosu && \
    wget https://static.tp-link.com/2019/201905/20190508/PharosControl2.0.2_linux.zip && \
    unzip Pharos*.zip && \
    cd PharosControl2.0.2_linux && \
    dpkg -i PharosControl-2.0.2-ub14.noarch.deb && \
    mkdir -p /app/config && \
    mkdir /var/lock/subsys && \
    useradd -m pharoscontrol

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

WORKDIR /opt/pharoscontrol

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/java", "-cp", "/opt/pharoscontrol/lib/*", "com.tplink.hipap.server.backend.PharosControlHeadless"]