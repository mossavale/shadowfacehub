#!/usr/bin/env bash
set -e
LIB="fierce-nick.a"
TAG="golden-anchor-frosty-cedar"
REPO="mossavale/shadowfacehub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
