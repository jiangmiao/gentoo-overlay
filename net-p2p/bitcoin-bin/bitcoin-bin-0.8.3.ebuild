# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MY_PN="bitcoin"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Bitcoin Precompiled Client"
HOMEPAGE="http://bitcoin.org"
SRC_URI="http://sourceforge.net/projects/bitcoin/files/Bitcoin/${MY_P}/${MY_P}-linux.tar.gz/download -> ${P}.tar.gz"
S="${WORKDIR}/${MY_P}-linux"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	!net-php/bitcoind
	!net-php/bitcoin-qt
"
RDEPEND="${DEPEND}"

src_install() {
	if [ `uname -m` == "x86_64" ] ; then
		bit=64
	else
		bit=32
	fi
	dobin bin/$bit/bitcoind
	dobin bin/$bit/bitcoin-qt
}
