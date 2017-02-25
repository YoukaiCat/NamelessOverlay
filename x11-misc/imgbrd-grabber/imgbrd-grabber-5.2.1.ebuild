# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Imageboard/booru downloader with powerful filenaming features"
HOMEPAGE="https://github.com/Bionus/imgbrd-grabber"

if [[ ${PV} == "9999" ]] ; then
	inherit qmake-utils git-r3
	EGIT_REPO_URI="https://github.com/Bionus/imgbrd-grabber.git"
	KEYWORDS=""
else
	inherit qmake-utils
	SRC_URI="https://github.com/Bionus/imgbrd-grabber/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="Apache-2.0"
SLOT="0"
IUSE="syntax-highlighting"

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtnetwork:5
	dev-qt/qtxml:5
	dev-qt/qtsql:5
	dev-qt/qtdeclarative:5
	dev-qt/qtscript:5
	dev-qt/qtmultimedia:5[pulseaudio]
	syntax-highlighting? ( x11-libs/qscintilla[qt5] )
	dev-qt/linguist-tools
"

DEPEND="${RDEPEND}"

src_configure() {
	eqmake5 PREFIX=/usr Grabber.pro
}

src_compile() {
	lrelease Grabber.pri
	emake
}

src_install() {
	cp -R languages release/
	emake INSTALL_ROOT="${D}" install
	touch "${D}/usr/share/Grabber/settings.ini"
	cp resources/icon.png "${D}/usr/share/pixmaps/Grabber.png"
	dobin gui/build/release/Grabber

	ewarn "Imgbrd-grabber is ill-suited for system-wide installation."
	ewarn "You should create a directory '.Grabber' in your home directory and copy the necessary files."
	ewarn "For example, $ mkdir ~/.Grabber && cp -R /usr/share/Grabber/* ~/.Grabber/"
	ewarn "Repeat that after each update, but remember to backup and restore your settings.ini"
}
