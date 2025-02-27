# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Template Haskell code to generate instances of classes in dependent-sum package"
HOMEPAGE="https://github.com/mokus0/dependent-sum-template"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/dependent-sum-0.2:=[profile?]
	>=dev-haskell/th-extras-0.0.0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	default

	cabal_chdeps \
		'dependent-sum >= 0.2 && < 0.5' 'dependent-sum >= 0.2'
}
