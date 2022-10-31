#!/usr/bin/env bash
export NDK=/home/kalu/Android/Sdk/ndk/r14b
export PREFIX=`pwd`/build

echo NDK-Dir=${NDK}
echo PREFIX=${PREFIX}

root_dir=`pwd`

echo start build mp3lame
rm -rf ./build/mp3lame
cd $root_dir/mp3lame
$NDK/ndk-build NDK_LIBS_OUT=../build/mp3lame/ NDK_OUT=../build/mp3lame/
echo build mp3lame end