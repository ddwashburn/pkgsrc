# $NetBSD: Makefile,v 1.25 2020/08/31 18:12:54 wiz Exp $

DISTNAME=	HTTP-Body-1.22
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	6
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/HTTP-Body
COMMENT=	HTTP Body Parser
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-HTTP-Message>=0:../../www/p5-HTTP-Message

BUILD_DEPENDS+=	p5-Test-Deep-[0-9]*:../../devel/p5-Test-Deep

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/HTTP/Body/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
