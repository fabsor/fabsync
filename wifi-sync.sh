#!/bin/bash

set -e

if [ $(termux-wifi-connectioninfo | grep "COMPLETED") ]; then
    ./sync-folders.sh $1
else
    echo "no wifi, not syncing"
fi
