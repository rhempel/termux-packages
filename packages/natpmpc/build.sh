TERMUX_PKG_HOMEPAGE=http://miniupnp.free.fr/libnatpmp.html
TERMUX_PKG_DESCRIPTION="Portable and fully compliant implementation of NAT-PMP"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=20150609
TERMUX_PKG_REVISION=3
TERMUX_PKG_SRCURL=http://miniupnp.free.fr/files/libnatpmp-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=e1aa9c4c4219bc06943d6b2130f664daee213fb262fcb94dd355815b8f4536b0
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="INSTALLPREFIX=$TERMUX_PREFIX"

termux_step_post_get_source() {
	mv setup.py{,.unused}
}
