# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils

DESCRIPTION="Equihash miner from NiceHash"
HOMEPAGE="https://github.com/nicehash/nheqminer"
SRC_URI="https://github.com/nicehash/nheqminer/archive/${PV}c.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+cpu_tromp -cpu_xenoncat -cuda_tromp -cuda_djezo"

RDEPEND="
	dev-libs/boost
	cuda_tromp? ( dev-util/nvidia-cuda-sdk )
	cuda_djezo? ( dev-util/nvidia-cuda-sdk )
"

DEPEND="${RDEPEND}"

src_prepare() {
	#Don't really need static libs
	epatch "${FILESDIR}/dynamic_linking.patch"
	epatch "${FILESDIR}/add_install_target.patch"
	sed -i 's/ADD_LIBRARY(${EXECUTABLE} STATIC ${SRC_LIST} ${HEADERS})/ADD_LIBRARY(${EXECUTABLE} SHARED ${SRC_LIST} ${HEADERS})/g' cpu_tromp/CMakeLists.txt
}

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_use cpu_tromp)
		$(cmake-utils_use_use cpu_xenoncat)
		$(cmake-utils_use_use cuda_tromp)
		$(cmake-utils_use_use cuda_djezo)
	)
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
}
