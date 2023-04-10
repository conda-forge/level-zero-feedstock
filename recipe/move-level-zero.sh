#! /usr/bin/bash

set -ex

pushd ${SRC_DIR}
mkdir -p ${PREFIX}/lib
cp -a install/lib*/libze_loader.so.1* ${PREFIX}/lib/
cp -a install/lib*/libze_tracing_layer.so.1* ${PREFIX}/lib/
cp -a install/lib*/libze_validation_layer.so.1* ${PREFIX}/lib/
popd
