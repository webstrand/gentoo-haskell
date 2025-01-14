# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Multi-file, colored, filtered log tailer"
HOMEPAGE="http://hackage.haskell.org/package/ztail"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+inotify"

RDEPEND="<dev-haskell/regex-posix-1:=
	>=dev-haskell/unordered-containers-0.2:= <dev-haskell/unordered-containers-0.3:=
	>=dev-lang/ghc-8.0.1:=
	inotify? ( >=dev-haskell/hinotify-0.3.6:= <dev-haskell/hinotify-0.5:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_prepare() {
	default

	cabal_chdeps \
		'hinotify >= 0.3.6 && < 0.4' 'hinotify >= 0.3.6 && < 0.5' \
		'time >= 1.5 && < 1.9' 'time >= 1.5'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag inotify inotify)
}
