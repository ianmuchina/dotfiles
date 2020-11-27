#!/bin/bash
export TZ=Africa/Nairobi
export DEBIAN_FRONTEND=noninteractive 
apt-get update
apt-get -y install tzdata
apt-get -y install sudo git