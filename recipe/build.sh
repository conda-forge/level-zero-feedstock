#! /usr/bin/bash

mkdir build
mkdir install

cmake ${CMAKE_ARGS} -GNinja -DCMAKE_INSTALL_PREFIX="./install" \
    -S ${SRC_DIR}/level-zero \
    -B ./build \
    -Wno-dev

cmake --build ./build --config Release
cmake --build ./build --config Release --target install
