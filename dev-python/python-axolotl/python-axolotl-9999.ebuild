# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=(python2_7)

inherit distutils-r1 git-r3

DESCRIPTION="python implementation of axolotl encryption"
HOMEPAGE="https://github.com/tgalal/python-axolotl"
EGIT_REPO_URI="https://github.com/tgalal/python-axolotl.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-libs/protobuf-2.6[python]
		dev-python/pycrypto
		dev-python/python-axolotl-curve25519"
RDEPEND="${DEPEND}"
