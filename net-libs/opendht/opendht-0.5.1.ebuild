# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit cmake-utils python-single-r1

DESCRIPTION="C++11 Distributed Hash Table implementation"
HOMEPAGE="https://github.com/savoirfairelinux/opendht"
SRC_URI="https://github.com/savoirfairelinux/opendht/archive/${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="python +tools debug"

RDEPEND="
	>=net-libs/gnutls-3.1.0
	>=dev-libs/msgpack-1.2.0
	tools? ( sys-libs/readline:0 )
	python? ( ${PYTHON_DEPS} )
"

DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use python OPENDHT_PYTHON)
		$(cmake-utils_use tools OPENDHT_TOOLS)
		$(cmake-utils_use debug OPENDHT_DEBUG)
	)
	cmake-utils_src_configure
}
