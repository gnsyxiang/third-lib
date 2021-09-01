# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    yizhi.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    01/09 2021 09:22
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        01/09 2021      create the file
# 
#     last modified: 01/09 2021 09:22
# ===============================================================

gcc_version         := gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf

toolchains_path     := $(base_toolchains_path)/$(vender)/$(gcc_version)/bin
gcc_prefix          := arm-linux-gnueabihf-
program_prefix      := arm-linux-gnueabihf-
host                := arm-linux-gnueabihf

cppflags_com        :=
cflags_com          :=
cxxflags_com        :=
ldflags_com         :=
libs_com            := 

prefix_path         ?= $(base_prefix_path)/$(vender)/$(gcc_version)
