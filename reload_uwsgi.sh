#!/usr/bin/env bash 
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin
cd /root/CS/HappyMO
kill -9 `ps -ef | grep uwsgi | awk '($3==1){print $2}'`
sleep 0.5
nohup uwsgi mysite_uwsgi.ini &
