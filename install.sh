#!/bin/bash

# Colors
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
NC='\e[0m' 



TARGET_DIR="/usr/local/bin"


echo -e "${YELLOW}\n Installing newTor and unlock scripts to $TARGET_DIR...${NC}"


if [[ ! -f ./newTor ]]; then
	echo -e "${RED} ERROR no newTor script ${NC}"
	exit 1
fi

chmod +x ./newTor


sudo cp ./newTor "$TARGET_DIR" > /dev/null 2>&1



if [[ $? -eq 0 ]]; then
    echo -e "${GREEN}Successfully installed newTor $TARGET_DIR ${NC}"
else
    echo -e "${RED} Failed to copy script. Do you have sudo permissions?${NC}"
    exit 1
fi
