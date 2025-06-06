#!/bin/bash


TARGET_DIR="/usr/local/bin"

# Colors
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
NC='\e[0m' 



sudo rm "${TARGET_DIR}/newTor" > /dev/null 2>&1

if [[ $? -eq 0 ]]; then
    echo -e "${GREEN}Successfully removed newTor ${NC}"
else
    echo -e "${RED} Failed to remove !!! ${NC}"
    exit 1
fi
