FROM ubuntu:18.04 as build

WORKDIR /install

RUN apt-get update && \
    apt-get install -y wget unzip openjdk-8-jre-headless && \
    wget https://static.tp-link.com/2019/201905/20190508/PharosControl2.0.2_linux.zip && \
    unzip Pharos*.zip && \
    cd PharosControl2.0.2_linux && \
    dpkg -i PharosControl-2.0.2-ub14.noarch.deb

ENTRYPOINT ["/usr/bin/java", "-server", "-Xms128m", "-Xmx1024m", "-XX:MaxHeapFreeRatio=60", "-XX:MinHeapFreeRatio=30", "-XX:+HeapDumpOnOutOfMemoryError", "-cp", "/opt/pharoscontrol/lib/*", "com.tplink.hipap.server.backend.PharosControlHeadless"]