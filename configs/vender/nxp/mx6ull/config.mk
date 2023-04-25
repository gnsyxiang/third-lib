# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    config.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    25/04 2023 20:22
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        25/04 2023      create the file
# 
#     last modified: 25/04 2023 20:22
# ===============================================================

cross_gcc           := /opt/toolchains/nxp/mx6ull/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
program_prefix      := arm-linux-gnueabihf-
host                := arm-linux-gnueabihf

cppflags_com        :=
cflags_com          :=
cxxflags_com        :=
ldflags_com         :=
libs_com            := 

prefix_path         ?= /mnt/nfs/$(vender)/$(chip)

