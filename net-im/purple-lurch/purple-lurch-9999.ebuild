# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Plugin for libpurple implementing OMEMO"
HOMEPAGE="https://github.com/gkdr/lurch"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/gkdr/lurch.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/gkdr/lurch/releases/download/v0.6.4/lurch-${PV}-src.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	net-im/pidgin
	dev-libs/mxml
	dev-libs/libxml2
	dev-db/sqlite
	dev-libs/libgcrypt:0
"
DEPEND="${RDEPEND}"

S="${WORKDIR}"
