# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

if [[ ${PV} == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/michaelrsweet/mxml.git"
else
	SRC_URI="https://github.com/michaelrsweet/mxml/releases/download/release-2.10/mxml-${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="Tiny XML library"
HOMEPAGE="http://michaelrsweet.github.io/mxml"

LICENSE="LGPL-2"
SLOT="0"
IUSE=""

DEPEND=""

src_install() {
	make DSTROOT="${D}" install
}
