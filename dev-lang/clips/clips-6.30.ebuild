# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Expert system tool"
HOMEPAGE="http://clipsrules.sourceforge.net/"
RESTRICT="mirror"
SRC_URI="https://sourceforge.net/projects/clipsrules/files/CLIPS/6.30/clips_core_source_630.zip/download -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}/clips_core_source_630/core"

src_compile() {
	cp ../makefiles/makefile.gcc ./Makefile
	emake
}

src_install() {
	dobin clips
}
