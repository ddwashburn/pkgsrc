# $NetBSD: Makefile,v 1.18 2020/08/31 18:09:45 wiz Exp $

DISTNAME=	a2ping
PKGNAME=	tex-${DISTNAME}-2.84p
PKGREVISION=	1
TEXLIVE_REV=	52964

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/a2ping
COMMENT=	Advanced PS, PDF, EPS converter
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	perl:run sh:run

REPLACE_SH=	bin/a2ping

SUBST_CLASSES+=		perl
SUBST_MESSAGE.perl=	Setting path to perl.
SUBST_STAGE.perl=	pre-configure
SUBST_FILES.perl=	bin/a2ping
SUBST_SED.perl=		-e 's,@PERL@,${PERL5},g'

TEX_TEXMF_DIRS=	none

.include "../../print/texlive/package.mk"

post-extract:
	${MKDIR} ${WRKSRC}/bin
	${MV} ${WRKSRC}/texmf-dist/scripts/a2ping/a2ping.pl ${WRKSRC}/bin/a2ping
	${RM} -r ${WRKSRC}/texmf-dist

pre-install:
	${RM} ${WRKSRC}/bin/*.orig

.include "../../mk/bsd.pkg.mk"
