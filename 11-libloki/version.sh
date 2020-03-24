#!/bin/bash -e

#mirror="http://http.debian.net/debian"

package_name="libloki"
debian_pkg_name="${package_name}"
package_version="0.1.7"
package_source="${package_name}_${package_version}.orig.tar.xz"
src_dir="${package_name}_${package_version}"

git_repo="https://github.com/rcn-ee/libloki-ti-tidl-fork"
git_sha="faa494de762e9a81147ce73e5bc06a6356a0831e"
reprepro_dir="libl/${package_name}"
dl_path=""

debian_version="${package_version}-3rcnee0"
debian_patch=""
debian_diff=""

buster_version="~buster+20200324"
