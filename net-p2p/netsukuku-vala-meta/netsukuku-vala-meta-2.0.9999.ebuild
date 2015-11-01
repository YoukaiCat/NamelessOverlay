# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Netsukuku mesh network. Vala version."
HOMEPAGE="https://savannah.nongnu.org/projects/netsukuku/"
SRC_URI=""

LICENSE="GPL-3"
SLOT="2.0"
KEYWORDS=""

RDEPEND="=net-p2p/netsukuku-vala-coordinator-${PV}:2.0
         =net-p2p/netsukuku-vala-neighborhood-${PV}:2.0
         =net-p2p/netsukuku-vala-ntkd-common-${PV}:2.0
         =net-p2p/netsukuku-vala-ntkd-tasklet-system-${PV}:2.0
         =net-p2p/netsukuku-vala-ntkdrpc-${PV}:2.0
         =net-p2p/netsukuku-vala-peerservices-${PV}:2.0
         =net-p2p/netsukuku-vala-qspn-${PV}:2.0
         =net-p2p/netsukuku-vala-tasklet-${PV}:2.0
         =net-p2p/netsukuku-vala-zcd-${PV}:2.0
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
