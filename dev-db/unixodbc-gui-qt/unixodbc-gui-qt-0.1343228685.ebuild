# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit subversion autotools

DESCRIPTION="Qt based GUI for unixODBC"
HOMEPAGE="http://sourceforge.net/projects/unixodbc-gui-qt/"
ESVN_REPO_URI="svn://svn.code.sf.net/p/unixodbc-gui-qt/code/trunk@100"

LICENSE="GPL-3 LGPL-3"
KEYWORDS="~amd64 ~x86"
SLOT="0"

DEPEND=">=dev-db/unixODBC-2.3.0
        dev-qt/qtcore:4
        dev-qt/qtgui:4
"

RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-remove_qtassistantclient_from_m4_file.patch" || die
	emake -f Makefile.svn
}

src_configure() {
	econf \
		--with-qt-dir-include=/usr/include/qt4 \
		--with-qt-dir-lib=/usr/lib/qt4 \
		--with-qt-bin=/usr/bin
}

src_install() {
	emake DESTDIR="${D}" install
}
