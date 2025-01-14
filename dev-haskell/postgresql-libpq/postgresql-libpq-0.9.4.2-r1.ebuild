# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: -use-pkg-config

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="low-level binding to libpq"
HOMEPAGE="https://github.com/phadej/postgresql-libpq"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-db/postgresql-7:*
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10 <dev-haskell/cabal-3.1
"

src_prepare() {
	default

	cabal_chdeps \
		'base       >=4.3     && <4.13' 'base       >=4.3' \
		'Cabal >= 1.10 && <2.5' 'Cabal >= 1.10 && <3.1'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-use-pkg-config
}
