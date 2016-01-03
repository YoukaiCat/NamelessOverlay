# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit vala

DESCRIPTION="Netsukuku mesh network. Vala version."
HOMEPAGE="https://savannah.nongnu.org/projects/netsukuku/"
SRC_URI="http://download.savannah.gnu.org/releases/netsukuku/zcd-${PV}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-3"
SLOT="1.0"
KEYWORDS="~amd64 ~arm ~arm64 ~mips ~x86"
IUSE="logtasklet"

RDEPEND="
	dev-lang/vala:*
	dev-libs/vala-common
	dev-libs/glib:*
	dev-libs/libgee:*
	dev-libs/json-glib
	=net-p2p/netsukuku-vala-tasklet-${PV}:1.0
	!net-p2p/netsukuku-vala-andnsrpc:2.0
	!net-p2p/netsukuku-vala-coordinator:2.0
	!net-p2p/netsukuku-vala-meta:2.0
	!net-p2p/netsukuku-vala-neighborhood:2.0
	!net-p2p/netsukuku-vala-ntkd-common:2.0
	!net-p2p/netsukuku-vala-ntkd-tasklet-system:2.0
	!net-p2p/netsukuku-vala-ntkdrpc:2.0
	!net-p2p/netsukuku-vala-ntkresolv:2.0
	!net-p2p/netsukuku-vala-peerservices:2.0
	!net-p2p/netsukuku-vala-qspn:2.0
	!net-p2p/netsukuku-vala-tasklet:2.0
	!net-p2p/netsukuku-vala-zcd:2.0
	!net-p2p/netsukuku-c
"
DEPEND="${RDEPEND}"

S=${WORKDIR}/zcd-${PV}

src_configure() {
	econf $(use_enable logtasklet)
}

src_install() {
	emake DESTDIR="${D}" install
}
