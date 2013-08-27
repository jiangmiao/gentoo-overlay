# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MY_PN="litecoin"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Litcoin Precompiled Client"
HOMEPAGE="http://litecoin"
SRC_URI="https://litecoin.org/downloads/linux/${MY_P}-linux.tar.xz -> ${P}.tar.xz"
S="${WORKDIR}/${MY_P}-linux"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	if [ `uname -m` == "x86_64" ] ; then
		bit=64
	else
		bit=32
	fi
	dobin bin/$bit/litecoind
	dobin bin/$bit/litecoin-qt
}
