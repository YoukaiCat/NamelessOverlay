# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3

DESCRIPTION="SkypeWeb plugin for Pidgin"
HOMEPAGE="https://github.com/EionRobb/skype4pidgin/tree/master/skypeweb"

EGIT_REPO_URI="https://github.com/EionRobb/skype4pidgin.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	net-im/pidgin
	dev-libs/json-glib
"

DEPEND="${RDEPEND}"

S="${WORKDIR}/${P}/${PN}"

src_install() {
	emake DESTDIR="${D}" install
}
