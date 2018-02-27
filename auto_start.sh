#!/bin/sh
chown root:root -R /root/.ssh
chmod -R 700 /root/.ssh
/etc/init.d/ssh start
/opt/hadoop-2.7.4/sbin/start-all.sh
/opt/hadoop-2.7.4/sbin/hadoop-daemons.sh start secondarynamenode
/opt/spark-2.2.0-bin-hadoop2.7/sbin/start-all.sh
/bin/bash
