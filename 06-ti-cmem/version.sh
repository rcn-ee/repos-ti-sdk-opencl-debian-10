#!/bin/bash -e

#http://git.ti.com/gitweb/?p=ipc/ludev.git;a=summary
#https://github.com/rcn-ee/ti-sdk-source-opencl/tree/675ae0779a1c9fbbe603d279bb4fe233889068c6/meta-ti/recipes-bsp/cmem
#https://git.ti.com/gitweb?p=ipc/ludev.git;a=tree;h=0f39ed469f7c327cb0b03139976b511c337c7f6a;hb=0f39ed469f7c327cb0b03139976b511c337c7f6a

package_name="cmem"
debian_pkg_name="${package_name}"
package_version="4.16.00.00-git20181220.1"
package_source="${package_name}_${package_version}.orig.tar.xz"
src_dir="${package_name}_${package_version}"

git_repo="git://git.ti.com/ipc/ludev.git"
#https://git.ti.com/gitweb?p=ipc/ludev.git;a=shortlog;h=4f970f053b42e8d2a6f1a8cd4b14786196468fd3
git_sha="4f970f053b42e8d2a6f1a8cd4b14786196468fd3"
reprepro_dir="c/${package_name}"
dl_path=""

debian_version="${package_version}-0rcnee1"
debian_patch=""
debian_diff=""

#sed -i -e 's:4.11.00.00:4.12.00.00:g' ./debian/cmem-mod-dkms.install
#sed -i -e 's:4.11.00.00:4.12.00.00:g' ./debian/control
#sed -i -e 's:4.11.00.00:4.12.00.00:g' ./debian/cmem-mod-dkms.dkms

buster_version="~buster+20200324"
