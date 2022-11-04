#!/usr/bin/env bash
export NDK=/home/kalu/Android/Sdk/ndk/r14b
export PREFIX=`pwd`/build
export SONAME=libffmpegcmd.so

echo NDK-Dir=${NDK}
echo PREFIX=${PREFIX}

root_dir=`pwd`

cd $root_dir/ffmpeg-4.4.3
#./configure
chmod +x ./build_lite.sh
./build_lite.sh
