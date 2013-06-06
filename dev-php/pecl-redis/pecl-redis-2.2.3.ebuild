# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"


PHP_EXT_NAME="redis"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="README.markdown arrays.markdown"

USE_PHP="php5-3 php5-4"

inherit php-ext-pecl-r2

SRC_URI="https://github.com/nicolasff/phpredis/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/phpredis-${PV}"
PHP_EXT_S="${S}"

KEYWORDS="amd64 x86"

DESCRIPTION="PHP extension for interfacing with redis"
HOMEPAGE=https://github.com/nicolasff/phpredis
LICENSE="PHP-3"
SLOT="0"

DEPEND="dev-db/redis"
RDEPEND="${DEPEND}"
