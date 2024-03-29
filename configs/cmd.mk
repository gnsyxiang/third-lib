# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    cmd.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    05/12 2019 17:55
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        05/12 2019      create the file
# 
#     last modified: 05/12 2019 17:55
# ===============================================================

MKDIR           := mkdir -p
RM              := rm -rf
CP              := cp -ar
TOUCH           := touch
ECHO            := $(shell which echo) -e
WGET            := wget
LN              := ln -sf

TAR_BZ2         ?= tar -xjvf
TAR_GZ          ?= tar -xzvf
TAR_XZ          ?= tar -xvf
UNZIP           ?= unzip

