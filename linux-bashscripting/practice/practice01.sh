#!/bin/bash
#Log cleanup

LOG_DIR=/var/log
cd $LOG_DIR

cat /dev/null > syslog
cat /dev/null > wtmp
echo "Logs cleaned up."

exit