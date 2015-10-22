# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit bzr vala autotools

DESCRIPTION="Netsukuku mesh network. Vala version."
HOMEPAGE="https://savannah.nongnu.org/projects/netsukuku/"

EBZR_REPO_URI="http://bzr.savannah.gnu.org/r/netsukuku/2.0/ntkd-common/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="dev-lang/vala
         dev-libs/vala-common
         dev-libs/glib
         dev-libs/libgee
         !net-p2p/netsukuku-c
"
DEPEND="${RDEPEND}"

src_prepare() {
	vala_src_prepare --ignore-use
	eautoreconf
}

src_compile() {
	econf
	emake
}

src_install() {
	emake DESTDIR=${D} install
}
