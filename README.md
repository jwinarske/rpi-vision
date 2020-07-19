# rpi-vision

OpenVX baseline stack targeting embedded Linux.

Builds OpenCV 4.3.0, OpenVX 1.3 sample impl, and OpenVX samples.  Clang toolchain file for RPI3/4 provided.

Use to run opencv examples, opencv test cases, vx tests, or as a template for your RPI Vision project.

## Cross-compile for RPI3 on Linux host

    export MACHINE=raspberrypi3
    export LLVM_ROOT=/path/to/clang/arm/toolchain/root
    export TARGET_SYSROOT=/path/to/target/sysroot

    git clone https://github.com/jwinarske/rpi-vision
    cd rpi-vision
    mkdir build && cd build
    cmake .. -DCMAKE_TOOLCHAIN_FILE=`pwd`/../cmake/clang.toolchain.cmake -GNinja
    ninja -j <core count to build with>

## Compiling on target

Building on target with GCC will not be as performant as when cross compiling with Clang.  This is primarily due to CPU tuning flags.  The binaries will work, albeit much less performant.  If you want optimized tuning when building with GCC on target then you will want to implement a toolchain file that properly implements desired tuning.  Building with Yocto will automatically use optimized CPU tuning.

### Compile on target

    sudo apt get-install cmake
    git clone https://github.com/jwinarske/rpi-vision
    cd rpi-vision
    mkdir build && cd build
    cmake .. -DOPENVX_EXPERIMENTAL_USE_VENUM=ON
    make -j

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

The easiest approach is to mount a fixed up rootfs on your host machine, and point TARGET_SYSROOT to it.  This is after you install the required packages, copy sysroot, and fixup the symlinks.

## Measured Build Times

Config|48 core @ 1Gbps Internet (Ninja)|16 core @ 48Mbps Internet (Ninja)|RPI3 @ 1Gbps Internet (Uniproc Make)
-|-|-|-
|real|5m41.664s|9m57.577s|402m3.774s
|user|17m0.860s|27m4.504s|388m5.277s
|sys|0m18.386s|0m30.169s|14m30.165s

## Enviromental variables

#### MACHINE

*Required with clang.toolchain.cmake*

Available values

    raspberrypi2
    raspberrypi3
    raspberrypi-cm3
    raspberrypi4

#### LLVM_ROOT

*Required with clang.toolchain.cmake*

Point to base folder of your cross compiling capable LLVM toolchain

#### TARGET_SYSROOT

*Required with clang.toolchain.cmake*

Point to base folder of your target sysroot

#### TARGET_SYSROOT_TRIPLE

Defaults to `arm-linux-gnueabihf` if not set.  CMake variable of same name can be overriden if clang.toolchain.cmake is not used.

#### PKG_CONFIG_PATH

This is used by OpenCV to find gtk-2.0 libraries.  The values used are based on a Debian arm-linux-eabihf rootfs.

## CMake Variables

### CMAKE_BUILD_TYPE

Defaults to `Release` if not set otherwise

### CMAKE_INSTALL_PREFIX

Use to set install prefix.  With Linux the default value is `/usr/local`

### OPENCV_GIT_TAG

Defaults to `4.3.0`

### OPENVX_IMPL_GIT_TAG

Defaults to `openvx_1.3`

### OPENVX_SAMPLES_GIT_TAG

Defaults to `master`

### BUILD_OPENCV_WITH_CPU_VFPV3

*Not required to be set when using optimized toolchain file*

Build OpenCV with VFPV3 tuning.  Defaults to OFF

### BUILD_OPENCV_WITH_CPU_NEON

*Not required to be set when using optimized toolchain file*

Build OpenCV with Neon tuning.  Defaults to OFF

### BUILD_OPENCV_WITH_NONFREE

Build OpenCV with Non-Free Support.  Defaults to ON

### BUILD_OPENCV_WITH_VULKAN

Build OpenCV with Vulkan Support.  Defaults to OFF

### BUILD_OPENCV_WITH_TESTS

Build/Install OpenCV with Tests.  Defaults to OFF

### BUILD_OPENCV_WITH_EXAMPLES

Build/Install OpenCV with Examples.  Defaults to OFF

### BUILD_OPENCV_WITH_PYTHON_EXAMPLES

Build/Install OpenCV with Python Examples.  Defaults to OFF

### OPENVX_EXPERIMENTAL_USE_VENUM

You may need to set this when *not* using clang.toolchain.cmake.

## OpenVX Conformance

### Run test

    ssh pi@192.168.1.100
    mkdir test_data
    exit
    cd build
    scp -rp openvx-impl-prefix/src/openvx-impl/cts/test_data/* pi@192.168.1.100:/home/pi/test_data
    ssh pi@192.168.1.100
    cd test_data
    vx_test_conformance > log 2>&1

## OpenCV Tests

    Enable OpenCV tests by setting BUILD_OPENCV_WITH_TESTS=ON

    OpenCV tests were implemented with CTest, and paths are setup to run form the build folder.  When cross compiling there is a minor change to run them.

### Running tests

    export LD_LIBRARY_PATH=/usr/local/lib/tls/v7l/neon/vfp
    opencv_perf_core
    opencv_perf_calib3d
    opencv_perf_core
    opencv_perf_dnn
    opencv_perf_features2d
    opencv_perf_gapi
    opencv_perf_imgcodecs
    opencv_perf_imgproc
    opencv_perf_objdetect
    opencv_perf_photo
    opencv_perf_stitching
    opencv_perf_video
    opencv_perf_videoio

### Results

    =================================
    OpenVX Conformance report summary
    =================================
    
    To be conformant to the OpenVX baseline, 5563 required test(s) must pass. 5563 tests passed, 0 tests failed. PASSED.
    To be conformant to the Vision conformance profile, 5909 required test(s) must pass. 5909 tests passed, 0 tests failed. PASSED.
    To be conformant to the enhanced vision conformance profile, 1221 required test(s) must pass. 1221 tests passed, 0 tests failed. PASSED.
    Note: The 8190 disabled tests are optional and are not considered for conformance.
    
    #REPORT: 20200717095309 ALL 16271 8190 6784 6784 6784 0 (version 1.3)
