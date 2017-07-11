#!/bin/sh
#hdd image
#HDイメージは以下へ作ること、IDは適時変更すること
hddir=/home/pi/hdd/
sudo rascsi -ID0 ${hddir}HDIMAGE0.HDS -ID6 bridge
