#!/bin/bash

set -e
connected=$(termux-wifi-connectioninfo)

if [[ $connected = *"CONNECTED"* ]]; then
    ./sync-folders.sh $1
else
    echo "no wifi, not syncing"
fi
