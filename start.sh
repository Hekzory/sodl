#!/bin/bash

# start ollama
docker-compose up -d --build

# ask ollama with supplied message
docker exec -it ollama ollama run llama3.1:8b-instruct-q8_0 "$@"

# give help text
echo "
Continue talking with command: 

./start.sh \"your_text\"

or you may call the ollama directly:

docker exec -it ollama ollama run llama3.1:8b-instruct-q8_0 \"your_text\"

This model is also available via api. Example usage: 

curl http://localhost:11434/api/generate -d '{\"model\":\"llama3.1:8b-instruct-q8_0\", \"prompt\":\"hi!\"}'
"