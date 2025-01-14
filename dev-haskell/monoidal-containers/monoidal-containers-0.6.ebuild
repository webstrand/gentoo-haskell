# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Containers with monoidal accumulation"
HOMEPAGE="https://github.com/bgamari/monoidal-containers"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+split-these"

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/lens-4.4:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/newtype-0.2:=[profile?] <dev-haskell/newtype-0.3:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	split-these? ( >=dev-haskell/semialign-1:=[profile?] <dev-haskell/semialign-1.1:=[profile?]
			>=dev-haskell/these-1:=[profile?] <dev-haskell/these-1.1:=[profile?] )
	!split-these? ( >=dev-haskell/these-0.7:=[profile?] <dev-haskell/these-0.9:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.5 && <4.13' 'base >=4.5'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag split-these split-these)
}
