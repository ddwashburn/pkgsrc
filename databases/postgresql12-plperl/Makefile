#$ $NetBSD: Makefile,v 1.7 2020/11/05 09:07:45 ryoon Exp $

PKGNAME=	${DISTNAME:S/-/12-plperl-/}
PKGREVISION=	2
COMMENT=	PL/Perl procedural language for the PostgreSQL backend

DEPENDS+=	postgresql12-server>=${PKGVERSION_NOREV}:../../databases/postgresql12-server

.include "../../databases/postgresql12/Makefile.common"

USE_TOOLS+=		perl
PERL5_CONFIGURE=	no
CONFIGURE_ARGS+=	--with-perl
BUILD_MAKE_FLAGS=	PGXS=1

BUILD_DIRS=		src/pl/plperl
MAKE_FILE=		GNUmakefile

# There is some dependency ordering problem in the Makefile,
# so force the headers to be generated first.
BUILD_TARGET=		perlchunks.h plperl_opmask.h all

.include "../../databases/postgresql12-client/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
