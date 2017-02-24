# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3

DESCRIPTION="Mac-Telnet - Connect to RouterOS or mactelnetd devices via MAC address"
HOMEPAGE="https://github.com/haakonnessjoen/MAC-Telnet"

EGIT_REPO_URI="https://github.com/haakonnessjoen/MAC-Telnet.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+mactelnet +mactelnetd +mndp +macping"

RDEPEND=""

DEPEND="${RDEPEND}"

src_compile() {
	use mactelnet && emake mactelnet
	use mactelnetd && emake mactelnetd
	use mndp && emake mndp
	use macping && emake macping
}

src_install() {
	emake DESTDIR="${D}" install
}
