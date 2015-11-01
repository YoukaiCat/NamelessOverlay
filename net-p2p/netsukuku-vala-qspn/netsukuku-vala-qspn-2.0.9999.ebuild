# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit bzr vala autotools

DESCRIPTION="Netsukuku mesh network. Vala version."
HOMEPAGE="https://savannah.nongnu.org/projects/netsukuku/"

EBZR_REPO_URI="http://bzr.savannah.gnu.org/r/netsukuku/2.0/qspn/"

LICENSE="GPL-3"
SLOT="2.0"
KEYWORDS=""

RDEPEND="dev-lang/vala:*
         dev-libs/vala-common
         dev-libs/glib:*
         dev-libs/libgee:*
         dev-libs/json-glib
         =net-p2p/netsukuku-vala-ntkd-common-${PV}:2.0
         =net-p2p/netsukuku-vala-ntkd-tasklet-system-${PV}:2.0
         =net-p2p/netsukuku-vala-ntkdrpc-${PV}:2.0
         =net-p2p/netsukuku-vala-tasklet-${PV}:2.0
         !net-p2p/netsukuku-vala-andnsrpc:1.0
         !net-p2p/netsukuku-vala-coordinator:1.0
         !net-p2p/netsukuku-vala-meta:1.0
         !net-p2p/netsukuku-vala-neighborhood:1.0
         !net-p2p/netsukuku-vala-ntkd-common:1.0
         !net-p2p/netsukuku-vala-ntkd-tasklet-system:1.0
         !net-p2p/netsukuku-vala-ntkdrpc:1.0
         !net-p2p/netsukuku-vala-ntkresolv:1.0
         !net-p2p/netsukuku-vala-peerservices:1.0
         !net-p2p/netsukuku-vala-qspn:1.0
         !net-p2p/netsukuku-vala-tasklet:1.0
         !net-p2p/netsukuku-vala-zcd:1.0
         !net-p2p/netsukuku-c
"
DEPEND="${RDEPEND}"

src_prepare() {
	vala_src_prepare --ignore-use
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install
}
