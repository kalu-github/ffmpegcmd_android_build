#!/bin/bash

#arm64 最小必须是android-21
PLATFORM=$NDK/platforms/android-21/arch-arm64
TOOLCHAIN=$NDK/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64

temp_prefix=${PREFIX}/x264/android/arm64
rm -rf $temp_prefix

function build_one
{
  ./configure \
  --prefix=$temp_prefix \
  --enable-static \
  --enable-pic \
  --host=aarch64-linux \
  --cross-prefix=$TOOLCHAIN/bin/aarch64-linux-android- \
  --sysroot=$PLATFORM

  make clean
  make -j10
  make install
}

build_one

echo Android ARM64 builds finished
