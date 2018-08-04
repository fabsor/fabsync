#!/bin/bash
set -e

if [ $1 ]; then
    direction=$1
else
    direction="up"
fi

source $HOME/.fabsync

for folder in $FOLDERS
do
    foldername=$(basename $folder)
    if [ "$direction" == "up" ]; then
        echo "s3cmd sync $folder $BUCKET/$foldername/"
    else
        echo "s3cmd sync $BUCKET/$foldername $folder"
    fi
done
