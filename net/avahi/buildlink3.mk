# $NetBSD: buildlink3.mk,v 1.46 2020/09/29 10:56:56 prlw1 Exp $

BUILDLINK_TREE+=	avahi

.if !defined(AVAHI_BUILDLINK3_MK)
AVAHI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.avahi+=	avahi>=0.6.23
BUILDLINK_ABI_DEPENDS.avahi+=	avahi>=0.6.32nb25
BUILDLINK_PKGSRCDIR.avahi?=	../../net/avahi

pkgbase := avahi
.include "../../mk/pkg-build-options.mk"

.if ${PKG_BUILD_OPTIONS.avahi:Mgdbm}
.  include "../../databases/gdbm/buildlink3.mk"
.endif

.if ${PKG_BUILD_OPTIONS.avahi:Mgtk3}
.include "../../x11/gtk3/buildlink3.mk"
.endif

.if ${PKG_BUILD_OPTIONS.avahi:Mintrospection}
.include "../../devel/gobject-introspection/buildlink3.mk"
.endif

.if ${PKG_BUILD_OPTIONS.avahi:Mmono}
.include "../../x11/gtk-sharp/buildlink3.mk"
.endif

.if ${PKG_BUILD_OPTIONS.avahi:Mpython}
.include "../../lang/python/application.mk"
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.endif # AVAHI_BUILDLINK3_MK

BUILDLINK_TREE+=	-avahi
