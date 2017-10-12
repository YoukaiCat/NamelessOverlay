# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Wiki-like notebook"
HOMEPAGE="http://wikidpad.sourceforge.net"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/WikidPad/WikidPad.git"
	KEYWORDS=""
else
	inherit versionator git-r3
	MY_P="WikidPad-"$(replace_all_version_separators '-')
	EGIT_REPO_URI="https://github.com/WikidPad/WikidPad.git"
	EGIT_COMMIT="${MY_P}"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	dev-lang/python:2.7[sqlite]
	dev-python/wxpython:3.0
	dev-python/pygobject:3
"
DEPEND="${RDEPEND}"

src_prepare() {
	eapply_user
	sed -i -e "s|env python|env python2|" *.py
	sed -i -e "s|/bin/python|/usr/bin/python2|" *.py
}

src_install() {
	insinto "/usr/share/${PN}"
	doins -r *
	cp "${FILESDIR}/wikidpad" "${S}/wikidpad"
	dobin wikidpad
}
