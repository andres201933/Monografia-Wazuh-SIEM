#!/bin/bash

echo "Preparación del sistema Ubuntu"

sudo lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
sudo resize2fs /dev/ubuntu-vg/ubuntu-lv

sudo apt update
sudo apt upgrade -y

sudo apt install -y \
curl \
wget \
git \
ca-certificates \
gnupg \
lsb-release \
net-tools
