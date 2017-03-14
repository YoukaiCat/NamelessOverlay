# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="A GTK2 image viewer, manga reader, and booru browser"
HOMEPAGE="https://github.com/ahodesuka/ahoviewer"

if [[ ${PV} == "9999" ]] ; then
	inherit autotools-utils git-r3
	EGIT_REPO_URI="https://github.com/ahodesuka/ahoviewer.git"
	KEYWORDS=""
else
	inherit autotools-utils
	SRC_URI="https://github.com/ahodesuka/ahoviewer/archive/${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND="
	dev-cpp/gtkmm:2.4
	dev-cpp/glibmm:2
	dev-libs/libconfig
	net-misc/curl
	dev-libs/libxml2:2
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-bad:1.0
	media-libs/gst-plugins-good:1.0
	|| ( media-plugins/gst-plugins-vpx media-plugins/gst-plugins-libav )
	app-crypt/libsecret
	app-arch/unrar
	dev-libs/libzip
"

DEPEND="${RDEPEND}"

AUTOTOOLS_AUTORECONF="true"
AUTOTOOLS_IN_SOURCE_BUILD="true"
