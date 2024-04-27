# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    makefile
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    04/08 2021 15:56
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        04/08 2021      create the file
# 
#     last modified: 04/08 2021 15:56
# ===============================================================

lib_3rd_path := /mnt/nfs/pc/ubuntu

all: clean protoc main

main:
	g++ main.cpp addressbook.pb.cc \
		-I. -I$(lib_3rd_path)/include \
		-L$(lib_3rd_path)/lib -lprotobuf -Wl,-rpath=$(lib_3rd_path)/lib \
		-o main

protoc:
	$(lib_3rd_path)/bin/protoc --cpp_out=. addressbook.proto

clean:
	rm -rf main address_book
