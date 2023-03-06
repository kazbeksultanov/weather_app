#!/bin/bash
# Add path generate to DIRECTORIES with space
# example:
#   DIRECTORIES="./drivers ./YOUR_PATH ."
# Always last add "."
DIRECTORIES="./drivers ."

BLUE='\033[0;34m'
ORANGE='\033[0;33m'
NONCOLOR='\033[0m'

for DIR in ${DIRECTORIES}; do
    cd "${DIR}" || exit
    echo "${ORANGE}=======>   ${BLUE}PUB GET IN ${ORANGE}${DIR}${NONCOLOR}";
    flutter clean
    flutter pub get
    flutter packages pub get
    echo "${ORANGE}=======>   ${BLUE}GENERATE IN ${ORANGE}${DIR} 🔨🔨🔨${NONCOLOR}";
    flutter packages pub run build_runner build --delete-conflicting-outputs
    cd ..
done
