# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    21/04 2021 17:01
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        21/04 2021      create the file
# 
#     last modified: 21/04 2021 17:01
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../..
endif

project                 := pkg-config
project_version         := 0.29.2
project_download_url    := https://pkgconfig.freedesktop.org/releases/pkg-config-$(project_version).tar.gz

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make

include $(sub_target_path)/common_sub_target.mk

depend_lib: check_glib

$(target_dir)-config: $(target_dir)-gz-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

    # https://blog.csdn.net/hexf9632/article/details/102625696
    # 编译glib出现的问题，加了下面的echo语句和-C选项
	cd $(build_path)/$(@:-config=) && \
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

