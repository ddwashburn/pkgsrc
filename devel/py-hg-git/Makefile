# $NetBSD: Makefile,v 1.14 2020/01/18 23:30:37 rillig Exp $

DISTNAME=	0.8.10
PKGNAME=	${PYPKGPREFIX}-hg-git-${DISTNAME}
CATEGORIES=	devel scm
MASTER_SITES=	https://bitbucket.org/durin42/hg-git/get/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	https://hg-git.github.io/
COMMENT=	Push to and pull from a Git server repository using Mercurial
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-dulwich>=0.9.7:../../devel/py-dulwich

DIST_SUBDIR=	hg-git
WRKSRC=		${WRKDIR}/durin42-hg-git-6ef27582bfa5

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED= 27 # as of 0.8.3
EGG_NAME=	hg_git-${DISTNAME}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
