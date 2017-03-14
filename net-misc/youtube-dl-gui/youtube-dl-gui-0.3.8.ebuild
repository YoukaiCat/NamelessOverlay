# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )

DESCRIPTION="A cross platform front-end GUI of the popular youtube-dl written in wxPython"
HOMEPAGE="http://mrs0m30n3.github.io/youtube-dl-gui/"

if [[ ${PV} == "9999" ]] ; then
	inherit distutils-r1 git-r3
	EGIT_REPO_URI="https://github.com/MrS0m30n3/youtube-dl-gui.git"
	KEYWORDS=""
else
	inherit distutils-r1
	SRC_URI="https://github.com/MrS0m30n3/youtube-dl-gui/archive/${PV}.tar.gz -> ${P}.tar.gz"
	RESTRICT="mirror"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="Unlicense"
SLOT="0"

RDEPEND="
	net-misc/youtube-dl
	dev-python/wxpython:2.8
"

DEPEND="${RDEPEND}"
