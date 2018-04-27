#!/bin/sh

chmod 777 /dev/ttyS0
stty -F /dev/ttyS0 1000000
socat /dev/ttyS0,raw,echo=0,nonblock UDP4:192.168.1.41:15050
#waiting for wi-fi connect
sleep 5
