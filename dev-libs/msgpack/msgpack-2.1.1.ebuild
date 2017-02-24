# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit cmake-multilib

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/${PN}/${PN}-c.git"
else
	RESTRICT="mirror"
	SRC_URI="https://github.com/${PN}/${PN}-c/releases/download/cpp-${PV}/${P}.tar.gz"
	KEYWORDS="~amd64 ~x86 ~x86-fbsd ~amd64-linux ~x86-linux"
fi

DESCRIPTION="MessagePack is a binary-based efficient data interchange format"
HOMEPAGE="http://msgpack.org/ https://github.com/msgpack/msgpack-c/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="-cxx11 -32bit -boost -examples +cxx +shared"

DEPEND="
	dev-cpp/gtest[${MULTILIB_USEDEP}]
	sys-libs/zlib[${MULTILIB_USEDEP}]
	boost? ( dev-libs/boost[context] )
"

DOCS=( README.md )

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use cxx11 MSGPACK_CXX11)
		$(cmake-utils_use 32bit MSGPACK_32BIT)
		$(cmake-utils_use boost MSGPACK_BOOST)
		$(cmake-utils_use examples MSGPACK_BUILD_EXAMPLES)
		$(cmake-utils_use cxx MSGPACK_ENABLE_CXX)
		$(cmake-utils_use shared MSGPACK_ENABLE_SHARED)
	)
	cmake-multilib_src_configure
}
