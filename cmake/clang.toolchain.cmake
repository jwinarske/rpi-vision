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

# Enviromental Variables
if(NOT DEFINED ENV{TARGET_SYSROOT_TRIPLE})
    set(TARGET_SYSROOT_TRIPLE arm-linux-gnueabihf)
else()
    set(TARGET_SYSROOT_TRIPLE ENV{TARGET_SYSROOT_TRIPLE})
endif()

if(NOT DEFINED ENV{TARGET_SYSROOT})
    MESSAGE(FATAL_ERROR "Set enviromental variable TARGET_SYSROOT to base path of the target sysroot")
endif()

if(NOT DEFINED ENV{LLVM_ROOT})
    MESSAGE(FATAL_ERROR "Set enviromental variable LLVM_ROOT to base path of cross compile capable LLVM")
endif()

if(NOT DEFINED ENV{MACHINE})
    MESSAGE(FATAL_ERROR "Set enviromental variable MACHINE to one of these: raspberrypi2, raspberrypi3, raspberrypi-cm3, or raspberrypi4")
endif()

SET(TARGET_SYSROOT $ENV{TARGET_SYSROOT})
SET(LLVM_ROOT $ENV{LLVM_ROOT})
SET(MACHINE $ENV{MACHINE})

# Tuning
if(${MACHINE} STREQUAL "raspberrypi2" OR
   ${MACHINE} STREQUAL "raspberrypi3" OR ${MACHINE} STREQUAL "raspberrypi-cm3" OR
   ${MACHINE} STREQUAL "raspberrypi4")

    set(CMAKE_SYSTEM_PROCESSOR arm)

    SET(CLANG_TARGET armv7-neon-vfpv4-linux-gnueabihf)
    SET(INSTALL_TRIPLE_SUFFIX /tls/v7l/neon/vfp) # first path system looks at based on our triple

    STRING(APPEND CMAKE_C_FLAGS " -mthumb")

    if(${MACHINE} STREQUAL "raspberrypi3" OR ${MACHINE} STREQUAL "raspberrypi-cm3")

        STRING(APPEND CMAKE_C_FLAGS " -mcpu=cortex-a53+crc")

    elseif(${MACHINE} STREQUAL "raspberrypi4")

        STRING(APPEND CMAKE_C_FLAGS " -mcpu=cortex-a72+crc+crypto")

    endif()

    SET(GCC_LIB_PATH ${TARGET_SYSROOT}/usr/lib/gcc/${TARGET_SYSROOT_TRIPLE}/8)
    SET(CLANG_LIB_PATH ${LLVM_ROOT}/lib/clang/8.0.0/armv7-linux-gnueabihf/lib)

    SET(PACKAGE_ARCH armhf) # must match target or deb package will not install

    SET(ENV{PKG_CONFIG_PATH} ${TARGET_SYSROOT}/usr/lib/${TARGET_SYSROOT_TRIPLE}/pkgconfig:${TARGET_SYSROOT}/usr/share/pkgconfig)

elseif(${MACHINE} STREQUAL "raspberrypi3-64" OR ${MACHINE} STREQUAL "raspberrypi4-64")

    MESSAGE(FATAL_ERROR "aarch64 not implemented yet")

endif()

SET(CMAKE_ASM_COMPILER_TARGET ${CLANG_TARGET})
SET(CMAKE_CXX_COMPILER_TARGET ${CLANG_TARGET})
SET(CMAKE_C_COMPILER_TARGET ${CLANG_TARGET})

SET(CLANG_C_FLAGS    " -stdlib=libstdc++ -flto -fuse-ld=lld -Wno-unused-command-line-argument")
SET(CLANG_LINK_FLAGS " -stdlib=libstdc++ -fuse-ld=lld -rtlib=compiler-rt")

SET(GCC_STATIC_UNWIND ${GCC_LIB_PATH}/libgcc_eh.a)

# sysroot
SET(CMAKE_SYSROOT ${TARGET_SYSROOT})
SET(CMAKE_FIND_ROOT_PATH ${TARGET_SYSROOT})
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# compiler
SET(CMAKE_ASM_COMPILER ${LLVM_ROOT}/bin/clang)
SET(CMAKE_C_COMPILER ${LLVM_ROOT}/bin/clang)
SET(CMAKE_CXX_COMPILER ${LLVM_ROOT}/bin/clang++)

SET(CMAKE_AR ${LLVM_ROOT}/bin/llvm-ar)
SET(CMAKE_RANLIB ${LLVM_ROOT}/bin/llvm-ranlib)

SET(CMAKE_NM ${LLVM_ROOT}/bin/llvm-nm)
SET(CMAKE_OBJCOPY ${LLVM_ROOT}/bin/llvm-objcopy)
SET(CMAKE_OBJDUMP ${LLVM_ROOT}/bin/llvm-objdump)

# compiler flags
#SET(CLANG_SANITIZE " -fsanitize=address")
#SET(CLANG_SANITIZE " -fsanitize=thread")
#SET(CLANG_SANITIZE " -fsanitize=memory")
#SET(CLANG_SANITIZE " -fsanitize=undefined")
#SET(CLANG_SANITIZE " -fsanitize=dataflow")
#SET(CLANG_SANITIZE " -fsanitize=cfi") # requires -flto
#SET(CLANG_SANITIZE " -fsanitize=safe-stack")
#SET(CLANG_SANITIZE " -fsanitize-recover=alignment -fno-sanitize-trap=alignment")
STRING(APPEND CMAKE_C_FLAGS ${CLANG_SANITIZE})

STRING(APPEND CMAKE_C_FLAGS " ${CLANG_C_FLAGS} -Wl,-L${GCC_LIB_PATH} -Wl,-L${CLANG_LIB_PATH}")

# OpenCV gtk-2.0 workaround -> OpenCV doesn't use pkcfg correctly
STRING(APPEND CMAKE_C_FLAGS " -I${TARGET_SYSROOT}/usr/include/gtk-2.0")
STRING(APPEND CMAKE_C_FLAGS " -I${TARGET_SYSROOT}/usr/lib/${TARGET_SYSROOT_TRIPLE}/gtk-2.0/include")
STRING(APPEND CMAKE_C_FLAGS " -I${TARGET_SYSROOT}/usr/lib/${TARGET_SYSROOT_TRIPLE}/glib-2.0/include")
STRING(APPEND CMAKE_C_FLAGS " -I${TARGET_SYSROOT}/usr/include/cairo")
STRING(APPEND CMAKE_C_FLAGS " -I${TARGET_SYSROOT}/usr/include/pango-1.0")
STRING(APPEND CMAKE_C_FLAGS " -I${TARGET_SYSROOT}/usr/include/gdk-pixbuf-2.0")
STRING(APPEND CMAKE_C_FLAGS " -I${TARGET_SYSROOT}/usr/include/atk-1.0")

SET(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -I${CLANG_CXX_INC}")

SET(CMAKE_SHARED_LINKER_FLAGS "${CLANG_LINK_FLAGS} ${CLANG_SANITIZE}")
SET(CMAKE_EXE_LINKER_FLAGS    "${CLANG_LINK_FLAGS} ${GCC_STATIC_UNWIND} ${CLANG_SANITIZE}")

# packaging variables
set(CPACK_PACKAGING_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})
