# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    27/04 2021 18:45
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        27/04 2021      create the file
# 
#     last modified: 27/04 2021 18:45
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../../..
endif

project                 := mbedtls
project_version         := 3.0.0
project_download_url    := https://archive.fastgit.org/ARMmbed/mbedtls/archive/refs/tags/v$(project_version).tar.gz

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make

include $(sub_target_path)/common_sub_target.mk

depend_lib:

$(target_dir)-config: $(target_dir)-rename-gz-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

	cd $(build_path)/$(@:-config=) &&           \
        cmake                                   \
        $(src_path)/$(@:-config=)               \
        -DCMAKE_INSTALL_PREFIX=$(prefix_path)   \
        -DCMAKE_C_COMPILER=$(CC)                \
        -DCMAKE_CXX_COMPILER=$(CXX)             \
        \
        -DCMAKE_BUILD_TYPE=RELEASE              \
        -DUSE_SHARED_MBEDTLS_LIBRARY:BOOL=ON    \
        -DENABLE_TESTING:BOOL=OFF

	$(TOUCH) $(config_ok_mark_path)
endif

.PHONY: all clean distclean list

