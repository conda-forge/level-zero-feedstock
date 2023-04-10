#! /usr/bin/bash

set -ex

pushd ${SRC_DIR}
mkdir -p ${PREFIX}/lib/pkgconfig
mkdir -p ${PREFIX}/include
cp -a install/include/* ${PREFIX}/include/
cp -a install/lib*/pkgconfig/* ${PREFIX}/lib/pkgconfig
cp -a install/lib*/libze_loader.so ${PREFIX}/lib/
cp -a install/lib*/libze_tracing_layer.so ${PREFIX}/lib/
cp -a install/lib*/libze_validation_layer.so ${PREFIX}/lib/
popd
