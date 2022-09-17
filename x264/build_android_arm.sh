#!/bin/bash

PLATFORM=$NDK/platforms/android-16/arch-arm
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64

temp_prefix=${PREFIX}/x264/android/arm
rm -rf $temp_prefix

function build_one
{
  ./configure \
  --prefix=${temp_prefix} \
  --enable-static \
  --enable-pic \
  --host=arm-linux \
  --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
  --sysroot=$PLATFORM

  make clean
  make -j10
  make install
}

build_one

echo Android ARM builds finished
