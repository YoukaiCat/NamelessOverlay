# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

K_PREPATCHED="yes"
UNIPATCH_STRICTORDER="yes"
K_SECURITY_UNSUPPORTED="1"
K_NOUSENAME="yes"
K_NOSETEXTRAVERSION="yes"
K_NOUSEPR="yes"
K_EXP_GENPATCHES_NOUSE="1"
K_FROM_GIT="yes"

CKV="${PVR/-r/-git}"

ETYPE="sources"

EGIT_BRANCH="master"
EGIT_CLONE_TYPE="shallow"
EGIT_REPO_URI="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"

# only use this if it's not an _rc/_pre release
[ "${PV/_pre}" == "${PV}" ] && [ "${PV/_rc}" == "${PV}" ] && OKV="${PV}"
inherit kernel-2 git-2
detect_version

DESCRIPTION="The very latest -git version of the Linux kernel"
HOMEPAGE="https://www.kernel.org"

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

K_EXTRAEINFO="This kernel is not supported by Gentoo due to its unstable and
experimental nature. If you have any issues, try a matching vanilla-sources
ebuild -- if the problem is not there, please contact the upstream kernel
developers at https://bugzilla.kernel.org and on the linux-kernel mailing list to
report the problem so it can be fixed in time for the next kernel release."

RDEPEND=""
DEPEND="${RDEPEND}
	>=sys-devel/patch-2.7.4"

pkg_postinst() {
	postinst_sources
}
