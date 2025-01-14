# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -llvm

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient algorithms for vector arrays"
HOMEPAGE="https://github.com/erikd/vector-algorithms/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bench +boundschecks internalchecks +properties unsafechecks"

RDEPEND=">=dev-haskell/primitive-0.3:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/tagged-0.4:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/vector-0.6:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
	test? ( properties? ( >dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.14 ) )
"

src_prepare() {
	default

	cabal_chdeps \
		'primitive >=0.3 && <0.7' 'primitive >=0.3 && <0.8' \
		'QuickCheck > 2.9 && < 2.13' 'QuickCheck > 2.9 && < 2.14'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bench bench) \
		$(cabal_flag boundschecks boundschecks) \
		$(cabal_flag internalchecks internalchecks) \
		--flag=-llvm \
		$(cabal_flag properties properties) \
		$(cabal_flag unsafechecks unsafechecks)
}
