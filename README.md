# rpi-vision

OpenVX stack to run on RPI

Wrapper to build OpenCV 4.3.0, OpenVX 1.3 impl, and OpenVX samples

## Cross-compile on Linux host

    git clone https://github.com/jwinarske/rpi-vision
    cd rpi-vision

    mkdir build && cd build

    export LLVM_ROOT=/path/to/clang/arm/toolchain/root
    export TARGET_SYSROOT=/path/to/target/sysroot

    cmake .. -DCMAKE_TOOLCHAIN_FILE=`pwd`/../cmake/clang.toolchain.cmake -GNinja

    ninja -j <core count to build with>

## Compile on target

Possible, but not recommened due to OpenCV build time.

## Debian Packaging

### Generate Package

    ninja package

### Display contents of package

    dpkg -c rpi-vision-Release-0.0.1.0-Linux-armhf.deb

### Copy Package to Target

    scp rpi-vision-Release-0.1.0-Linux-armhf.deb pi@192.168.1.100:/home/pi

### Install Package on Target

    sudo apt install ./rpi-vision-Release-0.1.0-Linux-armhf.deb

### Remove Package on Target

    sudo apt purge rpi-vision -y

## Target Sysroot

The easiest approach is to mount your rootfs on host machine, and set TARGET_SYSROOT to point to it.  This is after you install required packages

### Required package beyond base image

    sudo apt-get install libgtk2.0-dev -y

## Mesaured Ninja Build Times

time|48 core @ 1Gbps Internet|16 core @ 48Mbps Internet
-|-|-
|real|5m41.664s|9m57.577s
|user|17m0.860s|27m4.504s
|sys|0m18.386s|0m30.169s

## Build Options

### BUILD_GTK 

Build OpenCV with GTK support.  Defaults to ON

### BUILD_VULKAN

Build OpenCV with Vulkan Support.  Defaults to OFF

### CMAKE_STAGING_PREFIX

If CMAKE_CROSSCOMPILING and this variable has not been set externally,
then the value is set to "${CMAKE_CURRENT_BINARY_DIR}/staging/${CMAKE_INSTALL_PREFIX}".

When setting this variable make the suffix match CMAKE_INSTALL_PREFIX.

### CMAKE_INSTALL_PREFIX

The equivalent to --prefix
