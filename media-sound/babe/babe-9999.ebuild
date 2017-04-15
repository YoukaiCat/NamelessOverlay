# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Tiny Qt Babe Music Player"
HOMEPAGE="https://github.com/milohr/babe-qt"

EGIT_REPO_URI="https://github.com/milohr/babe-qt.git"

KEYWORDS=""
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtmultimedia:5
	dev-qt/qtsql:5
	dev-qt/qtnetwork:5
	dev-qt/qtxml:5
	dev-qt/qtdbus:5
	kde-frameworks/knotifications
	kde-frameworks/ki18n
	kde-frameworks/kconfig
	media-libs/taglib
"

DEPEND="
	kde-frameworks/extra-cmake-modules
	${RDEPEND}
"

src_install() {
	dobin "${BUILD_DIR}/babe"
}
