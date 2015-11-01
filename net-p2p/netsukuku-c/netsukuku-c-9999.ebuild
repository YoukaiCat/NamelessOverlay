# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3 linux-info scons-utils

DESCRIPTION="Netsukuku mesh network. C version."
HOMEPAGE="https://github.com/Netsukuku/netsukuku"

EGIT_REPO_URI="https://github.com/Netsukuku/netsukuku.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-libs/gmp:*
         dev-libs/openssl:*
         dev-libs/libgee:*
         dev-libs/pth
         dev-libs/libgcrypt:*
         !net-p2p/netsukuku-vala-andnsrpc
         !net-p2p/netsukuku-vala-coordinator
         !net-p2p/netsukuku-vala-meta
         !net-p2p/netsukuku-vala-neighborhood
         !net-p2p/netsukuku-vala-ntkd-common
         !net-p2p/netsukuku-vala-ntkd-tasklet-system
         !net-p2p/netsukuku-vala-ntkdrpc
         !net-p2p/netsukuku-vala-ntkresolv
         !net-p2p/netsukuku-vala-peerservices
         !net-p2p/netsukuku-vala-qspn
         !net-p2p/netsukuku-vala-tasklet
         !net-p2p/netsukuku-vala-zcd
"

DEPEND="dev-util/cmake
        dev-util/scons
        ${RDEPEND}
"

pkg_pretend() {
	CONFIG_CHECK="
        ~CONFIG_PACKET
        ~CONFIG_UNIX
        ~CONFIG_INET
        ~CONFIG_IP_MULTICAST
        ~CONFIG_IP_ADVANCED_ROUTER
        ~CONFIG_IP_MULTIPLE_TABLES
        ~CONFIG_IP_ROUTE_MULTIPATH
        ~CONFIG_NET_IPIP
        ~CONFIG_NETFILTER
        ~CONFIG_NETFILTER_XT_MATCH_CONNTRACK
        ~CONFIG_IP_NF_IPTABLES
        ~CONFIG_IP_NF_FILTER
        ~CONFIG_IP_NF_TARGET_REJECT
        ~CONFIG_IP_NF_NAT
        ~CONFIG_IP_NF_NAT_NEEDED
        ~CONFIG_IP_NF_TARGET_MASQUERADE
	"
	check_extra_config
}

src_compile() {
	escons || die "scons failed"
}

src_install() {
	escons DESTDIR="${D}" CONF_DIR="${D}"/etc/netsukuku MAN_DIR="${D}"/usr/local/share/man BIN_DIR="${D}"/usr/bin install || die "scons install failed"
}
