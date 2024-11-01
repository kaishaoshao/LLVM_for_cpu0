#!/bin/bash
CXX_COMPILER="-DCMAKE_CXX_COMPILER"
C_COMPILER="-DCMAKE_C_COMPILER"
BUILD_TYPE="-DCMAKE_BUILD_TYPE"
TARGET="-DLLVM_TARGETS_TO_BUILD"

test_sh="./test/shell"
if [ "$1"=="" ]; then
    mkdir -p build
    cd build
    cmake ${CXX_COMPILER}=clang++ ${C_COMPILER}=clang ${BUILD_TYPE}=Debug ${TARGET}=Cpu0 -G "Ninja" ../llvm
    ninja
elif [ "$1"=="--ch1" ]; then
    bash ${test_sh}/ch1.sh
elif [ "$1"=="--ch2" ]; then
  echo "ch2"
else
  echo "no"
fi