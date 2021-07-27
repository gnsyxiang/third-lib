# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    common_sub_target.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    06/12 2019 14:32
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        06/12 2019      create the file
# 
#     last modified: 06/12 2019 14:32
# ===============================================================

include $(vender_path)/platform_config.mk
include $(vender_path)/platform_config_tmp.mk
include $(sub_target_path)/common_target.mk
include $(sub_target_path)/check_lib.mk

$(target_dir)-make: $(target_dir)-config
	$(call echo-make-msg, $(@:-inside-make=))
	cd $(build_path)/$(@:-make=) && $(make) && make install

reconfig: $(target_dir)-rm-config_ok_mark_path $(target_dir)-config

$(target_dir)-rm-config_ok_mark_path:
	$(RM) $(config_ok_mark_path)

$(target_dir)-zip-src:
ifneq ($(target_dir_path), $(wildcard $(target_dir_path)))
ifneq ($(src_tar_mark_path), $(wildcard $(src_tar_mark_path)))
ifneq ($(src_mark_path).zip, $(wildcard $(src_mark_path).zip))
	cd $(src_path) && \
		$(RM) $(@:-zip-src=).zip && \
		$(WGET) $(project_download_url)
endif
		touch $(src_tar_mark_path)
endif
	cd $(src_path) && \
		$(UNZIP) $(@:-zip-src=).zip
endif

$(target_dir)-bz2-src:
ifneq ($(target_dir_path), $(wildcard $(target_dir_path)))
ifneq ($(src_tar_mark_path), $(wildcard $(src_tar_mark_path)))
ifneq ($(src_mark_path).tar.bz2, $(wildcard $(src_mark_path).tar.bz2))
	cd $(src_path) && \
		$(RM) $(@:-bz2-src=).tar.bz2 && \
		$(WGET) $(project_download_url)
endif
		touch $(src_tar_mark_path)
endif
	cd $(src_path) && \
		$(TAR_BZ2) $(@:-bz2-src=).tar.bz2
endif

$(target_dir)-rename-bz2-src:
ifneq ($(target_dir_path), $(wildcard $(target_dir_path)))
ifneq ($(src_tar_mark_path), $(wildcard $(src_tar_mark_path)))
ifneq ($(src_mark_path).tar.bz2, $(wildcard $(src_mark_path).tar.bz2))
	cd $(src_path) && \
		$(RM) $(@:-rename-bz2-src=).tar.bz2 && \
		$(WGET) $(project_download_url) -O $(@:-rename-bz2-src=).tar.bz2
endif
		touch $(src_tar_mark_path)
endif
	cd $(src_path) && \
		$(TAR_BZ2) $(@:-rename-bz2-src=).tar.bz2
endif

$(target_dir)-gz-src:
ifneq ($(target_dir_path), $(wildcard $(target_dir_path)))
ifneq ($(src_tar_mark_path), $(wildcard $(src_tar_mark_path)))
ifneq ($(src_mark_path).tar.gz, $(wildcard $(src_mark_path).tar.gz))
	cd $(src_path) && \
		$(RM) $(@:-gz-src=).tar.gz && \
		$(WGET) $(project_download_url)
endif
		touch $(src_tar_mark_path)
endif
	cd $(src_path) && \
		$(TAR_GZ) $(@:-gz-src=).tar.gz
endif

$(target_dir)-rename-gz-src:
ifneq ($(target_dir_path), $(wildcard $(target_dir_path)))
ifneq ($(src_tar_mark_path), $(wildcard $(src_tar_mark_path)))
ifneq ($(src_mark_path).tar.gz, $(wildcard $(src_mark_path).tar.gz))
	cd $(src_path) && \
		$(RM) $(@:-rename-gz-src=).tar.gz && \
		$(WGET) $(project_download_url) -O $(@:-rename-gz-src=).tar.gz
endif
		touch $(src_tar_mark_path)
endif
	cd $(src_path) && \
		$(TAR_GZ) $(@:-rename-gz-src=).tar.gz || \
		echo $$?
endif

$(target_dir)-xz-src:
ifneq ($(target_dir_path), $(wildcard $(target_dir_path)))
ifneq ($(src_tar_mark_path), $(wildcard $(src_tar_mark_path)))
ifneq ($(src_mark_path).tar.xz, $(wildcard $(src_mark_path).tar.xz))
	cd $(src_path) && \
		$(RM) $(@:-xz-src=).tar.xz && \
		$(WGET) $(project_download_url)
endif
		touch $(src_tar_mark_path)
endif
	cd $(src_path) && \
		$(TAR_XZ) $(@:-xz-src=).tar.xz
endif

$(target_dir)-rename-xz-src:
ifneq ($(target_dir_path), $(wildcard $(target_dir_path)))
ifneq ($(src_tar_mark_path), $(wildcard $(src_tar_mark_path)))
ifneq ($(src_mark_path).tar.xz, $(wildcard $(src_mark_path).tar.xz))
	cd $(src_path) && \
		$(RM) $(@:-rename-xz-src=).tar.xz && \
		$(WGET) $(project_download_url) -O $(@:-rename-xz-src=).tar.xz
endif
		touch $(src_tar_mark_path)
endif
	cd $(src_path) && \
		$(TAR_XZ) $(@:-rename-xz-src=).tar.xz
endif

clean:
	$(ECHO) "    rm build/$(vender)/$(target_dir)"
	$(RM) $(build_path)/$(target_dir)
	$(RM) $(config_ok_mark_path)

distclean: clean
	$(ECHO) "    rm src/$(target_dir)"
	$(RM) $(src_tar_mark_path)
	$(RM) $(src_path)/$(target_dir)
	$(RM) $(src_path)/$(target_dir).tar.xz*
	$(RM) $(src_path)/$(target_dir).tar.gz*
	$(RM) $(src_path)/$(target_dir).tar.bz2*

list:
ifneq ($(makefile_list), ) # 在顶层显示
	echo -n "$(project) / "
else # 在项目层显示
	$(ECHO) "\tmake \t\t\t- compile $(project)."
endif