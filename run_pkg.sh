#!/bin/bash
# This script installs apps
set -e
set -x

# Official repos
sudo apt-get update
sudo apt-get -y install $(cat ./pkg/apt.txt )

# Snap
sudo snap install $(cat ./pkg/snap.txt)

# Pypi
pip3 install $(cat ./pkg/pip.txt) #Pypi

# RubyGems
gem install jekyll bundler # Jekyll