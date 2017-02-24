# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit cmake-utils python-single-r1 git-r3

DESCRIPTION="C++11 Distributed Hash Table implementation"
HOMEPAGE="https://github.com/savoirfairelinux/opendht"

EGIT_REPO_URI="https://github.com/savoirfairelinux/opendht.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="-static +shared +log -python +tools -lto"

RDEPEND="
	>=net-libs/gnutls-3.3
	>=dev-libs/msgpack-1.2
	tools? ( sys-libs/readline:0 )
	python? ( ${PYTHON_DEPS} )
"

DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use static OPENDHT_STATIC)
		$(cmake-utils_use shared OPENDHT_SHARED)
		$(cmake-utils_use log OPENDHT_LOG)
		$(cmake-utils_use python OPENDHT_PYTHON)
		$(cmake-utils_use tools OPENDHT_TOOLS)
		$(cmake-utils_use lto OPENDHT_LTO)
	)
	cmake-utils_src_configure
}
