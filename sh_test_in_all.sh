#!/bin/bash
# Add path generate to DIRECTORIES with space
# exemple:
#   DIRECTORIES="./drivers ./YOUR_PATH ."
# Always last add "."
DIRECTORIES="packages/drivers/test test"

BLUE='\033[0;34m'
ORANGE='\033[0;33m'
NONCOLOR='\033[0m'

for DIR in ${DIRECTORIES}; do
    echo "${ORANGE}=======>   ${BLUE}FLUTTER TEST IN ${ORANGE}${DIR}${NONCOLOR}";
    flutter test "${DIR}"
done
