#!/bin/bash

PLATFORM=$NDK/platforms/android-21/arch-x86_64/
TOOLCHAIN=$NDK/toolchains/x86_64-4.9/prebuilt/linux-x86_64

temp_prefix=${PREFIX}/x264/android/x84_64
rm -rf $temp_prefix

function build_one
{
  ./configure \
  --prefix=${temp_prefix} \
  --enable-static \
  --enable-pic \
  --host=x86_64-linux \
  --cross-prefix=$TOOLCHAIN/bin/x86_64-linux-android- \
  --sysroot=$PLATFORM

  make clean
  make
  make install
}

build_one

echo Android x86_64 builds finished
