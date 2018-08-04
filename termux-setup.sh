#!/bin/bash

pkg install python
pkg install termux-api
pip install s3cmd

s3cmd --configure
