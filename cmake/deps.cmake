#
# MIT License
#
# Copyright (c) 2018-2020 Joel Winarske
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

include(ExternalProject)

ExternalProject_Add(opencv
    GIT_REPOSITORY "https://github.com/opencv/opencv.git"
    GIT_TAG ${OPENCV_GIT_TAG}
    GIT_SHALLOW 1
    PATCH_COMMAND ""
    UPDATE_COMMAND ""
    BUILD_IN_SOURCE 0
    CMAKE_ARGS
     -DANDROID_PLATFORM=${ANDROID_PLATFORM}
     -DANDROID_ABI=${ANDROID_ABI}
     -DANDROID_STL=${ANDROID_STL}
     -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
     -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
     -DCMAKE_STAGING_PREFIX=${EXT_CMAKE_STAGING_PREFIX}
     -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
     -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
     -DCMAKE_VERBOSE_MAKEFILE=${CMAKE_VERBOSE_MAKEFILE}
     -DENABLE_VFPV3=${BUILD_OPENCV_WITH_CPU_VFPV3}
     -DENABLE_NEON=${BUILD_OPENCV_WITH_CPU_NEON}
     -DWITH_VULKAN=${BUILD_OPENCV_WITH_VULKAN}
     -DINSTALL_PYTHON_EXAMPLES=${BUILD_OPENCV_WITH_PYTHON_EXAMPLES}
     -DOPENCV_ENABLE_NONFREE=${BUILD_OPENCV_WITH_NONFREE}
     -DBUILD_EXAMPLES=${BUILD_OPENCV_WITH_EXAMPLES}
     -DBUILD_TESTS=${BUILD_OPENCV_WITH_TESTS}
     -DBUILD_PACKAGE=OFF
     -DCMAKE_INSTALL_RPATH=${CMAKE_INSTALL_PREFIX}/lib${INSTALL_TRIPLE_SUFFIX}
     ${OPENCV_ANDROID_ARGS}
)

ExternalProject_Add(openvx-impl
    GIT_REPOSITORY "https://github.com/KhronosGroup/OpenVX-sample-impl.git"
    GIT_TAG ${OPENVX_IMPL_GIT_TAG}
    GIT_SHALLOW 1
    PATCH_COMMAND ""
    UPDATE_COMMAND ""
    BUILD_IN_SOURCE 0
    CMAKE_ARGS
     -DANDROID_PLATFORM=${ANDROID_PLATFORM}
     -DANDROID_ABI=${ANDROID_ABI}
     -DANDROID_STL=${ANDROID_STL}
     -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
     -DCMAKE_STAGING_PREFIX=${EXT_CMAKE_STAGING_PREFIX}
     -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
     -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
     -DCMAKE_VERBOSE_MAKEFILE=${CMAKE_VERBOSE_MAKEFILE}
     -DOPENVX_CONFORMANCE_VISION=ON
     -DOPENVX_CONFORMANCE_NEURAL_NETWORKS=ON
     -DOPENVX_USE_ENHANCED_VISION=ON
     -DEXPERIMENTAL_USE_VENUM=${OPENVX_EXPERIMENTAL_USE_VENUM}
     -DCMAKE_INSTALL_RPATH=${CMAKE_INSTALL_PREFIX}/bin${INSTALL_TRIPLE_SUFFIX}|${CMAKE_INSTALL_PREFIX}/lib${INSTALL_TRIPLE_SUFFIX}
     ${OPENVX_IMPL_ANDROID_ARGS}
)

ExternalProject_Add(openvx-cts
    DOWNLOAD_COMMAND ""
    SOURCE_DIR ${CMAKE_BINARY_DIR}/openvx-impl-prefix/src/openvx-impl/cts
    PATCH_COMMAND ""
    UPDATE_COMMAND ""
    BUILD_IN_SOURCE 0
    LIST_SEPARATOR |
    CMAKE_ARGS
     -DANDROID_PLATFORM=${ANDROID_PLATFORM}
     -DANDROID_ABI=${ANDROID_ABI}
     -DANDROID_STL=${ANDROID_STL}
     -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
     -DCMAKE_STAGING_PREFIX=${EXT_CMAKE_STAGING_PREFIX}
     -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
     -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
     -DCMAKE_VERBOSE_MAKEFILE=${CMAKE_VERBOSE_MAKEFILE}
     -DOPENVX_CONFORMANCE_VISION=ON
     -DOPENVX_CONFROMANCE_NEURAL_NETWORKS=ON
     -DOPENVX_USE_ENHANCED_VISION=ON
     -DEXPERIMENTAL_USE_VENUM=${OPENVX_EXPERIMENTAL_USE_VENUM}
     -DOPENVX_INCLUDES=${EXT_CMAKE_STAGING_PREFIX}/include
     -DOPENVX_LIBRARIES=${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx.so|${EXT_CMAKE_STAGING_PREFIX}/bin/libvxu.so|m
)
add_dependencies(openvx-cts openvx-impl)

ExternalProject_Add(openvx-samples
    GIT_REPOSITORY "https://github.com/jwinarske/openvx-samples-1.git"
    GIT_TAG ${OPENVX_SAMPLES_GIT_TAG}
    GIT_SHALLOW 1
    PATCH_COMMAND ""
    UPDATE_COMMAND ""
    BUILD_IN_SOURCE 0
    LIST_SEPARATOR |
    CMAKE_ARGS
     -DANDROID_PLATFORM=${ANDROID_PLATFORM}
     -DANDROID_ABI=${ANDROID_ABI}
     -DANDROID_STL=${ANDROID_STL}
     -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
     -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
     -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
     -DCMAKE_STAGING_PREFIX=${EXT_CMAKE_STAGING_PREFIX}
     -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
     -DCMAKE_VERBOSE_MAKEFILE=${CMAKE_VERBOSE_MAKEFILE}
     -DOPENVX_INCLUDES=${EXT_CMAKE_STAGING_PREFIX}/include
     -DOPENVX_LIBRARIES=${EXT_CMAKE_STAGING_PREFIX}/bin/libopenvx.so
     -DCMAKE_INSTALL_RPATH=${CMAKE_INSTALL_PREFIX}/bin${INSTALL_TRIPLE_SUFFIX}|${CMAKE_INSTALL_PREFIX}/lib${INSTALL_TRIPLE_SUFFIX}
     ${OPENVX_SAMPLES_ANDROID_ARGS}
)
add_dependencies(openvx-samples opencv)
