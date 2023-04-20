TERMUX_PKG_HOMEPAGE=https://www.opencascade.com/
TERMUX_PKG_DESCRIPTION="OpenCascade 3D Modelling Kernel"
TERMUX_PKG_LICENSE="LGPL"
TERMUX_PKG_LICENSE_FILE=""
TERMUX_PKG_MAINTAINER="@rhempel"
TERMUX_PKG_VERSION=7.6.3
TERMUX_PKG_SRCURL="https://github.com/Open-Cascade-SAS/OCCT/archive/refs/heads/OCCT-7.6.zip"
TERMUX_PKG_SHA256=76b2be7c388e95240b12a9b5d7c9e6f514b29ce0d2acbffc27c1f582de87ca34
TERMUX_PKG_DEPENDS="freetype, opengl"
# TERMUX_PKG_SUGGESTS=""
# TERMUX_PKG_BUILD_DEPENDS=""
# TERMUX_PKG_CONFLICTS=""
# TERMUX_PKG_REPLACES=""

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
"
# --cmake-prefix-path $TERMUX_PREFI

# termux_step_pre_configure() {
# 	termux_setup_cmake
# 
# 	CPPFLAGS+=" -D__USE_GNU"
# 	LDFLAGS+=" -landroid-shmem"
# 
# 	_WRAPPER_BIN=$TERMUX_PKG_BUILDDIR/_wrapper/bin
# 	mkdir -p $_WRAPPER_BIN
# 	if [ "$TERMUX_ON_DEVICE_BUILD" = "false" ]; then
# 		sed 's|@CMAKE@|'"$(command -v cmake)"'|g' \
# 			$TERMUX_PKG_BUILDER_DIR/cmake-wrapper.in \
# 			> $_WRAPPER_BIN/cmake
# 		chmod 0700 $_WRAPPER_BIN/cmake
# 		sed "s|^export PKG_CONFIG_LIBDIR=|export PKG_CONFIG_LIBDIR=${TERMUX_PREFIX}/opt/libwayland/cross/lib/x86_64-linux-gnu/pkgconfig:|" \
# 			"${TERMUX_STANDALONE_TOOLCHAIN}/bin/pkg-config" \
# 			> "${_WRAPPER_BIN}/pkg-config"
# 		chmod +x "${_WRAPPER_BIN}/pkg-config"
# 		export PKG_CONFIG="${_WRAPPER_BIN}/pkg-config"
# 	fi
# 	export PATH=$_WRAPPER_BIN:$PATH
# }
# 
# termux_step_post_configure() {
# 	rm -f $_WRAPPER_BIN/cmake
# }
# 
# termux_step_post_make_install() {
# 	# Avoid hard links
# 	local f1
# 	for f1 in $TERMUX_PREFIX/lib/dri/*; do
# 		if [ ! -f "${f1}" ]; then
# 			continue
# 		fi
# 		local f2
# 		for f2 in $TERMUX_PREFIX/lib/dri/*; do
# 			if [ -f "${f2}" ] && [ "${f1}" != "${f2}" ]; then
# 				local s1=$(stat -c "%i" "${f1}")
# 				local s2=$(stat -c "%i" "${f2}")
# 				if [ "${s1}" = "${s2}" ]; then
# 					ln -sfr "${f1}" "${f2}"
# 				fi
# 			fi
# 		done
# 	done
# 
# 	# Create symlinks
# 	ln -sf libEGL_mesa.so ${TERMUX_PREFIX}/lib/libEGL_mesa.so.0
# 	ln -sf libGLX_mesa.so ${TERMUX_PREFIX}/lib/libGLX_mesa.so.0
# }
# 