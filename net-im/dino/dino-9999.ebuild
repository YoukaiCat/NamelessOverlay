# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit cmake-utils vala git-r3

DESCRIPTION="Modern Jabber/XMPP Client using GTK+/Vala"
HOMEPAGE="https://github.com/dino/dino"

EGIT_REPO_URI="https://github.com/dino/dino.git"

KEYWORDS=""
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	>=dev-libs/glib-2.38
	>=x11-libs/gtk+-3.22
	app-crypt/gpgme
	dev-libs/libgee:0.8
	x11-libs/libnotify
	dev-libs/openssl:0
	dev-db/sqlite
	>=dev-lang/vala-0.30:*
"

DEPEND="${RDEPEND}"

VALA_MIN_API_VERSION="0.30"

# error after linking libxmpp-vala.so if using emake
CMAKE_MAKEFILE_GENERATOR="ninja"
