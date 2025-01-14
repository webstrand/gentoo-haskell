# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Hedgehog will eat all your bugs"
HOMEPAGE="https://hedgehog.qa"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # test: <stdout>: commitBuffer: invalid argument (invalid character)

RDEPEND=">=dev-haskell/ansi-terminal-0.6:=[profile?]
	>=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/concurrent-output-1.7:=[profile?] <dev-haskell/concurrent-output-1.11:=[profile?]
	>=dev-haskell/exceptions-0.7:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/lifted-async-0.7:=[profile?] <dev-haskell/lifted-async-0.11:=[profile?]
	>=dev-haskell/mmorph-1.0:=[profile?] <dev-haskell/mmorph-1.2:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pretty-show-1.6:=[profile?]
	>=dev-haskell/primitive-0.6:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/th-lift-0.7:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/wl-pprint-annotated-0.0:=[profile?] <dev-haskell/wl-pprint-annotated-0.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'ansi-terminal                   >= 0.6        && < 0.9' 'ansi-terminal                   >= 0.6' \
		'semigroups                      >= 0.16       && < 0.19' 'semigroups                      >= 0.16' \
		'stm                             >= 2.4        && < 2.5' 'stm                             >= 2.4' \
		'template-haskell                >= 2.10       && < 2.14' 'template-haskell                >= 2.10' \
		'pretty-show                     >= 1.6        && < 1.8' 'pretty-show                     >= 1.6' \
		'primitive                       >= 0.6        && < 0.7' 'primitive                       >= 0.6' \
		'th-lift                         >= 0.7        && < 0.8' 'th-lift                         >= 0.7'
}
