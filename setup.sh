#!/bin/bash

# MiniZed
BOARD="03723093      6    0x9 XC7Z007"

git clone https://github.com/bieganski/xc3sprog
pushd ./xc3sprog > /dev/null
echo $BOARD >> devlist.txt
mkdir -p build
cd build
cmake ..
make -B -j4
sudo make install
popd > /dev/null
