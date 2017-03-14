# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit cmake-utils

DESCRIPTION="Application to access Danbooru-based image boards"
HOMEPAGE="https://www.dennogumi.org/projects/danbooru-client/"
SRC_URI="https://www.dennogumi.org/releases/danbooru-client-${PV}.tar.xz"
RESTRICT="mirror"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	kde-frameworks/kiconthemes
	kde-frameworks/kcoreaddons
	kde-frameworks/ktextwidgets
	kde-frameworks/kguiaddons
	kde-frameworks/kcompletion
	kde-frameworks/kxmlgui
	kde-frameworks/kconfigwidgets
	kde-frameworks/kio
	kde-frameworks/kwallet
	kde-frameworks/kdeclarative
	kde-frameworks/ki18n
	kde-frameworks/kfilemetadata:5
"

DEPEND="${RDEPEND}"
