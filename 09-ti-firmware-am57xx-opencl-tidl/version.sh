#!/bin/bash -e

package_name="firmware-am57xx-opencl-tidl"
debian_pkg_name="${package_name}"
package_version="01.02.00.01-r0"
package_source=""
src_dir=""

git_repo=""
git_sha=""
reprepro_dir="f/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}rcnee0"
debian_untar=""
debian_patch=""

debian_dl_1="https://github.com/rcn-ee/sdk-firmware/raw/master/opencl-tidl-fw/${package_version}/files/eve_firmware.bin"
debian_dl_2="https://github.com/rcn-ee/sdk-firmware/raw/master/opencl-tidl-fw/${package_version}/files/ocl_tidl_dsp.lib"

buster_version="~buster+20200319"
