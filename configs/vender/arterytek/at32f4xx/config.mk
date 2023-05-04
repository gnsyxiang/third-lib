# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    config.mk
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

cross_gcc           := /mnt/data/toolchain/MCU/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-
program_prefix      := arm-none-eabi-
host                := arm-none-eabi

cppflags_com        :=
# cflags_com          := -specs=nano.specs -specs=nosys.specs -mcpu=cortex-m0 -mthumb -ffunction-sections -fdata-sections
cflags_com          := -specs=nano.specs -specs=nosys.specs -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections
cxxflags_com        :=
ldflags_com         :=
libs_com            :=

prefix_path         ?= /mnt/nfs/$(vender)/$(chip)

