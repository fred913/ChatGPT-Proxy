#!/bin/bash

if ! [ -e config.json ]; then
    curl -O https://raw.githubusercontent.com/acheong08/ChatGPT-Proxy/main/config.example.json
    echo "Config file generated! Please edit it and re-run this script."
    exit 1
fi
docker run -t $* -v $(pwd)/config.json:/app/config.json:ro --network=host fred913/chatgpt_proxy:latest