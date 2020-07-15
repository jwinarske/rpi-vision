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

include_guard()

SET(CMAKE_SYSTEM_VERSION 1)
SET(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# rpi 3+ triple
SET(BUILD_OPENCV_WITH_CPU_VFPV3 OFF)
SET(BUILD_OPENCV_WITH_CPU_NEON OFF)

SET(CMAKE_ASM_COMPILER_TARGET armv7-neon-vfpv4-linux-gnueabihf)
SET(CMAKE_C_COMPILER_TARGET armv7-neon-vfpv4-linux-gnueabihf)
SET(CMAKE_CXX_COMPILER_TARGET armv7-neon-vfpv4-linux-gnueabihf)
SET(INSTALL_LIB_SUFFIX /tls/v7l/neon/vfp) # first path system looks at based on our triple

# 32-bit sysroot
SET(CMAKE_SYSROOT $ENV{TARGET_SYSROOT})
SET(CMAKE_FIND_ROOT_PATH $ENV{TARGET_SYSROOT})
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# compiler
SET(CMAKE_ASM_COMPILER $ENV{LLVM_ROOT}/bin/clang)
SET(CMAKE_C_COMPILER $ENV{LLVM_ROOT}/bin/clang)
SET(CMAKE_CXX_COMPILER $ENV{LLVM_ROOT}/bin/clang++)

SET(CMAKE_AR $ENV{LLVM_ROOT}/bin/llvm-ar CACHE FILEPATH "Archiver")
SET(CMAKE_RANLIB $ENV{LLVM_ROOT}/bin/llvm-ranlib CACHE FILEPATH "Ranlib")

SET(CMAKE_NM $ENV{LLVM_ROOT}/bin/llvm-nm CACHE FILEPATH "nm")
SET(CMAKE_OBJCOPY $ENV{LLVM_ROOT}/bin/llvm-objcopy CACHE FILEPATH "objcopy")
SET(CMAKE_OBJDUMP $ENV{LLVM_ROOT}/bin/llvm-objdump CACHE FILEPATH "objdump")
SET(CMAKE_CXX_COMPILER_AR $ENV{LLVM_ROOT}/bin/llvm-ar CACHE FILEPATH "Archiver")
SET(CMAKE_CXX_COMPILER_RANLIB $ENV{LLVM_ROOT}/bin/llvm-ranlib CACHE FILEPATH "Ranlib")
SET(CMAKE_C_COMPILER_AR $ENV{LLVM_ROOT}/bin/llvm-ar CACHE FILEPATH "Archiver")
SET(CMAKE_C_COMPILER_RANLIB $ENV{LLVM_ROOT}/bin/llvm-ranlib CACHE FILEPATH "Ranlib")

# compiler flags
SET(CMAKE_C_FLAGS "-I$ENV{LLVM_ROOT}/include -I$ENV{TARGET_SYSROOT}/opt/vc/include -flto -fuse-ld=lld")
SET(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS}")
SET(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=lld")
SET(CMAKE_SHARED_LINKER_FLAGS "-fuse-ld=lld")

SET(CMAKE_POSITION_INDEPENDENT_CODE ON)

# packaging variables
#set(CPACK_PACKAGING_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})

SET(PACKAGE_ARCH armhf) # must match target or deb package will not install
