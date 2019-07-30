git clone https://github.com/RevanthTolety/Toolchain ~/Toolchain
export ARCH=arm64
export CROSS_COMPILE=~/Toolchain/bin/aarch64-linux-android-
export KBUILD_BUILD_USER=RevanthTolety
export KBUILD_BUILD_HOST=CR-buildserver
mkdir output
make -C $(pwd) O=output sakura_defconfig
make -j32 -C $(pwd) O=output
