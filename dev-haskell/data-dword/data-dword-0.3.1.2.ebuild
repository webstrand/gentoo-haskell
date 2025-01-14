# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Stick two binary words together to get a bigger one"
HOMEPAGE="https://github.com/mvv/data-dword"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/data-bword-0.1:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-quickcheck-0.8 )
"

PATCHES=("${FILESDIR}"/${P}-ghc-8.8.patch)
