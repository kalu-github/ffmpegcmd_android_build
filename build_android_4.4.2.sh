#!/usr/bin/env bash
export NDK=/Android/Sdk/ndk/android-ndk-r14b
export PREFIX=`pwd`/build
export SONAME=libffmpegcmd.so

echo NDK-Dir=${NDK}
echo PREFIX=${PREFIX}

root_dir=`pwd`
# echo start build libx264
# rm -rf ./build/x264
# cd $root_dir/x264
# chmod +x ./build_android_all.sh
# ./build_android_all.sh
# echo build libx264 end

# echo start build mp3lame
# rm -rf ./build/mp3lame
# cd $root_dir/mp3lame
# $NDK/ndk-build NDK_LIBS_OUT=../build/mp3lame/ NDK_OUT=../build/mp3lame/
# echo build mp3lame end

cd $root_dir/ffmpeg-4.4.2
#./configure
chmod +x ./build_android_all.sh
./build_android_all.sh
