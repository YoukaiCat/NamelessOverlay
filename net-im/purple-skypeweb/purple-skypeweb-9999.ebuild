# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="SkypeWeb plugin for Pidgin"
HOMEPAGE="https://github.com/EionRobb/skype4pidgin/tree/master/skypeweb"
EGIT_REPO_URI="https://github.com/EionRobb/skype4pidgin.git"

if [[ ${PV} == "9999" ]] ; then
	KEYWORDS=""
else
	EGIT_COMMIT="1.2.2"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-2"
SLOT="0"
IUSE=""

RDEPEND="
	>=net-im/pidgin-2.10.0
	>=dev-libs/glib-2.24
	>=dev-libs/json-glib-0.8.0
"

DEPEND="${RDEPEND}"

S="${WORKDIR}/${P}/${PN}"

src_install() {
	emake DESTDIR="${D}" install
}
