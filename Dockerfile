FROM digitalemil/myrepo:centos72
COPY wildfly-9.0.2.Final /opt/wildfly-9.0.2.Final
COPY jdk-8u161-linux-x64.tar.gz /opt
COPY start.sh /opt/start.sh
ENTRYPOINT /opt/start.sh

