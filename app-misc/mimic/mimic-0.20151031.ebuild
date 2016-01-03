# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit git-r3 distutils-r1

DESCRIPTION="Substitutes common ASCII characters to UTF8 homoglyphs"
HOMEPAGE="https://github.com/reinderien/mimic"

EGIT_REPO_URI="https://github.com/reinderien/mimic"
EGIT_COMMIT="f2f04419895e8aed3eb76c80fba293fd28abe857"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
