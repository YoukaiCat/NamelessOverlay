# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools-utils

DESCRIPTION="A GTK2 image viewer, manga reader, and booru browser"
HOMEPAGE="https://github.com/ahodesuka/ahoviewer"
SRC_URI="https://github.com/ahodesuka/ahoviewer/archive/${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-cpp/gtkmm:2.4
	dev-cpp/glibmm:2
	dev-libs/libconfig
	net-misc/curl
	dev-libs/libxml2:2
	media-libs/gstreamer:1.0
	app-crypt/libsecret
	app-arch/unrar
	dev-libs/libzip
"

DEPEND="${RDEPEND}"

AUTOTOOLS_AUTORECONF="true"
AUTOTOOLS_IN_SOURCE_BUILD="true"
