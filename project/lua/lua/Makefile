# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    18/11 2019 15:37
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        18/11 2019      create the file
# 
#     last modified: 18/11 2019 15:37
# ===============================================================

ifndef top_dir
top_dir := $(shell pwd)/../../..
endif

project                 := lua
project_version         := 5.4.3
project_download_url    := http://www.lua.org/ftp/lua-$(project_version).tar.gz

include $(top_dir)/configs/common_var.mk

all: depend_lib $(target_dir)-make

include $(sub_target_path)/common_sub_target.mk

depend_lib:

$(target_dir)-config: $(target_dir)-gz-src
ifneq ($(config_ok_mark_path), $(wildcard $(config_ok_mark_path)))
	$(MKDIR) $(build_path)/$(@:-config=)

	cd $(build_path)/$(@:-config=) &&               \
        $(CP) $(src_path)/$(@:-config=)/* $(build_path)/$(@:-config=)

	cd $(build_path)/$(@:-config=) &&                                       \
        sed -i 's#/usr/local#$(prefix_path)#g'          Makefile &&         \
        sed -i 's#gcc -std#$(GCC) -std#g'               src/Makefile &&     \
        sed -i 's#AR= ar#AR=$(AR)#g'                    src/Makefile &&     \
        sed -i 's#RANLIB= ranlib#RANLIB=$(RANLIB)#g'    src/Makefile &&     \
        \
        sed -i '/#define LUA_NUMBER	double/i #define LUA_NUMBER_DOUBLE' src/luaconf.h

	$(TOUCH) $(config_ok_mark_path)
endif

.PHONY: all clean distclean list

