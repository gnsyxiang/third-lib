# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    06/08 2021 14:32
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        06/08 2021      create the file
# 
#     last modified: 06/08 2021 14:32
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../../../..
endif

include $(top_dir)/configs/common_var.mk

_target     := sum_test
_src_com    := sum.cpp sum_test.cpp

all: $(_target)-clean $(_target)-main

include $(sub_target_path)/common_sub_target.mk

cppflags_com += -I.
libs_com += -lgtest_main -lgtest -lpthread

$(_target)-clean:
	$(RM) $(@:-clean=)

$(_target)-main:
	$(CXX) $(_src_com) -o $(@:-main=) $(cflags_com) $(cppflags_com) $(ldflags_com) $(libs_com)


.PHONY: all clean clean_inside distclean list

