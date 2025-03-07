#!/bin/bash

echo "🛑 Parando todos os containers..."
docker stop $(docker ps -aq) 2>/dev/null

echo "🗑 Removendo todos os containers..."
docker rm $(docker ps -aq) 2>/dev/null

echo "📦 Removendo todas as imagens..."
docker rmi -f $(docker images -a -q) 2>/dev/null

echo "🚮 Removendo containers parados..."
docker container prune -f 2>/dev/null

echo "🌐 Removendo redes não utilizadas..."
docker network prune -f 2>/dev/null

echo "🧹 Executando limpeza total do Docker..."
docker system prune -a -f 2>/dev/null

echo "🛠 Limpando cache de build..."
docker builder prune --all -f 2>/dev/null

echo "✅ Limpeza Docker concluída!"