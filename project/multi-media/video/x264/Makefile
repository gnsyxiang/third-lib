# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    02/06 2021 15:09
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        02/06 2021      create the file
# 
#     last modified: 02/06 2021 15:09
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../../../..
endif

project                 := x264
project_version         := stable
project_download_url    := https://code.videolan.org/videolan/x264/-/archive/$(project_version)/x264-$(project_version).tar.gz

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make_inside

include $(sub_target_path)/common_sub_target.mk

depend_lib: check_zlib check_nasm

$(target_dir)-make_inside: $(target_dir)-config
	$(call echo-make-msg, $(@:-inside-make_inside=))
	export PATH=$(PATH):$(prefix_path)/bin && \
	cd $(build_path)/$(@:-make_inside=) && \
	$(make) && make install

$(target_dir)-config: $(target_dir)-gz-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

	export PATH=$(PATH):$(prefix_path)/bin && \
    cd $(build_path)/$(@:-config=) &&                       \
        $(src_path)/$(@:-config=)/configure                 \
            --prefix=$(prefix_path)                         \
            --cross-prefix=$(cross_gcc)                     \
            --host=$(host)                                  \
            \
            --enable-static                                 \
            --enable-shared                                 \
            --extra-cflags="$(cflags_com) $(cppflags_com)"  \
            --extra-ldflags="$(ldflags_com)"                \
            --extra-asflags=                                \
            --extra-rcflags=

	$(TOUCH) $(config_ok_mark_path)
endif

.PHONY: all clean distclean list

