#!/bin/bash

echo "Instalando Wazuh 4.14.1"

mkdir -p ~/wazuh-docker

cd ~/wazuh-docker

git clone --branch v4.14.1 https://github.com/wazuh/wazuh-docker.git

cd wazuh-docker/single-node

echo "Generando certificados..."

docker compose -f generate-indexer-certs.yml run --rm generator

echo "Iniciando servicios..."

docker compose up -d

echo ""
echo "Esperando el despliegue..."
echo ""

sleep 20

echo "verificar servicios levantados"
docker ps
