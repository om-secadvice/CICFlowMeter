# Dependencies
  * JDK 8
  * Maven
  * Gradle
  * libpcap-dev

--> Ensure JAVA_HOME is set to JDK-8 and JAVA_HOME/bin is included in PATH 

**init.sh** contains script for installing all dependencies setting JAVA_HOME and compiling all source code
### If dependencies are already installed then comment these lines in init.sh
```
# Install JDK-8, MAVEN, Gradle and libpcap-dev
# sudo apt-get -y install openjdk-8-jdk openjdk-8-jre
# sudo apt-get -y install maven gradle libpcap-dev

# Set JAVA_HOME
# echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/" >> ~/.bash_aliases
# echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bash_aliases
```

## Setup
cd into CICFlowMeter
```
$ chmod u+x init.sh
$ ./init.sh
```

# Extracting Flow Features from PCAP files
```
$ cd CICFlowMeter
$ gradle execute
```
Select *Network* >> *Offline*  
**Note:** Selecting input directory having many huge pcap files can give memory error, so divide all pcap files into batches and put in different directories
