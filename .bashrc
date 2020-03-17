# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


export FLUME_HOME=/opt/flume-1.8.0
export PATH=$PATH:$FLUME_HOME/bin/


export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.242.b08-0.el7_7.x86_64
export JRE_HOME=/usr/lib/jvm/jre

export HADOOP_PREFIX=/opt/hadoop-3.1.0
export HADOOP_HOME=/opt/hadoop-3.1.0
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_INSTALL/lib"
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

export PDSH_RCMD_TYPE=ssh

export HIVE_HOME=/opt/hadoop-3.1.0/hive
export PATH=$PATH:$HIVE_HOME/bin:$PATH
export HADOOP_USER_CLASSPATH_FIRST=true
export HIVE_CONF_DIR=/opt/hadoop-3.1.0/hive/conf


alias start-flume='/opt/flume-1.8.0/bin/flume-ng agent -n flume1 -c conf -f /opt/flume-1.8.0/conf/flume.conf  — Dflume.root.logger=INFO,console'
[centos@ip-172-31-39-136 haddop-project]$
