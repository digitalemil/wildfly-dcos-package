cp /mnt/mesos/sandbox/*war /opt/wildfly-9.0.2.Final/standalone/deployments
cd /opt
tar xf jdk-8u161-linux-x64.tar.gz
ln -s jdk1.8.0_161 java
export JAVA_HOME=/opt/java
export PATH=$JAVA_HOME/bin:$PATH

/opt/wildfly-9.0.2.Final/bin/standalone.sh
