# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Netsukuku mesh network. Vala version."
HOMEPAGE="https://savannah.nongnu.org/projects/netsukuku/"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="=net-p2p/netsukuku-vala-coordinator-${PV}
         =net-p2p/netsukuku-vala-neighborhood-${PV}
         =net-p2p/netsukuku-vala-ntkd-common-${PV}
         =net-p2p/netsukuku-vala-ntkd-tasklet-system-${PV}
         =net-p2p/netsukuku-vala-ntkdrpc-${PV}
         =net-p2p/netsukuku-vala-peerservices-${PV}
         =net-p2p/netsukuku-vala-qspn-${PV}
         =net-p2p/netsukuku-vala-tasklet-${PV}
         =net-p2p/netsukuku-vala-zcd-${PV}
         !net-p2p/netsukuku-c
"
DEPEND="${RDEPEND}"
