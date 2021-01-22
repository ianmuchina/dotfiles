#!/bin/bash
# Installs some essential porgrams
set -e
set -x

# Official repos
sudo apt-get update
sudo apt-get -y install $(cat ./pkg/apt.txt )
pip3 install $(cat ./pkg/pip.txt)