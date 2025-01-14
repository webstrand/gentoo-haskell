# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell URI parsing as ByteStrings"
HOMEPAGE="https://github.com/Soostone/uri-bytestring"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.13.1.0:=[profile?]
	>=dev-haskell/blaze-builder-0.3.0.0:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-5:=[profile?]
	>=dev-haskell/semigroups-0.16.2.2:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/th-lift-0.7.5:=[profile?]
	>=dev-haskell/th-lift-instances-0.1.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/base-compat-0.7.0
		dev-haskell/hedgehog
		dev-haskell/hunit
		dev-haskell/safe
		dev-haskell/tasty
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit )
"

src_prepare() {
	default

	cabal_chdeps \
		'th-lift >= 0.7.5 && < 0.8' 'th-lift >= 0.7.5'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror
}
