# ===============================================================
# 
# Release under GPL-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    07/04 2020 09:49
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        07/04 2020      create the file
# 
#     last modified: 07/04 2020 09:49
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../../..
endif

project                 := cJSON
project_version         := 1.7.16
project_download_url    := https://codeload.github.com/DaveGamble/cJSON/tar.gz/refs/tags/v$(project_version)

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make_inside

include $(sub_target_path)/common_sub_target.mk

depend_lib:

$(target_dir)-make_inside: $(target_dir)-config
	$(call echo-make-msg, $(@:-make_inside=))
	cd $(build_path)/$(@:-make_inside=) &&                          \
        export CC="$(GCC) -std=c89" export PREFIX=$(prefix_path) && \
        $(make_j1) && make install

$(target_dir)-config: $(target_dir)-rename-gz-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

	cd $(build_path)/$(@:-config=) &&                               \
        $(CP) $(src_path)/$(@:-config=)/* ./ &&                     \
        sed -i 's/CC = gcc -std=c89/CC ?= gcc -std=c89/g' Makefile

	$(TOUCH) $(config_ok_mark_path)
endif

# 使用esp32编译时，需要增加如下配置修改Makefile
        # sed -i 's/all: shared static tests/all: static tests/g' Makefile && \
        # sed -i 's/install: install-cjson install-utils/install: install-cjson-static/g' Makefile && \
        # sed -i '/^install: /i install-cjson-static: \n	mkdir -p \$$(INSTALL_LIBRARY_PATH) \$$(INSTALL_INCLUDE_PATH)' Makefile && \
        # sed -i '/^install: /i \\t\$$(INSTALL) \$$(CJSON_STATIC) \$$(INSTALL_LIBRARY_PATH)' Makefile && \
        # sed -i '/^install: /i \\t\$$(INSTALL) cJSON.h \$$(INSTALL_INCLUDE_PATH)' Makefile && \
        # sed -i '/^install: /i \\t\$$(INSTALL) cJSON_Utils.h \$$(INSTALL_INCLUDE_PATH)\n' Makefile && \

.PHONY: all clean distclean list

