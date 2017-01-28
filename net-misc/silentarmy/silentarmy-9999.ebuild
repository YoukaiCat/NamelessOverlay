# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="Zcash miner optimized for AMD & Nvidia GPUs "
HOMEPAGE="https://github.com/mbevand/silentarmy"

EGIT_REPO_URI="https://github.com/mbevand/silentarmy.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="
	virtual/opencl
	dev-lang/python:3.5
"

DEPEND="${RDEPEND}"

src_compile() {
	emake
}

src_install() {
	dobin silentarmy sa-solver
}
