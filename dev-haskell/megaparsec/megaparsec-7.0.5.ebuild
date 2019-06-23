# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Monadic parser combinators"
HOMEPAGE="https://github.com/mrkkrp/megaparsec"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-3.0:=[profile?]
	>=dev-haskell/parser-combinators-1.0:=[profile?] <dev-haskell/parser-combinators-2.0:=[profile?]
	>=dev-haskell/scientific-0.3.1:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
