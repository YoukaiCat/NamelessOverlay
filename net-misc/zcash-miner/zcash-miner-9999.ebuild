# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit multiprocessing git-r3

DESCRIPTION="Str4d's ZCash miner"
HOMEPAGE="https://github.com/str4d/zcash"

EGIT_REPO_URI="https://github.com/str4d/zcash.git"
EGIT_BRANCH="standalone-miner"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

DEPEND="
	sys-libs/ncurses:0
	app-arch/unzip
	dev-vcs/git
	dev-lang/python:3.5
	net-misc/wget
"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i 's/\.\/b2/\.\/b2 --ignore-site-config/g' depends/packages/boost.mk #boost build error
	unset ABI #libgmp: configure: error: ABI=amd64 is not among the following valid choices: 64 x32 32
}

src_compile() {
	./zcutil/build.sh -j$(makeopts_jobs) || die
}

src_install() {
	dobin src/zcash-miner
}
