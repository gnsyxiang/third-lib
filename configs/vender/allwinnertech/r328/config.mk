# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    config.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    05/12 2019 16:27
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        05/12 2019      create the file
# 
#     last modified: 05/12 2019 16:27
# ===============================================================

cross_gcc           :=
TOOLCHAINS_INC_DIR  := $(toolchains_path)/include
program_prefix      := arm-openwrt-linux-
host                := arm-linux

CFLAGS              :=
LDFLAGS             :=

STAGING_DIR         := $(toolchains_path)
export STAGING_DIR

prefix_path         ?= /mnt/nfs/$(vender)/$(chip)

