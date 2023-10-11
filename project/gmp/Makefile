# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    30/06 2021 09:57
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        30/06 2021      create the file
# 
#     last modified: 30/06 2021 09:57
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../..
endif

project                 := gmp
project_version         := 6.3.0
project_download_url    := https://gmplib.org/download/gmp/gmp-$(project_version).tar.xz

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make

include $(sub_target_path)/common_sub_target.mk

depend_lib:

$(target_dir)-config: $(target_dir)-xz-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

	cd $(build_path)/$(@:-config=) &&               \
        $(src_path)/$(@:-config=)/configure         \
            CC=$(GCC) CXX=$(CXX)                    \
            CPPFLAGS="$(cppflags_com)"              \
            CFLAGS="$(cflags_com)"                  \
            CXXFLAGS="$(cxxflags_com)"              \
            LDFLAGS="$(ldflags_com)"                \
            LIBS="$(libs_com)"                      \
            PKG_CONFIG_PATH="$(pkg_config_path)"    \
            --prefix=$(prefix_path)                 \
            --build=$(build)                        \
            --host=$(host)                          \
            --target=$(host)                        \
            \


	$(TOUCH) $(config_ok_mark_path)
endif

.PHONY: all clean distclean list

