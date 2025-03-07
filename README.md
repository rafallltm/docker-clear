# Script de Limpeza Docker


### passo a passo do que o script faz:

1. **Parar todos os containers em execução**
    ```bash
    echo "🛑 Parando todos os containers..."
    docker stop $(docker ps -aq) 2>/dev/null
    ```

2. **Remover todos os containers**
    ```bash
    echo "🗑 Removendo todos os containers..."
    docker rm $(docker ps -aq) 2>/dev/null
    ```

3. **Remover todas as imagens**
    ```bash
    echo "📦 Removendo todas as imagens..."
    docker rmi -f $(docker images -a -q) 2>/dev/null
    ```

4. **Remover containers parados**
    ```bash
    echo "🚮 Removendo containers parados..."
    docker container prune -f 2>/dev/null
    ```

5. **Remover redes não utilizadas**
    ```bash
    echo "🌐 Removendo redes não utilizadas..."
    docker network prune -f 2>/dev/null
    ```

6. **Executar uma limpeza completa do sistema Docker**
    ```bash
    echo "🧹 Executando limpeza total do Docker..."
    docker system prune -a -f 2>/dev/null
    ```

7. **Limpar cache de build**
    ```bash
    echo "🛠 Limpando cache de build..."
    docker builder prune --all -f 2>/dev/null
    ```

8. **Mensagem de conclusão**
    ```bash
    echo "✅ Limpeza Docker concluída!"
    ```

---
