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

if(NOT OPENCV_GIT_TAG)
    set(OPENCV_GIT_TAG 4.3.0)
endif()

if(NOT OPENVX_IMPL_GIT_TAG)
    set(OPENVX_IMPL_GIT_TAG openvx_1.3)
endif()

if(NOT OPENVX_SAMPLES_GIT_TAG)
    set(OPENVX_SAMPLES_GIT_TAG master)
endif()

if(NOT OPENVX_TUTORIALS_GIT_TAG)
    set(OPENVX_TUTORIALS_GIT_TAG master)
endif()

option(BUILD_OPENVX_TUTORIAL "Build OpenVX Tutorial Project" ON)
option(BUILD_OPENCV_V4L2 "Build OpenCV_v4l2 Project" ON)

option(BUILD_OPENCV_WITH_NONFREE "Builds OpenCV with Non-Free" ON)

option(BUILD_OPENCV_WITH_QT "Builds OpenCV with QT" OFF)
option(BUILD_OPENCV_WITH_GTK "Builds OpenCV with GTK" ON)
option(BUILD_OPENCV_WITH_GTK_2_X "Build OpenCV with GTK_2_X" ON)
option(BUILD_OPENCV_WITH_OPENGL "Build OpenCV with OpenGL" ON)
option(BUILD_OPENCV_WITH_OPENVX "Build OpenCV with OpenVX" ON)
option(BUILD_OPENCV_WITH_TENGINE "Build OpenCV with OpenVX" OFF)
option(BUILD_OPENCV_WITH_VULKAN "Builds OpenCV with Vulkan Support" OFF)

option(BUILD_OPENCV_WITH_TESTS "Builds OpenCV with Tests" OFF)
option(BUILD_OPENCV_WITH_EXAMPLES "Builds OpenCV with Examples" OFF)
option(BUILD_OPENCV_WITH_PYTHON_EXAMPLES "Install Python Examples with OpenCV build" OFF)

# Use with GCC or when using a Generic Triple with Clang
option(BUILD_OPENCV_WITH_CPU_VFPV3 "Builds OpenCV with -mfpu=vfpv3" OFF)
option(BUILD_OPENCV_WITH_CPU_NEON "Builds OpenCV with -mfpu=neon" OFF)

if(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "arm")
    SET(OPENVX_EXPERIMENTAL_USE_VENUM ON)
endif()

if(NOT TARGET_SYSROOT_TRIPLE)
    set(TARGET_SYSROOT_TRIPLE arm-linux-gnueabihf)
endif()

if(CMAKE_CROSSCOMPILING)
    set(CMAKE_STAGING_PREFIX ${CMAKE_CURRENT_BINARY_DIR}/staging${CMAKE_INSTALL_PREFIX})
else()
    set(CMAKE_STAGING_PREFIX ${CMAKE_INSTALL_PREFIX})
    SET(ENV{PKG_CONFIG_PATH} /usr/lib/${TARGET_SYSROOT_TRIPLE}/pkgconfig:/usr/share/pkgconfig)
endif()

set(EXT_CMAKE_STAGING_PREFIX ${CMAKE_BINARY_DIR}/staging_ext${CMAKE_INSTALL_PREFIX})

message(STATUS "")
message(STATUS "*************************************")
message(STATUS "* OPTIONS                           *")
message(STATUS "*************************************")
message(STATUS "")
message(STATUS "Enviromental Variables")
message(STATUS "")
message(STATUS "MACHINE ............................. $ENV{MACHINE}")
message(STATUS "LLVM_ROOT ........................... $ENV{LLVM_ROOT}")
message(STATUS "TARGET_SYSROOT ...................... $ENV{TARGET_SYSROOT}")
message(STATUS "TARGET_SYSROOT_TRIPLE ............... $ENV{TARGET_SYSROOT_TRIPLE}")
message(STATUS "PKG_CONFIG_PATH ..................... $ENV{PKG_CONFIG_PATH}")
message(STATUS "")
message(STATUS "CMake Variables")
message(STATUS "")
message(STATUS "CMAKE_CROSSCOMPILING ................ ${CMAKE_CROSSCOMPILING}")
message(STATUS "CMAKE_GENERATOR ..................... ${CMAKE_GENERATOR}")
message(STATUS "CMAKE_BUILD_TYPE .................... ${CMAKE_BUILD_TYPE}")
message(STATUS "CMAKE_INSTALL_PREFIX ................ ${CMAKE_INSTALL_PREFIX}")
message(STATUS "CMAKE_STAGING_PREFIX ................ ${CMAKE_STAGING_PREFIX}")
message(STATUS "EXT_CMAKE_STAGING_PREFIX ............ ${EXT_CMAKE_STAGING_PREFIX}")
message(STATUS "")
message(STATUS "OPENCV_GIT_TAG ...................... ${OPENCV_GIT_TAG}")
message(STATUS "OPENVX_IMPL_GIT_TAG ................. ${OPENVX_IMPL_GIT_TAG}")
message(STATUS "OPENVX_SAMPLES_GIT_TAG .............. ${OPENVX_SAMPLES_GIT_TAG}")
message(STATUS "")
message(STATUS "BUILD_OPENVX_TUTORIAL ............... ${BUILD_OPENVX_TUTORIAL}")
message(STATUS "BUILD_OPENCV_V4L2 ................... ${BUILD_OPENCV_V4L2}")
message(STATUS "")
message(STATUS "BUILD_OPENCV_WITH_NONFREE ........... ${BUILD_OPENCV_WITH_VULKAN}")
message(STATUS "BUILD_OPENCV_WITH_TESTS ............. ${BUILD_OPENCV_WITH_TESTS}")
message(STATUS "BUILD_OPENCV_WITH_EXAMPLES .......... ${BUILD_OPENCV_WITH_EXAMPLES}")
message(STATUS "BUILD_OPENCV_WITH_PYTHON_EXAMPLES ... ${BUILD_OPENCV_WITH_PYTHON_EXAMPLES}")
message(STATUS "BUILD_OPENCV_WITH_QT ................ ${BUILD_OPENCV_WITH_QT}")
message(STATUS "BUILD_OPENCV_WITH_GTK ............... ${BUILD_OPENCV_WITH_GTK}")
message(STATUS "BUILD_OPENCV_WITH_GTK_2_X ........... ${BUILD_OPENCV_WITH_GTK_2_X}")
message(STATUS "BUILD_OPENCV_WITH_OPENGL ............ ${BUILD_OPENCV_WITH_OPENGL}")
message(STATUS "BUILD_OPENCV_WITH_OPENVX ............ ${BUILD_OPENCV_WITH_OPENVX}")
message(STATUS "BUILD_OPENCV_WITH_TENGINE ........... ${BUILD_OPENCV_WITH_TENGINE}")
message(STATUS "BUILD_OPENCV_WITH_VULKAN ............ ${BUILD_OPENCV_WITH_VULKAN}")
message(STATUS "BUILD_OPENCV_WITH_CPU_VFPV3 ......... ${BUILD_OPENCV_WITH_CPU_VFPV3}")
message(STATUS "BUILD_OPENCV_WITH_CPU_NEON .......... ${BUILD_OPENCV_WITH_CPU_NEON}")
message(STATUS "")
message(STATUS "OPENVX_EXPERIMENTAL_USE_VENUM ....... ${OPENVX_EXPERIMENTAL_USE_VENUM}")
message(STATUS "")
