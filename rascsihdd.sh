#!/bin/sh
#hdd image
hddir=/home/pi/hdd/
sudo rascsi -ID0 &{hddir}HDIMAGE0.HDS
