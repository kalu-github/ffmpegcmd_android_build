#!/usr/bin/env bash

chmod a+x build_android_*.sh

export COMMON_SET="--enable-static \
  --disable-symver \
  --disable-doc \
  --disable-htmlpages \
  --disable-manpages \
  --disable-podpages \
  --disable-txtpages \
  --disable-ffplay \
  --disable-ffmpeg \
  --disable-ffprobe \
  --disable-devices \
  --disable-parsers \
  --enable-bsfs \
  --enable-avdevice \
  --enable-indevs \
  --enable-outdevs \
  --disable-indev=fbdev \
  --disable-outdev=fbdev \
  --disable-postproc \
  --enable-protocols \
  --disable-protocol=ffrtmphttp \
  --disable-protocol=ftp \
  --disable-protocol=hls \
  --disable-protocol=http \
  --disable-protocol=httpproxy \
  --disable-protocol=rtmp \
  --disable-protocol=rtmpt \
  --disable-protocol=rtp \
  --disable-protocol=srtp \
  --disable-protocol=tcp \
  --disable-protocol=udp \
  --disable-protocol=udplite \
  --enable-muxers \
  --enable-demuxers \
  --enable-decoders \
  --enable-encoders \
  --enable-filters \
  --enable-gpl \
  --enable-libx264 \
  --enable-zlib \
  --enable-libmp3lame \
  --enable-jni \
  --enable-nonfree \
  --enable-mediacodec \
  --enable-asm \
  --enable-version3 "

# Build arm v6 v7a
# ./build_android_armeabi.sh

# Build arm v7a
#make distclean
./build_android_armeabi_v7a.sh

# Build arm64 v8a
#make distclean
# ./build_android_arm64_v8a.sh

# Build x86
# ./build_android_x86.sh

# Build x86_64
# ./build_android_x86_64.sh

# Build mips
# ./build_android_mips.sh

# Build mips64   //may fail
# ./build_android_mips64.sh
