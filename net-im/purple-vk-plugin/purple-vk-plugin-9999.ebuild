# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit mercurial cmake-utils

DESCRIPTION="Vk.com plugin for Pidgin"
HOMEPAGE="https://bitbucket.org/olegoandreev/purple-vk-plugin"

EHG_REPO_URI="https://bitbucket.org/olegoandreev/purple-vk-plugin"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	net-im/pidgin
	>=dev-libs/libxml2-2.7
	sys-devel/gettext
"

DEPEND="${RDEPEND}"
