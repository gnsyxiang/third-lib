# ===============================================================
# 
# Release under GPL-3.0.
# 
# @file    config.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    25/11 2020 16:32
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        25/11 2020      create the file
# 
#     last modified: 25/11 2020 16:32
# ===============================================================

cross_gcc           := /mnt/data/toolchain/MCU/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-
program_prefix      := arm-none-eabi-
host                := arm-linux

CFLAGS              :=
LDFLAGS             :=

prefix_path         ?= /mnt/nfs/$(vender)/$(chip)

