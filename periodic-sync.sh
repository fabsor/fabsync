#!/bin/bash

if [ $1 ]; then
    sleep=$1
else
    sleep=1h
fi

while [ : ]
do
    ./wifi-sync.sh
    sleep $sleep
done
