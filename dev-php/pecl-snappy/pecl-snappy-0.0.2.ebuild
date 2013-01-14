# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

PHP_EXT_NAME="snappy"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="ChangeLog README EXPERIMENTAL"

USE_PHP="php5-3 php5-4"

inherit php-ext-pecl-r2

MY_PN="php-snappy"
MY_P="${MY_PN}-${PV}"

SRC_URI="http://php-snappy.googlecode.com/files/${MY_P}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/php-snappy"
PHP_EXT_S="${S}"

KEYWORDS="amd64 x86"

DESCRIPTION="PHP extension for interfacing with snappy"
HOMEPAGE="https://github.com/nicolasff/phpredis"
LICENSE="PHP-3"
SLOT="0"

DEPEND="app-arch/snappy"
RDEPEND="${DEPEND}"
