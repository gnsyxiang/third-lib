# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    himix200.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    16/04 2021 15:17
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        16/04 2021      create the file
# 
#     last modified: 16/04 2021 15:17
# ===============================================================

toolchains_path     := $(base_toolchains_path)/hisi-linux/$(platform)
toolchains_bin_path := $(toolchains_path)/bin
gcc_prefix          := $(platform)-
program_prefix      := $(platform)-
host                := $(platform)

cppflags_com        :=
cflags_com          :=
cxxflags_com        :=
ldflags_com         :=
libs_com            := 

prefix_path         ?= $(base_prefix_path)/hisi-linux/$(platform)
