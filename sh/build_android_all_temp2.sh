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
  --disable-bsfs \
  --disable-devices \
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
  --disable-parsers \
  --disable-muxers \
  --enable-muxer=pcm_s16le \
  --enable-muxer=pcm_s16be \
  --enable-muxer=mp3 \
  --enable-muxer=mov \
  --enable-muxer=mp4 \
  --enable-muxer=image2 \
  --enable-muxer=ipod \
  --enable-muxer=gif \
  --disable-demuxers \
  --enable-demuxer=pcm_s16le \
  --enable-demuxer=pcm_s16be \
  --enable-demuxer=mp3 \
  --enable-demuxer=mov \
  --enable-demuxer=image2 \
  --enable-demuxer=gif \
  --enable-demuxer=wav \
  --enable-demuxer=asf \
  --enable-demuxer=flv \
  --enable-demuxer=avi \
  --enable-demuxer=webm_dash_manifest \
  --enable-demuxer=matroska \
  --enable-demuxer=mpegts \
  --disable-decoders \
  --enable-decoder=pcm_s16le \
  --enable-decoder=pcm_s16be \
  --enable-decoder=aac \
  --enable-decoder=png \
  --enable-decoder=h264 \
  --enable-decoder=mp3 \
  --enable-decoder=mjpeg \
  --enable-decoder=mpeg4 \
  --enable-decoder=gif \
  --enable-decoder=hevc \
  --enable-decoder=msmpeg4v1 \
  --enable-decoder=msmpeg4v2 \
  --enable-decoder=msmpeg4v3 \
  --enable-decoder=wmav1 \
  --enable-decoder=wmav2 \
  --enable-decoder=flv \
  --enable-decoder=adpcm_swf \
  --enable-decoder=ac3 \
  --enable-decoder=vp8 \
  --enable-decoder=vorbis \
  --enable-decoder=mpeg2video \
  --enable-decoder=mp2 \
  --enable-decoder=indeo4 \
  --enable-decoder=amrnb \
  --disable-encoders \
  --enable-encoder=pcm_s16le \
  --enable-encoder=pcm_s16be \
  --enable-encoder=aac \
  --enable-encoder=png \
  --enable-encoder=libmp3lame \
  --enable-encoder=mjpeg \
  --enable-encoder=gif \
  --enable-encoder=libx264 \
  --enable-swscale \
  --disable-filters \
  --enable-filter=crop \
  --enable-filter=scale \
  --enable-filter=afade \
  --enable-filter=atempo \
  --enable-filter=copy \
  --enable-filter=aformat \
  --enable-filter=overlay \
  --enable-filter=vflip \
  --enable-filter=hflip \
  --enable-filter=transpose \
  --enable-filter=volume \
  --enable-filter=rotate \
  --enable-filter=apad \
  --enable-filter=amerge \
  --enable-filter=aresample \
  --enable-filter=setpts \
  --enable-filter=fps \
  --enable-filter=palettegen \
  --enable-filter=paletteuse \
  --enable-filter=trim \
  --enable-filter=null \
  --enable-filter=overlay \
  --enable-filter=format \
  --enable-filter=atrim \
  --enable-filter=split \
  --enable-filter=amix \
  --enable-filter=anull \
  --enable-filter=adelay \
  --enable-filter=anullsrc \
  --enable-filter=adelay \
  --enable-filter=afftdn \
  --enable-filter=pan \
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