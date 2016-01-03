# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3

DESCRIPTION="Access a regular directory case-insensitively"
HOMEPAGE="http://www.brain-dump.org/projects/ciopfs/"
EGIT_REPO_URI="https://github.com/ifreecarve/ciopfs.git"
EGIT_COMMIT="71cc80c12027ab70efbec4ae363a6d8d01dcc563"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	sys-fs/fuse
	sys-apps/attr
"

RDEPEND="${RDEPEND}"

src_install() {
	dobin ${PN} || die
}
