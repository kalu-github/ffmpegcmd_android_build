SRCPATH=.
prefix=/home/kalu/Downloads/ffmpeg-5.1.1-2/build/x264/android/arm
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
SYS_ARCH=ARM
SYS=LINUX
CC=/Android/Sdk/ndk/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc
CFLAGS=-Wno-maybe-uninitialized -Wshadow -O3 -ffast-math  -Wall -I. -I$(SRCPATH) --sysroot=/Android/Sdk/ndk/android-ndk-r14b/platforms/android-16/arch-arm -std=gnu99 -D_GNU_SOURCE -mcpu=cortex-a8 -mfpu=neon -fPIC -fomit-frame-pointer -fno-tree-vectorize -fvisibility=hidden
CFLAGSSO=
CFLAGSCLI=
COMPILER=GNU
COMPILER_STYLE=GNU
DEPMM=-MM -g0
DEPMT=-MT
LD=/Android/Sdk/ndk/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc -o 
LDFLAGS= --sysroot=/Android/Sdk/ndk/android-ndk-r14b/platforms/android-16/arch-arm -lm  -ldl
LDFLAGSCLI=-ldl 
LIBX264=libx264.a
CLI_LIBX264=$(LIBX264)
AR=/Android/Sdk/ndk/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc-ar rc 
RANLIB=/Android/Sdk/ndk/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc-ranlib
STRIP=/Android/Sdk/ndk/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-strip
INSTALL=install
AS=/Android/Sdk/ndk/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc
ASFLAGS= -I. -I$(SRCPATH) -c -DSTACK_ALIGNMENT=4 -DPIC
RC=
RCFLAGS=
EXE=
HAVE_GETOPT_LONG=1
DEVNULL=/dev/null
PROF_GEN_CC=-fprofile-generate
PROF_GEN_LD=-fprofile-generate
PROF_USE_CC=-fprofile-use
PROF_USE_LD=-fprofile-use
HAVE_OPENCL=yes
CC_O=-o $@
default: cli
install: install-cli
default: lib-static
install: install-lib-static
