#!/bin/sh
#hdd image
hddir=/home/pi/hdd/
#IDは適時変更
sudo rascsi -ID0 ${hddir}HDIMAGE0.HDS
