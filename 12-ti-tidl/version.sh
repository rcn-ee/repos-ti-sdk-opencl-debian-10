#!/bin/bash -e

#https://github.com/rcn-ee/tidl-api/tree/v01.04.00-bb.org

package_name="ti-tidl"
debian_pkg_name="${package_name}"
package_version="01.04.00-bb.org-0.0"
package_source="${package_name}_${package_version}.orig.tar.xz"
src_dir="${package_name}_${package_version}"

git_repo="https://github.com/rcn-ee/tidl-api.git"
git_sha="6461a1bdb7a270c89b92ddbcd3329b2ec482b3ca"
reprepro_dir="o/${package_name}"
dl_path=""

debian_version="${package_version}-0rcnee3"
debian_patch=""
debian_diff=""

buster_version="~buster+20200327"
