# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -bootstrap,+system-pcre

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="syntax highlighting library"
HOMEPAGE="https://github.com/jgm/skylighting"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable"

RDEPEND="~dev-haskell/skylighting-core-0.8.2.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	executable? ( >=dev-haskell/blaze-html-0.5:=[profile?]
			dev-haskell/pretty-show:=[profile?]
			dev-haskell/text:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bootstrap \
		$(cabal_flag executable executable) \
		--flag=system-pcre
}
