TERMUX_PKG_HOMEPAGE=https://github.com/CadQuery/OCP
TERMUX_PKG_DESCRIPTION="Python wrapper for OCCT generated using pywrap"
TERMUX_PKG_LICENSE="Apache 2.0"
TERMUX_PKG_MAINTAINER="@rhempel"
TERMUX_PKG_VERSION="v9.2.6"
TERMUX_PKG_SRCURL=https://gitlab.kitware.com/vtk/vtk/-/archive/${TERMUX_PKG_VERSION}/vtk-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=5d5dd374938b649a7ba8d443b8bc76b7991b87162d2090338239c7e6ebfc7af3
#TERMUX_PKG_DEPENDS=""

termux_step_configure() {
	sh ./mkconfig
}
