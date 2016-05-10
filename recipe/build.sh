#!/usr/bin/env bash

sed -i 's:@toolexeclibdir@:$(libdir):g' Makefile.in
#  --exec-prefix="${PREFIX}" --libdir="${PREFIX}/lib" \
./configure --disable-debug --disable-dependency-tracking --prefix="${PREFIX}" \
  || { cat config.log; exit 1;}
make
make check
make install

#if [[ $(uname) == "Linux" ]]; then
#  mkdir -p ${PREFIX}/lib
#  mv ${PREFIX}/lib64/* ${PREFIX}/lib/
#fi
