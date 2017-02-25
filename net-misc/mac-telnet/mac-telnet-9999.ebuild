# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Mac-Telnet - Connect to RouterOS or mactelnetd devices via MAC address"
HOMEPAGE="https://github.com/haakonnessjoen/MAC-Telnet"

if [[ ${PV} == "9999" ]] ; then
	inherit autotools autotools-utils git-r3
	EGIT_REPO_URI="https://github.com/haakonnessjoen/MAC-Telnet.git"
	KEYWORDS=""
else
	inherit autotools autotools-utils
	SRC_URI="https://github.com/haakonnessjoen/MAC-Telnet/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~arm ~arm64 ~mips ~x86"
	S=${WORKDIR}/MAC-Telnet-${PV}
fi

LICENSE="GPL-2"
SLOT="0"
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
