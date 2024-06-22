# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    platform_config.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    05/12 2019 16:40
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        05/12 2019      create the file
# 
#     last modified: 05/12 2019 16:40
# ===============================================================

# 可选的平台和芯片有:
# actions
#   ats3607d
# allwinnertech
#   r328
# arterytek
#   at32f4xx
# eeasytech
#   SV823
# fullhan
#   MC6810E
#   MC3312
# hisilicon
#   3536DV100
# ingenic
#   x1830
# nxp
#   mx6ull
# pc
#   ubuntu
#   window
# rock-chips
#   rk3308
#   rk3568
# unisound
#   unione
# esp32
# 	esp32
vender := pc
chip := ubuntu

include $(vender_path)/$(vender)/$(chip)/config.mk

# build为编译的平台，host为运行的平台，target为调试的平台
#
# --host=i686-pc-linux-gnu  指定了生成<可执行文件>运行的平台和系统，运行于X86平台的linux系统
# --host=arm-linux          指定了生成<可执行文件>运行的平台和系统，运行于ARM平台的linux系统
# --target=arm-linux        目标平台是运行于ARM体系结构的linux内核
build   := x86_64-linux-gnu
target  := $(host)

# debug_release   := -ggdb -g -O0 -fstack-protector-all
debug_release   := -O2 -DNDEBUG

AR              := $(cross_gcc)ar
AS              := $(cross_gcc)as
LD              := $(cross_gcc)ld
NM              := $(cross_gcc)nm
CC              := $(cross_gcc)gcc
GCC             := $(cross_gcc)gcc
CPP             := $(cross_gcc)cpp
CXX             := $(cross_gcc)g++
FC              := $(cross_gcc)gfortran
F77             := $(cross_gcc)gfortran
RANLIB          := $(cross_gcc)ranlib
READELF         := $(cross_gcc)readelf
STRIP           := $(cross_gcc)strip
OBJCOPY         := $(cross_gcc)objcopy
OBJDUMP         := $(cross_gcc)objdump

cppflags_com    += -I$(prefix_path)/include $(debug_release)
cppflags_com    += $(cppflags_com) -pipe -W -Wall -Werror=all -ffunction-sections -fdata-sections
cppflags_com    += $(cppflags_com) -Wno-error=unused-parameter -Wno-unused-parameter -Wno-error=unused-result -Wno-unused-result -Wno-error=unused-variable -Wno-error=unused-function
cflags_com      +=
cxxflags_com    +=
ldflags_com     += -L$(prefix_path)/lib -Wl,--gc-sections -Wl,--as-needed
libs_com        +=

include_path    := $(prefix_path)/include
lib_path        := $(prefix_path)/lib
pkg_config_path := $(lib_path)/pkgconfig

