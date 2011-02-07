# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.11

EAPI="2"

CABAL_FEATURES="bin"
inherit base haskell-cabal

DESCRIPTION="Draw pretty sequence diagrams of D-Bus traffic"
HOMEPAGE="http://hackage.haskell.org/package/bustle"
SRC_URI="http://willthompson.co.uk/${PN}/releases/${P}.tar.gz"

LICENSE="LGPL-2 GPL-2" # bustle-dbus-monitor.c is GPL-2, rest is LGPL-2
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=("${FILESDIR}/0001-bustle-dbus-monitor-fix-linking-order-libs-go-after-.patch")

RDEPEND="sys-apps/dbus"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		dev-haskell/cairo
		dev-haskell/glade
		dev-haskell/glib
		>dev-haskell/gtk-0.11
		dev-haskell/mtl
		dev-haskell/pango
		dev-haskell/parsec
		>=dev-lang/ghc-6.10.1"

src_compile() {
	# compile haskell part
	cabal_src_compile || die "could not build haskell parts"

	# compile C part
	emake || die "building C part failed"
}

src_install() {
	# install haskell part
	cabal_src_install || die "could not install haskell parts"

	# install C part
	dobin bustle-dbus-monitor || die "could not install C parts"

	dodoc README HACKING NEWS
}
