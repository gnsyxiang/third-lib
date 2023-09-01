# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    18/11 2019 10:15
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        18/11 2019      create the file
# 
#     last modified: 18/11 2019 10:15
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../../..
endif

project                 := openssl
project_version         := 3.0.2
project_download_url    := https://www.openssl.org/source/openssl-$(project_version).tar.gz

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make

include $(sub_target_path)/common_sub_target.mk

depend_lib: check_zlib

CONFIG_COM := no-tests \
    zlib \
    --with-zlib-include=$(include_path) \
    --with-zlib-lib=$(lib_path)

$(target_dir)-config: $(target_dir)-gz-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

	case $(host) in                                             \
        x86*)                                                   \
            CONFIG_CONTENT=                                     \
            cd $(build_path)/$(@:-config=) &&                   \
                $(src_path)/$(@:-config=)/Configure             \
                linux-x86_64 $(CONFIG_COM)                      \
                --cross-compile-prefix=$(cross_gcc)             \
                --prefix=$(prefix_path)                         \
                --libdir=$(prefix_path)/lib                     \
            ;;                                                  \
        arm*)                                                   \
            cd $(build_path)/$(@:-config=) &&                   \
                $(src_path)/$(@:-config=)/Configure             \
                linux-generic32 shared no-async $(CONFIG_COM)   \
                --cross-compile-prefix=$(cross_gcc)             \
                --prefix=$(prefix_path)                         \
            ;;                                                  \
        aarch64*)                                               \
            cd $(build_path)/$(@:-config=) &&                   \
                $(src_path)/$(@:-config=)/Configure             \
                linux-generic32 shared no-async $(CONFIG_COM)   \
                --cross-compile-prefix=$(cross_gcc)             \
                --prefix=$(prefix_path)                         \
            ;;                                                  \
    esac

	cd $(build_path)/$(@:-config=) && \
        sed -i 's/^install: install_sw install_ssldirs install_docs/install: install_sw install_ssldirs/' Makefile

	$(TOUCH) $(config_ok_mark_path)
endif

.PHONY: all clean distclean list

