# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    check_lib.mk
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    25/04 2021 13:38
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        25/04 2021      create the file
# 
#     last modified: 25/04 2021 13:38
# ===============================================================

_gmp_file := $(prefix_path)/include/gmp.h
check_gmp:
ifneq ($(_gmp_file), $(wildcard $(_gmp_file)))
	$(ECHO) "\tuse \"make lib=gmp\" first to compile gmp."
	$(ECHO) ''
	exit 1
endif

# audio
_libogg_file := $(prefix_path)/include/ogg/ogg.h
check_libogg:
ifneq ($(_libogg_file), $(wildcard $(_libogg_file)))
	$(ECHO) "\tuse \"make lib=libogg\" first to compile libogg."
	$(ECHO) ''
	exit 1
endif

_libvorbis_file := $(prefix_path)/include/vorbis/codec.h
check_libvorbis:
ifneq ($(_libvorbis_file), $(wildcard $(_libvorbis_file)))
	$(ECHO) "\tuse \"make lib=libvorbis\" first to compile libvorbis."
	$(ECHO) ''
	exit 1
endif

_flac_file := $(prefix_path)/include/FLAC/all.h
check_flac:
ifneq ($(_flac_file), $(wildcard $(_flac_file)))
	$(ECHO) "\tuse \"make lib=flac\" first to compile flac."
	$(ECHO) ''
	exit 1
endif

_opus_file := $(prefix_path)/include/opus/opus.h
check_opus:
ifneq ($(_opus_file), $(wildcard $(_opus_file)))
	$(ECHO) "\tuse \"make lib=opus\" first to compile opus."
	$(ECHO) ''
	exit 1
endif

_libopusenc_file := $(prefix_path)/include/opus/opusenc.h
check_libopusenc:
ifneq ($(_libopusenc_file), $(wildcard $(_libopusenc_file)))
	$(ECHO) "\tuse \"make lib=libopusenc\" first to compile libopusenc."
	$(ECHO) ''
	exit 1
endif

_opusfile_file := $(prefix_path)/include/opus/opusfile.h
check_opusfile:
ifneq ($(_opusfile_file), $(wildcard $(_opusfile_file)))
	$(ECHO) "\tuse \"make lib=opusfile\" first to compile opusfile."
	$(ECHO) ''
	exit 1
endif

# lua
_lua_file := $(prefix_path)/include/lua.h
check_lua:
ifneq ($(_lua_file), $(wildcard $(_lua_file)))
	$(ECHO) "\tuse \"make lib=lua \" first to compile lua."
	$(ECHO) ''
	exit 1
endif

_xz_file := $(prefix_path)/include/lzma.h
check_xz:
ifneq ($(_xz_file), $(wildcard $(_xz_file)))
	$(ECHO) "\tuse \"make lib=xz \" first to compile xz."
	$(ECHO) ''
	exit 1
endif

_zlib_file := $(prefix_path)/include/zlib.h
check_zlib:
ifneq ($(_zlib_file), $(wildcard $(_zlib_file)))
	$(ECHO) "\tuse \"make lib=zlib \" first to compile zlib."
	$(ECHO) ''
	exit 1
endif

_libiconv_file := $(prefix_path)/include/iconv.h
check_libiconv:
ifneq ($(_libiconv_file), $(wildcard $(_libiconv_file)))
	$(ECHO) "\tuse \"make lib=libiconv \" first to compile iconv."
	$(ECHO) ''
	exit 1
endif

_openssl_dir := $(prefix_path)/include/openssl
check_openssl: check_zlib
ifneq ($(_openssl_dir), $(wildcard $(_openssl_dir)))
	$(ECHO) "\tuse \"make lib=openssl\" first to compile openssl."
	$(ECHO) ''
	exit 1
endif

_libnl3_file := $(prefix_path)/include/libnl3/netlink/netlink.h
check_libnl3:
ifneq ($(_libnl3_file), $(wildcard $(_libnl3_file)))
	$(ECHO) "\tuse \"make lib=libnl\" first to compile libnl."
	$(ECHO) ''
	exit 1
endif

_png_file := $(prefix_path)/include/png.h
check_libpng:
ifneq ($(_png_file), $(wildcard $(_png_file)))
	$(ECHO) "\tuse \"make lib=libpng \" first to compile libpng."
	$(ECHO) ''
	exit 1
endif

_jpeglib_file := $(prefix_path)/include/jpeglib.h
check_jpeglib:
ifneq ($(_jpeglib_file), $(wildcard $(_jpeglib_file)))
	$(ECHO) "\tuse \"make lib=libjpeg \" first to compile libjpeg."
	$(ECHO) ''
	exit 1
