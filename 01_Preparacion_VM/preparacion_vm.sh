#!/bin/bash

echo "Preparación del sistema Ubuntu"


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
