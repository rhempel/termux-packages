TERMUX_PKG_HOMEPAGE=https://github.com/CadQuery/OCP
TERMUX_PKG_DESCRIPTION="Python wrapper for OCCT generated using pywrap"
TERMUX_PKG_LICENSE="Apache 2.0"
TERMUX_PKG_MAINTAINER="@rhempel"
TERMUX_PKG_VERSION=7.7.0.0
TERMUX_PKG_SRCURL=https://github.com/CadQuery/OCP/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=62d12cdfc61efe14e6ff5c6d507298d48bbe277ab2bbaf568e0950fd9aa794fc
# TERMUX_PKG_DEPENDS="vtk, libxml2, occt" libllvm? clang?


termux_step_pre_configure() {
#    export LDFLAGS="-L/data/data/com.termux/files/usr/lib"
    pywrap -l /data/data/com.termux/files/usr/lib all ocp.toml
    echo "FOFOFOFOF"
}


termux_step_make() {
	echo "step_make FOFOFOFOF"

#	make -j $TERMUX_MAKE_PROCESSES \
#		CC="$CC" \
#		CFLAGS_ADDTL="$CFLAGS $CPPFLAGS" \
#		LDFLAGS_ADDTL="$LDFLAGS"
}