endif

_libffi_file := $(prefix_path)/include/ffi.h
check_libffi:
ifneq ($(_libffi_file), $(wildcard $(_libffi_file)))
	$(ECHO) "\tuse \"make lib=libffi \" first to compile libffi."
	$(ECHO) ''
	exit 1
endif

_freetype2_dir := $(prefix_path)/include/freetype2
check_freetype:
ifneq ($(_freetype2_dir), $(wildcard $(_freetype2_dir)))
	$(ECHO) "\tuse \"make lib=freetype \" first to compile freetype."
	$(ECHO) ''
	exit 1
endif

# gnome
_glib_file := $(prefix_path)/include/glib-2.0/glib.h
check_glib:
ifneq ($(_glib_file), $(wildcard $(_glib_file)))
	$(ECHO) "\tuse \"make lib=glib \" first to compile glib."
	$(ECHO) ''
	exit 1
endif

_ncursesw_dir := $(prefix_path)/include/ncursesw
check_ncursesw:
ifneq ($(_ncursesw_dir), $(wildcard $(_ncursesw_dir)))
	$(ECHO) "\tuse \"make lib=ncurses\" first to  compile ncurses."
	$(ECHO) ''
	exit 1
endif

_ncurses_dir := $(prefix_path)/include/ncurses
check_ncurses:
ifneq ($(_ncurses_dir), $(wildcard $(_ncurses_dir)))
	$(ECHO) "\tuse \"make lib=ncurses\" first to  compile ncurses."
	$(ECHO) ''
	exit 1
endif


# serialization protocol
_cjson_dir := $(prefix_path)/include/cjson
check_cjson:
ifneq ($(_cjson_dir), $(wildcard $(_cjson_dir)))
	$(ECHO) "\tuse \"make lib=cJSON \" first to compile cJSON."
	$(ECHO) ''
	exit 1
endif

_expat_file := $(prefix_path)/include/expat.h
check_expat:
ifneq ($(_expat_file), $(wildcard $(_expat_file)))
	$(ECHO) "\tuse \"make lib=libexpat \" first to compile libexpat."
	$(ECHO) ''
	exit 1
endif



_cares_file := $(prefix_path)/include/ares.h
check_cares:
ifneq ($(_cares_file), $(wildcard $(_cares_file)))
	$(ECHO) "\tuse \"make lib=c-ares \" first to compile c-ares."
	$(ECHO) ''
	exit 1
endif

_libwebsockets_dir := $(prefix_path)/include/libwebsockets
check_libwebsockets:
ifneq ($(_libwebsockets_dir), $(wildcard $(_libwebsockets_dir)))
	$(ECHO) "\tuse \"make lib=libwebsockets \" first to compile libwebsockets."
	$(ECHO) ''
	exit 1
endif

_libpcap_dir := $(prefix_path)/include/pcap
check_libpcap:
ifneq ($(_libpcap_dir), $(wildcard $(_libpcap_dir)))
	$(ECHO) "\tuse \"make lib=libpcap\" first to compile libpcap."
	$(ECHO) ''
	exit 1
endif

_mbedtls_dir := $(prefix_path)/include/mbedtls
check_mbedtls:
ifneq ($(_mbedtls_dir), $(wildcard $(_mbedtls_dir)))
	$(ECHO) "\tuse \"make lib=mbedtls\" first to compile mbedtls."
	$(ECHO) ''
	exit 1
endif

_libuv_dir := $(prefix_path)/include/uv
check_libuv:
ifneq ($(_libuv_dir), $(wildcard $(_libuv_dir)))
	$(ECHO) "\tuse \"make lib=libuv\" first to compile libuv."
	$(ECHO) ''
	exit 1
endif

_libx264_file := $(prefix_path)/include/x264.h
check_libx264:
ifneq ($(_libx264_file), $(wildcard $(_libx264_file)))
	$(ECHO) "\tuse \"make lib=x264\" first to compile x264."
	$(ECHO) ''
	exit 1
endif

# gui
_libevdev_dir := $(prefix_path)/include/libevdev-1.0
check_libevdev:
ifneq ($(_libevdev_dir), $(wildcard $(_libevdev_dir)))
	$(ECHO) "\tuse \"make lib=libevdev\" first to compile libevdev."
	$(ECHO) ''
	exit 1
endif

_tslib_file := $(prefix_path)/include/tslib.h
check_tslib:
ifneq ($(_tslib_file), $(wildcard $(_tslib_file)))
	$(ECHO) "\tuse \"make lib=tslib\" first to compile tslib."
	$(ECHO) ''
	exit 1
endif

