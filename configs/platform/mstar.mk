# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    mstar.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    24/07 2021 10:57
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        24/07 2021      create the file
# 
#     last modified: 24/07 2021 10:57
# ===============================================================

toolchains_version  := arm-buildroot-linux-uclibcgnueabihf-4.9.4-uclibc-1.0.31
gcc_name            := arm-buildroot-linux-uclibcgnueabihf

toolchains_bin_path := $(base_toolchains_path)/$(platform)/$(toolchains_version)/bin
gcc_prefix          := $(gcc_name)-
program_prefix      := $(gcc_name)-
host                := $(gcc_name)

cppflags_com        :=
cflags_com          :=
cxxflags_com        :=
ldflags_com         :=
libs_com            := 

prefix_path         ?= $(base_prefix_path)/$(platform)/$(toolchains_version)
