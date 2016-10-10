# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit eutils unpacker

VER="6.6.0-exp1"

DESCRIPTION="Bittorrent client that does not require a website to discover content"
HOMEPAGE="http://www.tribler.org/"
SRC_URI="https://github.com/Tribler/tribler/releases/download/v${VER}/tribler_${VER}_all.deb -> ${PVR}.deb"

LICENSE="GPL-2 LGPL-2.1+ PSF-2.4 openssl wxWinLL-3.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="vlc"

RDEPEND="
	dev-lang/python:2.7[sqlite]
	dev-python/apsw
	dev-python/feedparser
	dev-python/gmpy
	dev-python/m2crypto
	dev-python/netifaces
	dev-python/pyasn1
	dev-python/pycrypto
	dev-python/twisted-core
	dev-python/wxpython:2.8
	dev-libs/openssl:0[-bindist]
	net-libs/rb_libtorrent[python]
	vlc? (
			media-video/vlc
			media-video/ffmpeg:0
		)"

DEPEND="${RDEPEND}
	app-arch/unzip"

S="${WORKDIR}"

QA_PREBUILT="/usr/lib/tribler/swift"

src_compile() { :; }

src_install() {
	#Remove the licenses scattered throughout
	rm usr/share/doc/${PN}-swift/copyright	# LGPL-2.1+
	rm usr/share/doc/${PN}/copyright	# LGPL-2.1+
	rm usr/share/${PN}/Tribler/binary-LICENSE-postfix.txt # GPL-2 LGPL-2.1+ PSF-2.4 openssl wxWinLL-3.1

	#Rename the doc dir properly
	mv usr/share/doc/${PN}-swift usr/share/doc/${PN}
	mv usr/share/doc/${PN} usr/share/doc/${P}

	#Move the readme to the doc dir
	mv usr/share/${PN}/Tribler/readme.txt usr/share/doc/${P}

	#Copy the rest over
	cp -pPR usr/ "${ED}"/
}
