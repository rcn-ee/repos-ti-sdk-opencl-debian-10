#!/bin/bash -e

#http://git.ti.com/gitweb/?p=ipc/ipcdev.git;a=summary
#https://github.com/rcn-ee/ti-sdk-source-opencl/blob/675ae0779a1c9fbbe603d279bb4fe233889068c6/meta-ti/recipes-ti/ipc/ti-ipc.inc

package_name="ti-ipc-dra7xx"
debian_pkg_name="${package_name}"
package_version="3.50.04.08-git20191028.0"
package_source="${package_name}_${package_version}.orig.tar.xz"
src_dir="${package_name}_${package_version}"

git_repo="git://git.ti.com/ipc/ipcdev.git"
#https://git.ti.com/gitweb?p=ipc/ipcdev.git;a=shortlog;h=1d53b856338b86d1979fe09345c0b382913a848a
git_sha="1d53b856338b86d1979fe09345c0b382913a848a"
reprepro_dir="t/${package_name}"
dl_path=""

debian_version="${package_version}-0rcnee0"
debian_patch=""
debian_diff=""

buster_version="~buster+20200324"
