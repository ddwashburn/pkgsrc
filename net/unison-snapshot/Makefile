# $NetBSD: Makefile,v 1.10 2020/11/05 09:08:57 ryoon Exp $

DISTNAME=	unison-2.51.3.70
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=bcpierce00/}
GITHUB_TAG=     54d8e790c8f52d0ebe27a0f32a678153b3c6f31f

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.cis.upenn.edu/~bcpierce/unison/
COMMENT=	File-synchronization tool
LICENSE=	gnu-gpl-v3

USE_TOOLS+=	gmake bash
MAKE_FLAGS+=	CFLAGS=""

.include "options.mk"

.include "../../mk/ocaml.mk"

.if (${OCAML_USE_OPT_COMPILER} == "yes")
MAKE_FLAGS+=	NATIVE=true
.else
MAKE_FLAGS+=	NATIVE=false
.endif

.include "../../mk/pthread.buildlink3.mk"

.if defined(PTHREAD_TYPE) && (${PTHREAD_TYPE} != "none")
MAKE_FLAGS+=	THREADS=true
.endif

TEST_TARGET=		test

INSTALLATION_DIRS=	bin
INSTALLATION_DIRS+=	share/doc/unison

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/unison ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/BUGS.txt ${DESTDIR}${PREFIX}/share/doc/unison
	${INSTALL_MAN} ${WRKSRC}/src/CONTRIB ${DESTDIR}${PREFIX}/share/doc/unison
	${INSTALL_MAN} ${WRKSRC}/src/COPYING ${DESTDIR}${PREFIX}/share/doc/unison
	${INSTALL_MAN} ${WRKSRC}/src/NEWS ${DESTDIR}${PREFIX}/share/doc/unison
	${INSTALL_MAN} ${WRKSRC}/src/README ${DESTDIR}${PREFIX}/share/doc/unison
	${INSTALL_MAN} ${WRKSRC}/src/ROADMAP.txt ${DESTDIR}${PREFIX}/share/doc/unison
	${INSTALL_MAN} ${WRKSRC}/src/TODO.txt ${DESTDIR}${PREFIX}/share/doc/unison

.include "../../lang/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
