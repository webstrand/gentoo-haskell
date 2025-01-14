# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Mid-Level PostgreSQL client library"
HOMEPAGE="http://hackage.haskell.org/package/postgresql-simple"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="test" # requires running postgres

RDEPEND=">=dev-haskell/aeson-1.4.1.0:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/attoparsec-0.13.2.2:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/bytestring-builder-0.10.8.1.0:=[profile?] <dev-haskell/bytestring-builder-0.11:=[profile?]
	>=dev-haskell/case-insensitive-1.2.0.11:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/fail-4.9.0.0:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?]
	>=dev-haskell/only-0.1:=[profile?] <dev-haskell/only-0.1.1:=[profile?]
	>=dev-haskell/postgresql-libpq-0.9.4.2:=[profile?] <dev-haskell/postgresql-libpq-0.10:=[profile?]
	>=dev-haskell/scientific-0.3.6.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/uuid-types-1.0.3:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/base16-bytestring
		>=dev-haskell/cryptohash-md5-0.11.100.1 <dev-haskell/cryptohash-md5-0.12
		dev-haskell/hunit
		>=dev-haskell/inspection-testing-0.4.1.1 <dev-haskell/inspection-testing-0.5
		dev-haskell/tasty
		dev-haskell/tasty-golden
		dev-haskell/tasty-hunit )
"

src_prepare() {
	default

	cabal_chdeps \
		'base               >=4.6.0.0  && <4.13' 'base               >=4.6.0.0' \
		'time               >=1.4.0.1  && <1.9' 'time               >=1.4.0.1' \
		'template-haskell   >=2.8.0.0  && <2.15' 'template-haskell   >=2.8.0.0' \
		'hashable           >=1.2.7.0     && <1.3' 'hashable           >=1.2.7.0' \
		'semigroups >=0.18.5  && <0.19' 'semigroups >=0.18.5'
}
