# $NetBSD: Makefile,v 1.14 2020/11/05 09:07:47 ryoon Exp $

PKGNAME=	${DISTNAME:S/-/95-plpython-/}
PKGREVISION=	2
COMMENT=	PL/Python procedural language for the PostgreSQL backend

DEPENDS+=	postgresql95-server>=${PKGVERSION_NOREV}:../../databases/postgresql95-server

.include "../../databases/postgresql95/Makefile.common"

TOOLS_BROKEN+=		perl
CONFIGURE_ARGS+=	--with-python
CONFIGURE_ENV+=		PYTHON="${PYTHONBIN}"
BUILD_MAKE_FLAGS=	PGXS=1

BUILD_DIRS=		src/pl/plpython contrib/hstore_plpython

.include "../../databases/postgresql95-client/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
