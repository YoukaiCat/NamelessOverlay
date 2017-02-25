# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Moscow ML is a light-weight implementation of Standard ML (SML)"
HOMEPAGE="https://github.com/kfl/mosml"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/kfl/mosml.git"
	KEYWORDS=""
	S="${WORKDIR}/${P}/src"
else
	SRC_URI="https://github.com/kfl/mosml/archive/ver-${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/${PN}-ver-${PV}/src"
fi

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""

src_compile() {
	emake PREFIX="${EROOT}"/usr/ world
}

src_install() {
	emake PREFIX="${D}"/usr/ install
}
