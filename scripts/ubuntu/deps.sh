#!/bin/bash

set -e
set -x

sudo apt-get  install -y git && \
sudo apt-get  install -y build-essential libssl-dev libreadline-dev wget curl openssh-server && \
sudo apt-get  install -y gcc make linux-headers-$(uname -r) && \
sudo apt-get  install -y ca-certificates bash && \
sudo apt-get  install -y python-setuptools perl pkg-config software-properties-common python python-pip python-dev && \

sudo easy_install --upgrade pip && \
sudoeasy_install --upgrade setuptools && \

sudo add-apt-repository ppa:git-core/ppa -y && \
sudo apt-get update && \
sudo apt-get install -yqq git && \
sudo apt-get update && \
sudo apt-get upgrade -y && \
sudo apt-get install -y lsof strace && \
sudo apt -y update && apt-get -y upgrade && \
sudo apt -y install software-properties-common && \
sudo apt-add-repository ppa:ansible/ansible && \
sudo apt -y update && \
sudo apt -y install ansible && \
sudo apt-get -y install openssh-server cryptsetup build-essential libssl-dev libreadline-dev zlib1g-dev linux-source dkms nfs-common zip unzip tree screen vim ntp vim-nox
