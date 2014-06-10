# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Event lists with relative or absolute time stamps"
HOMEPAGE="http://code.haskell.org/~thielema/event-list/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # hangs

RDEPEND=">=dev-haskell/non-negative-0.1:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/quickcheck-2.1:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/transformers-0.1:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/utility-ht-0.0.10:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/random-1.0 <dev-haskell/random-2.0 )
"
