#! /usr/bin/bash

mkdir build
mkdir install

cmake -GNinja -DCMAKE_INSTALL_PREFIX="./install" \
    -DZE_LOADER_EXTRA_DRIVER_DIR="${PREFIX}/lib" \
    -S ${SRC_DIR}/level-zero \
    -B ./build \
    -Wno-dev

cmake --build ./build --config Release
cmake --build ./build --config Release --target install
