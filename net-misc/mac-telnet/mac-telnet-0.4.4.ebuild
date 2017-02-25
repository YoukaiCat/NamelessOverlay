# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools autotools-utils

DESCRIPTION="Mac-Telnet - Connect to RouterOS or mactelnetd devices via MAC address"
HOMEPAGE="https://github.com/haakonnessjoen/MAC-Telnet"
SRC_URI="https://github.com/haakonnessjoen/MAC-Telnet/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~mips ~x86"
IUSE=""

RDEPEND="
	sys-devel/gettext
"

DEPEND="${RDEPEND}"

S=${WORKDIR}/MAC-Telnet-${PV}

src_prepare() {
	eaclocal_amflags
	eautoreconf
	eautomake
	eautoconf
}
