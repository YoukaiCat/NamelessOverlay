# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit multiprocessing

DESCRIPTION="Cryptocurrency that offers privacy of transactions"
HOMEPAGE="https://z.cash/"
SRC_URI="https://github.com/zcash/zcash/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	sys-libs/ncurses:0
	app-arch/unzip
	dev-vcs/git
	dev-lang/python:3.5
	net-misc/wget
"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${P}

src_prepare() {
	sed -i 's/\.\/b2/\.\/b2 --ignore-site-config/g' depends/packages/boost.mk #boost build error
	unset ABI #libgmp: configure: error: ABI=amd64 is not among the following valid choices: 64 x32 32
}

src_compile() {
	./zcutil/build.sh -j$(makeopts_jobs) || die
}

src_install() {
	dobin src/zcashd
	dobin src/zcash-cli

	ewarn "You should manually fetch the parameters for all users:"
	ewarn "$ wget -O - https://raw.githubusercontent.com/zcash/zcash/v${PV}/zcutil/fetch-params.sh | bash"
	ewarn " "
	ewarn "This script will fetch the Zcash zkSNARK parameters and verify"
	ewarn "their integrity with sha256sum."
	ewarn " "
	ewarn "The parameters are currently just under 911MB in size, so plan accordingly"
	ewarn "for your bandwidth constraints. If the files are already present and"
	ewarn "have the correct sha256sum, no networking is used."
}