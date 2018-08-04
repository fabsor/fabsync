#!/bin/bash

set -e
connected=$(termux-wifi-connectioninfo | grep "COMPLETED")
echo $connected
if [ $connected ]; then
    ./sync-folders.sh $1
else
    echo "no wifi, not syncing"
fi
