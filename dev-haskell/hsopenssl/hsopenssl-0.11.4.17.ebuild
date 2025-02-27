# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -homebrew-openssl,-macports-openssl

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HsOpenSSL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Partial OpenSSL binding for Haskell"
HOMEPAGE="https://github.com/vshabanov/HsOpenSSL"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="fast-bignum"

RDEPEND=">=dev-haskell/network-2.1:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/old-locale-1.0.0.2:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag fast-bignum fast-bignum) \
		--flag=-homebrew-openssl \
		--flag=-macports-openssl
}
