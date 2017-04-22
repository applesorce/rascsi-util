#!/bin/sh
# gpio9があれば作成しない、なければ作る
if [ -e /sys/class/gpio/gpio9 ]; then
    echo ""
else
    echo "9" > /sys/class/gpio/export
    echo "out" > /sys/class/gpio/gpio9/direction
fi

if [ $1 = on ]; then
        echo "x68000 remote power ON"
        echo "1" > /sys/class/gpio/gpio9/value
        sleep 1
elif [ $1 = off ]; then
        echo "x68000 remote power OFF"
        echo "0" > /sys/class/gpio/gpio9/value
        sleep 1
else
        echo "please option on or off!!"
        sleep 1
fi
