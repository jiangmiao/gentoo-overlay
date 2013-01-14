# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Git Gui"
HOMEPAGE="http://repo.or.cz/w/git-gui.git/"
SRC_URI="http://repo.or.cz/w/git-gui.git/snapshot/f6dd784ed4c1705d465b1238f9a5971f2733e582.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/git-gui"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-vcs/git dev-lang/tcl dev-lang/tk"
RDEPEND="${DEPEND}"
