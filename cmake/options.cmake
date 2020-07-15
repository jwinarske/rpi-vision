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

set(OPENCV_GIT_TAG 4.3.0)

set(OPENVX_IMPL_GIT_TAG openvx_1.3)

set(OPENVX_SAMPLES_GIT_TAG master)

# Applies to GCC ARM, or when using a Generic Triple with Clang
option(BUILD_OPENCV_WITH_CPU_VFPV3 "Builds OpenCV with -mfpu=vfpv3" OFF)
option(BUILD_OPENCV_WITH_CPU_NEON "Builds OpenCV with -mfpu=neon" OFF)

# enable if dependent packages are present in your sysroot
option(BUILD_OPENCV_WITH_GTK "Builds OpenCV with GTK support" ON)

# enable if using rpi-vk-driver
option(BUILD_OPENCV_WITH_VULKAN "Builds OpenCV with Vulkan Support" OFF)

if(CMAKE_CROSSCOMPILING)
    set(CMAKE_STAGING_PREFIX ${CMAKE_CURRENT_BINARY_DIR}/staging${CMAKE_INSTALL_PREFIX})
endif()

message(STATUS "Generator .............. ${CMAKE_GENERATOR}")
message(STATUS "Build Type ............. ${CMAKE_BUILD_TYPE}")
message(STATUS "Install Prefix ......... ${CMAKE_INSTALL_PREFIX}")
message(STATUS "Staging Prefix ......... ${CMAKE_STAGING_PREFIX}")
