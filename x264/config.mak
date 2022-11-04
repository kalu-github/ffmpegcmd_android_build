SRCPATH=.
prefix=/home/kalu/Downloads/ffmpegcmd_android_build/build/x264/android/x84_64
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
SYS_ARCH=X86_64
SYS=LINUX
CC=/home/kalu/Android/Sdk/ndk/r14b/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin/x86_64-linux-android-gcc
CFLAGS=-Wno-maybe-uninitialized -Wshadow -O3 -ffast-math -m64  -Wall -I. -I$(SRCPATH) --sysroot=/home/kalu/Android/Sdk/ndk/r14b/platforms/android-21/arch-x86_64/ -std=gnu99 -D_GNU_SOURCE -fPIC -fomit-frame-pointer -fno-tree-vectorize -fvisibility=hidden
CFLAGSSO=
CFLAGSCLI=
COMPILER=GNU
COMPILER_STYLE=GNU
DEPMM=-MM -g0
DEPMT=-MT
LD=/home/kalu/Android/Sdk/ndk/r14b/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin/x86_64-linux-android-gcc -o 
LDFLAGS=-m64  --sysroot=/home/kalu/Android/Sdk/ndk/r14b/platforms/android-21/arch-x86_64/ -lm  -ldl
LDFLAGSCLI=-ldl 
LIBX264=libx264.a
CLI_LIBX264=$(LIBX264)
AR=/home/kalu/Android/Sdk/ndk/r14b/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin/x86_64-linux-android-gcc-ar rc 
RANLIB=/home/kalu/Android/Sdk/ndk/r14b/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin/x86_64-linux-android-gcc-ranlib
STRIP=/home/kalu/Android/Sdk/ndk/r14b/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin/x86_64-linux-android-strip
INSTALL=install
AS=nasm
ASFLAGS= -I. -I$(SRCPATH) -DARCH_X86_64=1 -I$(SRCPATH)/common/x86/ -f elf64 -DSTACK_ALIGNMENT=16 -DPIC
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
