# $FrauBSD: smite/Makefile 2018-07-04 00:22:05 +0000 freebsdfrau $

SCRIPTS=	smite \
		coturntest \
		redistest
MAN=		smite.1

BINDIR?=	/usr/local/bin
CONFDIR?=	/usr/local/etc

FILESGROUPS=	FILES1 FILES2 FILES3
FILES1=		smite.conf.coturn \
		smite.conf.mysql \
		smite.conf.redis
FILES2=		newsyslog.conf.d/smite.conf
FILES3=		rc.d/smite
FILES1DIR=	${CONFDIR}
FILES2DIR=	${CONFDIR}/newsyslog.conf.d
FILES3DIR=	${CONFDIR}/rc.d
FILES1MODE=	444
FILES2MODE=	444
FILES3MODE=	555

.include <bsd.prog.mk>
