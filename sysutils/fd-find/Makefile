# $NetBSD: Makefile,v 1.2 2020/11/05 09:09:07 ryoon Exp $

DISTNAME=	fd-find-8.1.1
PKGREVISION=	1
CATEGORIES=	sysutils
GITHUB_PROJECT=	fd
MASTER_SITES=	${MASTER_SITE_GITHUB:=sharkdp/}
GITHUB_TAG=	v${PKGVERSION_NOREV}
DIST_SUBDIR=	${PKGBASE}
EXTRACT_USING=	bsdtar

MAINTAINER=	milan@petabyte.dev
HOMEPAGE=	https://github.com/sharkdp/fd/
COMMENT=	Simple, fast und user-friendly alternative to find
LICENSE=	apache-2.0

USE_LANGUAGES=	c c++

CARGO_CRATE_DEPENDS+=	aho-corasick-0.7.10
CARGO_CRATE_DEPENDS+=	ansi_term-0.11.0
CARGO_CRATE_DEPENDS+=	ansi_term-0.12.1
CARGO_CRATE_DEPENDS+=	anyhow-1.0.31
CARGO_CRATE_DEPENDS+=	arrayref-0.3.6
CARGO_CRATE_DEPENDS+=	arrayvec-0.5.1
CARGO_CRATE_DEPENDS+=	atty-0.2.14
CARGO_CRATE_DEPENDS+=	autocfg-1.0.0
CARGO_CRATE_DEPENDS+=	base64-0.11.0
CARGO_CRATE_DEPENDS+=	bitflags-1.2.1
CARGO_CRATE_DEPENDS+=	blake2b_simd-0.5.10
CARGO_CRATE_DEPENDS+=	bstr-0.2.13
CARGO_CRATE_DEPENDS+=	cc-1.0.53
CARGO_CRATE_DEPENDS+=	cfg-if-0.1.10
CARGO_CRATE_DEPENDS+=	clap-2.33.1
CARGO_CRATE_DEPENDS+=	constant_time_eq-0.1.5
CARGO_CRATE_DEPENDS+=	crossbeam-utils-0.7.2
CARGO_CRATE_DEPENDS+=	ctrlc-3.1.4
CARGO_CRATE_DEPENDS+=	diff-0.1.12
CARGO_CRATE_DEPENDS+=	dirs-2.0.2
CARGO_CRATE_DEPENDS+=	dirs-sys-0.3.4
CARGO_CRATE_DEPENDS+=	filetime-0.2.10
CARGO_CRATE_DEPENDS+=	fnv-1.0.7
CARGO_CRATE_DEPENDS+=	fs_extra-1.1.0
CARGO_CRATE_DEPENDS+=	fuchsia-cprng-0.1.1
CARGO_CRATE_DEPENDS+=	getrandom-0.1.14
CARGO_CRATE_DEPENDS+=	globset-0.4.5
CARGO_CRATE_DEPENDS+=	hermit-abi-0.1.13
CARGO_CRATE_DEPENDS+=	humantime-2.0.0
CARGO_CRATE_DEPENDS+=	ignore-0.4.15
CARGO_CRATE_DEPENDS+=	jemalloc-sys-0.3.2
CARGO_CRATE_DEPENDS+=	jemallocator-0.3.2
CARGO_CRATE_DEPENDS+=	lazy_static-1.4.0
CARGO_CRATE_DEPENDS+=	libc-0.2.70
CARGO_CRATE_DEPENDS+=	log-0.4.8
CARGO_CRATE_DEPENDS+=	lscolors-0.7.0
CARGO_CRATE_DEPENDS+=	memchr-2.3.3
CARGO_CRATE_DEPENDS+=	nix-0.17.0
CARGO_CRATE_DEPENDS+=	num_cpus-1.13.0
CARGO_CRATE_DEPENDS+=	rand-0.4.6
CARGO_CRATE_DEPENDS+=	rand_core-0.3.1
CARGO_CRATE_DEPENDS+=	rand_core-0.4.2
CARGO_CRATE_DEPENDS+=	rdrand-0.4.0
CARGO_CRATE_DEPENDS+=	redox_syscall-0.1.56
CARGO_CRATE_DEPENDS+=	redox_users-0.3.4
CARGO_CRATE_DEPENDS+=	regex-1.3.7
CARGO_CRATE_DEPENDS+=	regex-syntax-0.6.17
CARGO_CRATE_DEPENDS+=	remove_dir_all-0.5.2
CARGO_CRATE_DEPENDS+=	rust-argon2-0.7.0
CARGO_CRATE_DEPENDS+=	same-file-1.0.6
CARGO_CRATE_DEPENDS+=	strsim-0.8.0
CARGO_CRATE_DEPENDS+=	tempdir-0.3.7
CARGO_CRATE_DEPENDS+=	term_size-0.3.2
CARGO_CRATE_DEPENDS+=	textwrap-0.11.0
CARGO_CRATE_DEPENDS+=	thread_local-1.0.1
CARGO_CRATE_DEPENDS+=	unicode-width-0.1.7
CARGO_CRATE_DEPENDS+=	users-0.10.0
CARGO_CRATE_DEPENDS+=	vec_map-0.8.2
CARGO_CRATE_DEPENDS+=	version_check-0.9.1
CARGO_CRATE_DEPENDS+=	void-1.0.2
CARGO_CRATE_DEPENDS+=	walkdir-2.3.1
CARGO_CRATE_DEPENDS+=	wasi-0.9.0+wasi-snapshot-preview1
CARGO_CRATE_DEPENDS+=	winapi-0.3.8
CARGO_CRATE_DEPENDS+=	winapi-i686-pc-windows-gnu-0.4.0
CARGO_CRATE_DEPENDS+=	winapi-util-0.1.5
CARGO_CRATE_DEPENDS+=	winapi-x86_64-pc-windows-gnu-0.4.0

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/fd ${DESTDIR}${PREFIX}/bin/fdfind
	${INSTALL_MAN} ${WRKSRC}/doc/fd.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/fdfind.1

.include "../../lang/clang/buildlink3.mk"
.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"
