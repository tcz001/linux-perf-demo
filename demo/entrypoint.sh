#!/bin/bash

set -ev

nohup ttyd --base-path=/bash    -p 60000 /bin/bash &
nohup ttyd --base-path=/top     -p 60001 top &
nohup ttyd --base-path=/pidstat -p 60002 pidstat 5 &
nohup ttyd --base-path=/mpstat  -p 60003 mpstat 5 &
nohup ttyd --base-path=/vmstat  -p 60004 vmstat 5 &
nginx -g "daemon off;"
