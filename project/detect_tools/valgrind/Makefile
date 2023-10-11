# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    18/11 2019 11:40
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        18/11 2019      create the file
# 
#     last modified: 18/11 2019 11:40
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../../..
endif

project                 := valgrind
project_version         := 3.21.0
project_download_url    := https://sourceware.org/pub/valgrind/valgrind-$(project_version).tar.bz2

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make

include $(sub_target_path)/common_sub_target.mk

depend_lib:

$(target_dir)-config: $(target_dir)-bz2-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

	cd $(src_path)/$(@:-config=) && \
        ./autogen.sh && \
        sed 's/armv7\*)/armv7\*|arm\*)/g' ./configure > ./configure-bak && \
        chmod +x ./configure-bak

	cd $(build_path)/$(@:-config=) &&               \
        $(src_path)/$(@:-config=)/configure-bak     \
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
            --target=$(host)

# 注意：只支持 armV7、armV8两种arm CPU架构。
# 
# 注意：特别注意安装目录，否则出现如下错误：
# “valgrind: failed to start tool 'memcheck' for vender 'arm-linux': No such file or directory”
# 增加目录路径：
# 	export VALGRIND_LIB=../libexec/valgrind

	$(TOUCH) $(config_ok_mark_path)
endif

.PHONY: all clean distclean debug

