# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Mac-Telnet - Connect to RouterOS or mactelnetd devices via MAC address"
HOMEPAGE="https://github.com/haakonnessjoen/MAC-Telnet"
SRC_URI="https://github.com/haakonnessjoen/MAC-Telnet/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~mips ~x86"
IUSE="+mactelnet +mactelnetd +mndp +macping"

RDEPEND=""

DEPEND="${RDEPEND}"

S=${WORKDIR}/MAC-Telnet-${PV}

src_compile() {
	use mactelnet && emake mactelnet
	use mactelnetd && emake mactelnetd
	use mndp && emake mndp
	use macping && emake macping
}

src_install() {
	emake DESTDIR="${D}" install
}
