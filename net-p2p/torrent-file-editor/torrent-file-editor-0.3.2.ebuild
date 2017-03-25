# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Qt based GUI tool designed to create and edit .torrent files"
HOMEPAGE="https://sourceforge.net/projects/torrent-file-editor"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/drizt/torrent-file-editor.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/drizt/torrent-file-editor/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE="qt4 qt5 disable-donation"
REQUIRED_USE="^^ ( qt4 qt5 )"

QTDEPEND="
	qt5? (
		dev-qt/qtcore:5
		dev-qt/qtgui:5
		dev-qt/qtwidgets
	)
	qt4? (
		dev-qt/qtcore:4
		dev-qt/qtgui:4
		dev-libs/qjson
	)
"

DEPEND="
	dev-util/cmake
	${QTDEPEND}
	dev-qt/linguist-tools
"
RDEPEND="${QTDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DQT5_BUILD=$(usex qt5 ON OFF)
		-DDISABLE_DONATION=$(usex disable-donation ON OFF)
	)
	cmake-utils_src_configure
}
