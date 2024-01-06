# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    config.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    06/01 2024 10:16
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        06/01 2024      create the file
# 
#     last modified: 06/01 2024 10:16
# ===============================================================

cross_gcc           := /opt/toolchains/esp32/xtensa-esp32-elf/esp-2022r1-11.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-
host                := xtensa-esp32-elf

cppflags_com        := -mlongcalls
cflags_com          :=
cxxflags_com        :=
ldflags_com         :=
libs_com            := 

prefix_path         ?= /mnt/nfs/$(vender)/$(chip)

