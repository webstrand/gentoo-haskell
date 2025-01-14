# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs"
HOMEPAGE="https://github.com/MarcWeber/hasktags"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND=">=dev-haskell/json-0.5:=[profile?] <dev-haskell/json-0.10:=[profile?]
	>=dev-haskell/microlens-platform-0.3.8.0:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hunit )
"

src_prepare() {
	default

	cabal_chdeps \
		'microlens-platform >= 0.3.8.0 && < 0.4' 'microlens-platform >= 0.3.8.0'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}
