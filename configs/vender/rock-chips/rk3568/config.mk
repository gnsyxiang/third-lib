# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    config.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    04/05 2023 08:59
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        04/05 2023      create the file
# 
#     last modified: 04/05 2023 08:59
# ===============================================================

cross_gcc           := /opt/toolchains/rock-chips/rk3568/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
program_prefix      := aarch64-linux-gnu-
host                := aarch64-linux-gnu

cppflags_com        :=
cflags_com          :=
cxxflags_com        :=
ldflags_com         :=
libs_com            := 

prefix_path         ?= /mnt/nfs/$(vender)/$(chip)

