#!/bin/bash -e

DIR=$PWD

. version.sh

mkdir -p ${DIR}/ignore

if [ -f ${DIR}/ignore/llvm/.git/config ] ; then
	cd ${DIR}/ignore/llvm/
	git pull
	cd ${DIR}
else
	git clone git://git.ti.com/opencl/llvm.git ${DIR}/ignore/llvm
fi

if [ -f ${DIR}/ignore/clang/.git/config ] ; then
	cd ${DIR}/ignore/clang/
	git pull
	cd ${DIR}
else
	git clone git://git.ti.com/opencl/clang.git ${DIR}/ignore/clang
fi

if [ -d ${DIR}/ti-llvm-3.6-3.6/ ] ; then
	rm -rf ${DIR}/ti-llvm-3.6-3.6 || true
fi
mkdir -p ${DIR}/ti-llvm-3.6-3.6
git clone --reference ${DIR}/ignore/llvm/ https://github.com/rcn-ee/llvm ${DIR}/ti-llvm-3.6-3.6
cd ${DIR}/ti-llvm-3.6-3.6/
git checkout 09780c6750b30da81e4a0a805aedf1699fbc37c7 -b tmp
cd ${DIR}/ti-llvm-3.6-3.6/tools
git clone --reference ${DIR}/ignore/clang/ https://github.com/rcn-ee/clang
cd ${DIR}/ti-llvm-3.6-3.6/tools/clang
git checkout 5b006f07bdc22b5ae6917eecdfe243908dd7b029 -b tmp
cd ${DIR}/ti-llvm-3.6-3.6/
find . | grep .git | xargs rm -rf
cd ${DIR}

tar -cJf ${package_name}_${package_version}.orig.tar.xz ./ti-llvm-3.6-3.6
