# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A static website compiler library"
HOMEPAGE="http://jaspervdj.be/hakyll"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildwebsite +checkexternal +previewserver +usepandoc +watchserver"

RESTRICT=test # unixFilter error:      FAIL

RDEPEND=">=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/cryptohash-0.7:=[profile?] <dev-haskell/cryptohash-0.12:=[profile?]
	>=dev-haskell/data-default-0.4:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/file-embed-0.0.10.1:=[profile?] <dev-haskell/file-embed-0.0.12:=[profile?]
	>=dev-haskell/lrucache-1.1.1:=[profile?] <dev-haskell/lrucache-1.3:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/optparse-applicative-0.12:=[profile?] <dev-haskell/optparse-applicative-0.15:=[profile?]
	>=dev-haskell/parsec-3.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?] <dev-haskell/regex-tdfa-1.3:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/scientific-0.3.4:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagsoup-0.13.1:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/yaml-0.8.11:=[profile?]
	>=dev-lang/ghc-8.2.1:=
	buildwebsite? ( >=app-text/pandoc-2.0.5:=[profile?] <app-text/pandoc-2.4:=[profile?] )
	checkexternal? ( >=dev-haskell/http-conduit-2.2:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?] )
	previewserver? ( >=dev-haskell/fsnotify-0.2:=[profile?] <dev-haskell/fsnotify-0.4:=[profile?]
				>=dev-haskell/http-types-0.9:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
				>=dev-haskell/wai-3.2:=[profile?] <dev-haskell/wai-3.3:=[profile?]
				>=dev-haskell/wai-app-static-3.1:=[profile?] <dev-haskell/wai-app-static-3.2:=[profile?]
				>=dev-haskell/warp-3.2:=[profile?] <dev-haskell/warp-3.3:=[profile?] )
	!previewserver? ( checkexternal? ( >=dev-haskell/http-types-0.7:=[profile?] <dev-haskell/http-types-0.13:=[profile?] )
				watchserver? ( >=dev-haskell/fsnotify-0.2:=[profile?] <dev-haskell/fsnotify-0.4:=[profile?] ) )
	usepandoc? ( >=app-text/pandoc-2.0.5:=[profile?] <app-text/pandoc-2.4:=[profile?]
			>=dev-haskell/pandoc-citeproc-0.14:=[profile?] <dev-haskell/pandoc-citeproc-0.16:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
	test? ( >=dev-haskell/quickcheck-2.8 <dev-haskell/quickcheck-2.13
		>=dev-haskell/tasty-0.11 <dev-haskell/tasty-1.2
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11 )
"

src_prepare() {
	default

	cabal_chdeps \
		'containers           >= 0.3      && < 0.6' 'containers           >= 0.3' \
		'pandoc          >= 2.0.5    && < 2.3' 'pandoc          >= 2.0.5    && < 2.4' \
		'pandoc    >= 2.0.5 && < 2.3' 'pandoc    >= 2.0.5 && < 2.4' \
		'yaml                 >= 0.8.11   && < 0.11' 'yaml                 >= 0.8.11' \
		'pandoc-citeproc >= 0.14     && < 0.15' 'pandoc-citeproc >= 0.14     && < 0.16'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildwebsite buildwebsite) \
		$(cabal_flag checkexternal checkexternal) \
		$(cabal_flag previewserver previewserver) \
		$(cabal_flag usepandoc usepandoc) \
		$(cabal_flag watchserver watchserver)
}