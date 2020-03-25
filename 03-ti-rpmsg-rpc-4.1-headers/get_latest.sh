#!/bin/bash

if [ -d ./ignore/ ] ; then
	rm -rf ./ignore/
fi
mkdir ./ignore/

git clone -b ti-linux-4.19.y https://github.com/RobertCNelson/ti-linux-kernel.git --depth=1 ./ignore/

if [ -f ./ignore/include/linux/rpmsg_rpc.h ] ; then
	rm ./suite/buster/debian/linux/rpmsg_rpc.h
	cp -v ./ignore/include/linux/rpmsg_rpc.h ./suite/buster/debian/linux/rpmsg_rpc.h
fi
if [ -f ./ignore/include/uapi/linux/rpmsg_rpc.h ] ; then
	rm ./suite/buster/debian/uapi/rpmsg_rpc.h
	cp -v ./ignore/include/uapi/linux/rpmsg_rpc.h ./suite/buster/debian/uapi/rpmsg_rpc.h
fi

if [ -d ./ignore/ ] ; then
	rm -rf ./ignore/
fi
