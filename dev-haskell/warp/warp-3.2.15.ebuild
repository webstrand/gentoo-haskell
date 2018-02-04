# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999
#hackport: flags: -network-bytestring

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fast, light-weight web server for WAI applications"
HOMEPAGE="https://github.com/yesodweb/wai"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+allow-sendfilefd warp-debug"

RDEPEND="dev-haskell/async:=[profile?]
	>=dev-haskell/auto-update-0.1.3:=[profile?] <dev-haskell/auto-update-0.2:=[profile?]
	>=dev-haskell/blaze-builder-0.4:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/http-date:=[profile?]
	>=dev-haskell/http-types-0.9.1:=[profile?]
	>=dev-haskell/http2-1.6:=[profile?] <dev-haskell/http2-1.7:=[profile?]
	>=dev-haskell/iproute-1.3.1:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/simple-sendfile-0.2.7:=[profile?] <dev-haskell/simple-sendfile-0.3:=[profile?]
	>=dev-haskell/stm-2.3:=[profile?]
	>=dev-haskell/streaming-commons-0.1.10:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/unix-compat-0.2:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?]
	>=dev-haskell/wai-3.2:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/doctest-0.10.1
		>=dev-haskell/hspec-1.3
		dev-haskell/http-client
		dev-haskell/hunit
		>=dev-haskell/lifted-base-0.1
		dev-haskell/quickcheck
		dev-haskell/silently )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag allow-sendfilefd allow-sendfilefd) \
		--flag=-network-bytestring \
		$(cabal_flag warp-debug warp-debug)
}