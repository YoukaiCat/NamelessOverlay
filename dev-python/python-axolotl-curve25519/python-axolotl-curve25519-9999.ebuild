# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=(python2_7)

inherit distutils-r1 git-r3

DESCRIPTION="python implementation of axolotl-curve25519 encryption"
HOMEPAGE="https://github.com/tgalal/python-axolotl-curve25519"
EGIT_REPO_URI="https://github.com/tgalal/python-axolotl-curve25519.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="sys-libs/zlib"
RDEPEND="${DEPEND}"
