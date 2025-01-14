# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="swap and assoc: Symmetric and Semigroupy Bifunctors"
HOMEPAGE="http://hackage.haskell.org/package/assoc"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bifunctors-5.5.2:=[profile?] <dev-haskell/bifunctors-5.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
"

src_prepare() {
	default

	cabal_chdeps \
		'base        >=4.3   && <4.13' 'base        >=4.3'
}
