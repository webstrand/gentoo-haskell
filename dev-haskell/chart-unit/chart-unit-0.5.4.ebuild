# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Native haskell charts"
HOMEPAGE="https://github.com/tonyday567/chart-unit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/colour:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/diagrams-lib:=[profile?]
	dev-haskell/diagrams-svg:=[profile?]
	dev-haskell/foldl:=[profile?]
	dev-haskell/formatting:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/linear:=[profile?]
	dev-haskell/mwc-probability:=[profile?]
	dev-haskell/mwc-random:=[profile?]
	>=dev-haskell/numhask-0.0.5:=[profile?] <dev-haskell/numhask-1:=[profile?]
	>=dev-haskell/numhask-range-0.0.3:=[profile?] <dev-haskell/numhask-range-1:=[profile?]
	dev-haskell/palette:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/protolude:=[profile?]
	dev-haskell/svgfonts:=[profile?]
	dev-haskell/tdigest:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hspec )
"