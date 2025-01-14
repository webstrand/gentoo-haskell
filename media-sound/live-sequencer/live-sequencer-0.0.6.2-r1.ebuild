# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Live coding of MIDI music"
HOMEPAGE="http://www.haskell.org/haskellwiki/Live-Sequencer"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+gui +httpserver +mplayer"

RDEPEND=">=dev-haskell/alsa-core-0.5:=[profile?] <dev-haskell/alsa-core-0.6:=[profile?]
	>=dev-haskell/alsa-seq-0.6:=[profile?] <dev-haskell/alsa-seq-0.7:=[profile?]
	>=dev-haskell/concurrent-split-0.0:=[profile?] <dev-haskell/concurrent-split-0.1:=[profile?]
	>=dev-haskell/data-accessor-0.2.1:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/data-accessor-transformers-0.2.1:=[profile?] <dev-haskell/data-accessor-transformers-0.3:=[profile?]
	>=dev-haskell/event-list-0.0.11:=[profile?] <dev-haskell/event-list-0.2:=[profile?]
	>=dev-haskell/explicit-exception-0.1.9:=[profile?] <dev-haskell/explicit-exception-0.2:=[profile?]
	>=dev-haskell/midi-0.2.1:=[profile?] <dev-haskell/midi-0.3:=[profile?]
	>=dev-haskell/midi-alsa-0.2:=[profile?] <dev-haskell/midi-alsa-0.3:=[profile?]
	>=dev-haskell/non-empty-0.2:=[profile?] <dev-haskell/non-empty-0.4:=[profile?]
	>=dev-haskell/non-negative-0.0.6:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/parsec-2.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/pathtype-0.8.1:=[profile?] <dev-haskell/pathtype-0.9:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/stm-split-0.0:=[profile?] <dev-haskell/stm-split-0.1:=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?] <dev-haskell/strict-0.4:=[profile?]
	>=dev-haskell/utility-ht-0.0.8:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	gui? ( >=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.6:=[profile?]
		>=dev-haskell/wx-0.12.1:=[profile?] <dev-haskell/wx-0.93:=[profile?]
		>=dev-haskell/wxcore-0.13.2:=[profile?] <dev-haskell/wxcore-0.93:=[profile?]
		httpserver? ( >=dev-haskell/cgi-3001.1:=[profile?]
				>=dev-haskell/html-1.0:=[profile?] <dev-haskell/html-1.1:=[profile?]
				>=dev-haskell/httpd-shed-0.4:=[profile?] <dev-haskell/httpd-shed-0.5:=[profile?]
				>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.9:=[profile?]
				>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps\
		'stm >=2.2 && <2.5' 'stm >=2.2 && <2.6'\
		'network >=2.6 && <2.7' 'network >=2.6 && <2.9'\
		'containers >=0.3 && <0.6' 'containers >=0.3 && <0.7' \
		'cgi >=3001.1 && <3001.4' 'cgi >=3001.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag gui gui) \
		$(cabal_flag httpserver httpserver) \
		$(cabal_flag mplayer mplayer)
}
