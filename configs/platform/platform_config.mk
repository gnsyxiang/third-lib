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

# 配置需要编译的平台
# 可选的平台有: x86_64, r328, rk3308, unione, x1830, ats3607d arm-hisiv510-linux arm-himix200-linux
platform := arm-himix200-linux

# build为编译的平台，host为运行的平台，target为调试的平台
#
# --host=i686-pc-linux-gnu  指定了生成<可执行文件>运行的平台和系统，运行于X86平台的linux系统
# --host=arm-linux 			指定了生成<可执行文件>运行的平台和系统，运行于ARM平台的linux系统
# --target=arm-linux 		目标平台是运行于ARM体系结构的linux内核
build := x86_64-linux-gnu

base_toolchains_path := /opt/toolchains
base_prefix_path := $(HOME)/data/install

_platfrom_dir_path := $(top_dir)/configs/platform

ifeq ($(platform), x86_64)
  include $(_platfrom_dir_path)/x86_64.mk
else ifeq ($(platform), unione)
  include $(_platfrom_dir_path)/unione.mk
else ifeq ($(platform), x1830)
  include $(_platfrom_dir_path)/x1830.mk
else ifeq ($(platform), rk3308)
  include $(_platfrom_dir_path)/rk3308.mk
else ifeq ($(platform), r328)
  include $(_platfrom_dir_path)/r328.mk
else ifeq ($(platform), ats3607d)
  include $(_platfrom_dir_path)/ats3607d.mk
else ifeq ($(platform), arm-hisiv510-linux)
  include $(_platfrom_dir_path)/$(platform).mk
else ifeq ($(platform), arm-himix200-linux)
  include $(_platfrom_dir_path)/$(platform).mk
endif

target 			:= $(host)
program_prefix 	:= $(platform)-

ifneq ($(platform), x86_64)
cross_prefix 	:= $(toolchains_bin_path)/$(gcc_prefix)
endif

AR 	    		:= $(cross_prefix)ar
AS 	    		:= $(cross_prefix)as
LD 	    		:= $(cross_prefix)ld
NM 	    		:= $(cross_prefix)nm
CC 	    		:= $(cross_prefix)gcc
GCC     		:= $(cross_prefix)gcc
CPP     		:= $(cross_prefix)cpp
CXX     		:= $(cross_prefix)g++
FC      		:= $(cross_prefix)gfortran
F77     		:= $(cross_prefix)gfortran
RANLIB  		:= $(cross_prefix)ranlib
READELF 		:= $(cross_prefix)readelf
STRIP   		:= $(cross_prefix)strip
OBJCOPY 		:= $(cross_prefix)objcopy
OBJDUMP 		:= $(cross_prefix)objdump

