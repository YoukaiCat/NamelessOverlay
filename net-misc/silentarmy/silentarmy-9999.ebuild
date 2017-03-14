# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Zcash miner optimized for AMD & Nvidia GPUs"
HOMEPAGE="https://github.com/mbevand/silentarmy"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/mbevand/silentarmy.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/mbevand/silentarmy/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="MIT"
SLOT="0"

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
