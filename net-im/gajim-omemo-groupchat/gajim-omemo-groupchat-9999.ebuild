# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Gajim plugin for XEP proposal: OMEMO Encryption"
HOMEPAGE="https://github.com/siacs/HttpUploadComponent"

inherit git-r3

EGIT_REPO_URI="https://github.com/lovetox/gajim-omemo.git"
EGIT_BRANCH="groupchat"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-python/python-axolotl"
RDEPEND="${DEPEND}"

src_install() {
	local PLUGIN_DIR="/usr/share/gajim/plugins"
	local OMEMO_PLUGIN_DIR="${PLUGIN_DIR}/omemo"
	dodir "${PLUGIN_DIR}"
	dodir "${OMEMO_PLUGIN_DIR}"
	cp -pPR "${S}"/* "${D}/${OMEMO_PLUGIN_DIR}" || die "Installing files failed"
}
