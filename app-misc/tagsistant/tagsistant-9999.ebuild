# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Tag-based filesystem that turns directories into tags and search files"
HOMEPAGE="http://www.tagsistant.net/"

if [[ ${PV} == "9999" ]] ; then
	inherit versionator autotools-utils git-r3
	EGIT_REPO_URI="https://github.com/StrumentiResistenti/Tagsistant.git"
	KEYWORDS=""
else
	inherit versionator autotools-utils

	PVREPLACED=$(replace_all_version_separators '-' $(get_version_component_range 1-3))
	VPOSTFIX=$(get_version_component_range 4)
	MY_PV=${PVREPLACED}${VPOSTFIX}

	SRC_URI="http://www.tagsistant.net/download/tagsistant-${MY_PV}-tar-gz/finish/11-tagsistant-${MY_PV}/31-tagsistant-${MY_PV}/0 -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"

	S=${WORKDIR}/tagsistant-${PV}
fi

LICENSE="GPL-2"
SLOT="0"
IUSE="mysql"

RDEPEND="
	dev-libs/glib
	sys-fs/fuse
	dev-db/libdbi
	dev-db/libdbi-drivers[sqlite]
	mysql? ( dev-db/libdbi-drivers[mysql] )
	>=media-libs/libextractor-0.6
"

DEPEND="${RDEPEND}"

AUTOTOOLS_AUTORECONF="true"
