# $NetBSD: Makefile,v 1.18 2020/08/31 18:13:04 wiz Exp $

DISTNAME=	Net-FastCGI-0.14
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	www perl5 net
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Net-FastCGI
COMMENT=	Perl 5 module to build and parse FastCGI messages
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
MAKE_ENV+=	PERL_USE_UNSAFE_INC=1
PERL5_PACKLIST=	auto/Net/FastCGI/.packlist

BUILD_DEPENDS+=	p5-Test-Exception-[0-9]*:../../devel/p5-Test-Exception
BUILD_DEPENDS+=	p5-Test-HexString-[0-9]*:../../devel/p5-Test-HexString

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
