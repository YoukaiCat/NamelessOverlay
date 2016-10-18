# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Moscow ML is a light-weight implementation of Standard ML (SML)"
HOMEPAGE="https://github.com/kfl/mosml"
SRC_URI="https://github.com/kfl/mosml/archive/ver-${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}/${PN}-ver-${PV}/src"

src_compile() {
	emake PREFIX="${EROOT}"/usr/ world
}

src_install() {
	emake PREFIX="${D}"/usr/ install
}
