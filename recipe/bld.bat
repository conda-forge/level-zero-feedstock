
mkdir build
mkdir install

cmake -G Ninja -DCMAKE_INSTALL_PREFIX="install" ^
    -S ${SRC_DIR}\level-zero ^
    -B build ^
    -Wno-dev

cmake --build ${SRC_DIR}/build --config Release
cmake --build ${SRC_DIR}/build --config Release --target install

