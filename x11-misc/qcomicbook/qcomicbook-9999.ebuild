# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils git-r3

DESCRIPTION="Viewer for comic book archives that aims at convenience and simplicity"
HOMEPAGE="https://github.com/stolowski/QComicBook"

EGIT_REPO_URI="https://github.com/stolowski/QComicBook.git"

LICENSE="GPL-2"
SLOT="5"
KEYWORDS=""
IUSE=""

DEPEND="dev-qt/qtwidgets:5
	dev-qt/linguist-tools:5
	dev-qt/qtprintsupport:5
	dev-qt/qtx11extras:5
	app-text/poppler[qt5]
	!x11-misc/qcomicbook:0
"

RDEPEND="${DEPEND}"
