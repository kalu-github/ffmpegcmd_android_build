#!/bin/bash

PLATFORM=$NDK/platforms/android-18/arch-x86/
TOOLCHAIN=$NDK/toolchains/x86-4.9/prebuilt/linux-x86_64

temp_prefix=${PREFIX}/x264/android/x86
rm -rf $temp_prefix

function build_one
{
  ./configure \
  --prefix=${temp_prefix} \
  --enable-static \
  --enable-pic \
  --host=i686-linux \
  --cross-prefix=$TOOLCHAIN/bin/i686-linux-android- \
  --sysroot=$PLATFORM

  make clean
  make
  make install
}

build_one

echo Android x86 builds finished
