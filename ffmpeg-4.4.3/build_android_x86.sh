#!/bin/bash
#Change NDK to your Android NDK location
PLATFORM=$NDK/platforms/android-18/arch-x86/
PREBUILT=$NDK/toolchains/x86-4.9/prebuilt/linux-x86_64


GENERAL="\
--enable-small \
--enable-cross-compile \
--extra-libs="-lgcc" \
--arch=x86 \
--cc=$PREBUILT/bin/i686-linux-android-gcc \
--cross-prefix=$PREBUILT/bin/i686-linux-android- \
--nm=$PREBUILT/bin/i686-linux-android-nm \
--extra-cflags="-I${PREFIX}/x264/android/x86/include" \
--extra-ldflags="-L${PREFIX}/x264/android/x86/lib" \
--extra-cflags="-I${PREFIX}/../mp3lame/include" \
--extra-ldflags="-L${PREFIX}/mp3lame/local/x86" "


temp_prefix=${PREFIX}/ffmpeg/android/x86
rm -rf $temp_prefix
export PATH=$PREBUILT/bin/:$PATH/


function build_x86
{
  ./configure \
  --pkg-config="pkg-config --static" \
  --logfile=conflog.txt \
  --target-os=android \
  --prefix=${temp_prefix} \
  ${GENERAL} \
  --sysroot=$PLATFORM \
  --extra-cflags="" \
  --extra-ldflags="-lx264 -Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/li
 -nostdlib -lc -lm -ldl -llog" \
  ${COMMON_SET}


  make clean
  make -j10
  make install

   i686-linux-android-gcc \
   --sysroot=$PLATFORM \
   -L$temp_prefix/lib \
   -shared -o $temp_prefix/${SONAME} \
   -Wl,--whole-archive \
   libavcodec/libavcodec.a \
   libavdevice/libavdevice.a \
   libavfilter/libavfilter.a \
   libavresample/libavresample.a \
   libswresample/libswresample.a \
   libavformat/libavformat.a \
   libavutil/libavutil.a \
   libpostproc/libpostproc.a \
   libswscale/libswscale.a \
   ${PREFIX}/x264/android/x86/lib/libx264.a \
   ${PREFIX}/mp3lame/local/x86/libmp3lame.a \
   -Wl,--no-whole-archive -lm -lz


    cp $temp_prefix/${SONAME} $temp_prefix/libffmpeg-debug.so
    i686-linux-android-strip --strip-unneeded $temp_prefix/${SONAME}

    echo SO-Dir=${temp_prefix}/${SONAME}
}

export PKG_CONFIG_PATH=${PREFIX}/x264/android/x86/lib/pkgconfig
export PKG_CONFIG_LIBDIR=${PREFIX}/x264/android/x86/lib/pkgconfig
#exec /usr/bin/pkg-config "$@"
build_x86

cp config.h $temp_prefix/config.h

echo Android x86 builds finished