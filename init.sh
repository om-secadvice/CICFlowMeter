#!/bin/bash
# Install JDK-8, MAVEN, Gradle and libpcap-dev
sudo apt-get -y install openjdk-8-jdk openjdk-8-jre
sudo apt-get -y install maven gradle libpcap-dev

# Set JAVA_HOME
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/" >> ~/.bash_aliases
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bash_aliases

cd CICFlowMeter/jnetpcap/linux/jnetpcap-1.4.r1425/
sudo cp libjnetpcap.so libjnetpcap-100.so /usr/lib/
mvn install:install-file -Dfile=jnetpcap.jar -DgroupId=org.jnetpcap -DartifactId=jnetpcap -Dversion=1.4.1 -Dpackaging=jar
cd ../../../
gradle exeCMD


