TERMUX_PKG_HOMEPAGE=https://wiki.gnome.org/Apps/Web
TERMUX_PKG_DESCRIPTION="A GNOME web browser based on the WebKit rendering engine"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
_MAJOR_VERSION=44
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.1
TERMUX_PKG_SRCURL=https://download.gnome.org/sources/epiphany/${_MAJOR_VERSION}/epiphany-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=bbad28fc7273a866b9b5e5dd5686bd048430c3f0beed4c08260b4d08dd8ff85b
TERMUX_PKG_DEPENDS="adwaita-icon-theme, gcr4, gdk-pixbuf, glib, graphene, gsettings-desktop-schemas, gstreamer, gtk4, iso-codes, json-glib, libadwaita, libarchive, libcairo, libgmp, libnettle, libportal-gtk4, libsecret, libsoup3, libsqlite, libxml2, pango, webkitgtk-6.0"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dunit_tests=disabled
"
