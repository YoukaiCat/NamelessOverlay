# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools autotools-utils git-r3

DESCRIPTION="Mac-Telnet - Connect to RouterOS or mactelnetd devices via MAC address"
HOMEPAGE="https://github.com/haakonnessjoen/MAC-Telnet"

EGIT_REPO_URI="https://github.com/haakonnessjoen/MAC-Telnet.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	sys-devel/gettext
"

DEPEND="${RDEPEND}"

src_prepare() {
	eaclocal_amflags
	eautoreconf
	eautomake
	eautoconf
}
