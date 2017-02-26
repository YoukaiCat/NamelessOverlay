# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit golang-base

DESCRIPTION="TMSU lets you tags your files and then access them through a virtual filesystem"
HOMEPAGE="http://tmsu.org/"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/oniony/TMSU.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/oniony/TMSU/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64"
	S=${WORKDIR}/TMSU-${PV}
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	dev-lang/go
	>=dev-libs/go-fuse-0_p20161221
	dev-go/go-sqlite3
"

DEPEND="${RDEPEND}"

src_compile() {
	export GOPATH=$(get_golibdir_gopath)
	emake compile
}

src_install() {
	dobin bin/tmsu
	dobin misc/bin/tmsu-fs-merge
	dobin misc/bin/tmsu-fs-mv
	dobin misc/bin/tmsu-fs-rm
	dosbin misc/bin/mount.tmsu
	doman misc/man/tmsu.1
}
