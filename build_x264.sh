#!/usr/bin/env bash
export NDK=/home/kalu/Android/Sdk/ndk/r14b
export PREFIX=`pwd`/build

echo NDK-Dir=${NDK}
echo PREFIX=${PREFIX}

# ./configure --enable-static --enable-shared --enable-visualize --system-libx264 --enable-gprof --enable-strip --enable-pic --enable-debug

root_dir=`pwd`
echo start build libx264
rm -rf ./build/x264
cd $root_dir/x264
chmod +x ./build_android_all.sh
./build_android_all.sh
echo build libx264 end