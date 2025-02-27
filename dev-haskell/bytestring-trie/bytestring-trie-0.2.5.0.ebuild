# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An efficient finite map from (byte)strings to values"
HOMEPAGE="http://wrengr.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5.1:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
"

src_prepare() {
	default

	cabal_chdeps \
		'binary     >= 0.5.1 && < 0.8.7' 'binary     >= 0.5.1' \
		'base       >= 4.5   && < 4.13' 'base       >= 4.5'
}
