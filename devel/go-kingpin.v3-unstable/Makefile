# $NetBSD: Makefile,v 1.21 2020/11/08 21:59:19 bsiegert Exp $

DISTNAME=	kingpin-3.0.0.0.20100811
PKGNAME=	go-${DISTNAME:S/kingpin/kingpin.v3-unstable/}
PKGREVISION=	20
MASTER_SITES=	${MASTER_SITE_GITHUB:=alecthomas/}
CATEGORIES=	devel
GITHUB_PROJECT=	kingpin
GITHUB_TAG=	df19058c872cddcd279411d709047160e543a700

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/alecthomas/kingpin/tree/v3-unstable
COMMENT=	Golang command line and flag parser, unstable v3
LICENSE=	mit

GO_DIST_BASE=	kingpin-${GITHUB_TAG}
GO_SRCPATH=	gopkg.in/alecthomas/kingpin.v3-unstable

.include "../../math/go-units/buildlink3.mk"
.include "../../devel/go-i18n/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
