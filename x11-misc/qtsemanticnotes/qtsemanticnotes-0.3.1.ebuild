# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Note taking application features automatic linking, tree view and tags"
HOMEPAGE="https://github.com/YoukaiCat/QtSemanticNotes"

if [[ ${PV} == "9999" ]] ; then
	inherit qmake-utils git-r3
	EGIT_REPO_URI="https://github.com/YoukaiCat/QtSemanticNotes.git"
	KEYWORDS=""
else
	inherit qmake-utils
	SRC_URI="https://github.com/YoukaiCat/QtSemanticNotes/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/QtSemanticNotes-${PV}"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qtsql:5[sqlite]
"

DEPEND="${RDEPEND}"

src_configure() {
	qbs setup-toolchains --detect
	qbs setup-qt "$(qt5_get_bindir)/qmake" qt5
}

src_compile() {
	qbs build profile:qt5 release
}

src_install() {
	dobin release/install-root/QtSemanticNotes
}
