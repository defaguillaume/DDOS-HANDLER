#!/bin/bash
echo Vegeta Install
# DL via CURL

curl -LO https://github.com/tsenart/vegeta/releases/download/v12.7.0/vegeta-12.7.0-linux-amd64.tar.gz

# Dezip the tar file

tar -zxvf vegeta-12.7.0-linux-amd64.tar.gz

# Move bin in /usr/bin

sudo mv ./vegeta /usr/bin/vegeta

# Check if vegeta is correctly installed

vegeta --version