# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="Moscow ML is a light-weight implementation of Standard ML (SML)"
HOMEPAGE="https://github.com/kfl/mosml"

EGIT_REPO_URI="https://github.com/kfl/mosml.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}/${P}/src"

src_compile() {
	emake PREFIX="${EROOT}"/usr/ world
}

src_install() {
	emake PREFIX="${D}"/usr/ install
}
