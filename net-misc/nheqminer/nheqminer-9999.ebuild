# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Equihash miner from NiceHash"
HOMEPAGE="https://github.com/nicehash/nheqminer"

EGIT_REPO_URI="https://github.com/nicehash/nheqminer.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="
	dev-libs/boost
"

DEPEND="${RDEPEND}"

PATCHES="
	"${FILESDIR}"/removing-hardcoded-nicehash.patch
	"${FILESDIR}"/undefined_reference_to_symbol_pthread.patch
"

CMAKE_USE_DIR="${S}/nheqminer"

src_install() {
	dobin ${CMAKE_BUILD_DIR}/nheqminer
}
