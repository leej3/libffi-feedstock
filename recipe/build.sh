#!/usr/bin/env bash

./configure --disable-debug --disable-dependency-tracking --prefix="${PREFIX}" \
  --exec-prefix="${PREFIX}" --libdir="${PREFIX}/lib" \
  || { cat config.log; exit 1;}
make
make check
make install

#if [[ $(uname) == "Linux" ]]; then
#  mkdir -p ${PREFIX}/lib
#  mv ${PREFIX}/lib64/* ${PREFIX}/lib/
#fi
