# $FrauBSD: smite/GNUmakefile 2018-07-04 00:22:05 +0000 freebsdfrau $

SCRIPTS=	smite \
		coturntest \
		redistest
MAN=		smite.1

BINDIR=		/usr/local/bin
MANDIR=		/usr/share/man
CONFDIR=	/etc

FILES1=		smite.conf.coturn \
		smite.conf.mysql \
		smite.conf.redis
FILES2=		logrotate.d/smite
FILES3=		init.d/smite
FILES1DIR=	$(CONFDIR)
FILES2DIR=	$(CONFDIR)/logrotate.d
FILES3DIR=	$(CONFDIR)/init.d
FILES1MODE=	444
FILES2MODE=	444
FILES3MODE=	555

all: GNUmakefile $(SCRIPTS) $(MAN).gz

$(MAN).gz: $(MAN)
	gzip -cn $(MAN) > $(@)

install: $(SCRIPTS)
	install -d -o 0 -g 0 -m 755 $(BINDIR) $(MANDIR)/man1
	install -C -o 0 -g 0 -m 555 $(SCRIPTS) $(BINDIR)/
	install -C -o 0 -g 0 -m 444 $(MAN).gz $(MANDIR)/man1/
	install -d -o 0 -g 0 -m 755 $(FILES1DIR) $(FILES2DIR) $(FILES3DIR)
	install -C -o 0 -g 0 -m $(FILES1MODE) $(FILES1) $(FILES1DIR)
	install -C -o 0 -g 0 -m $(FILES2MODE) $(FILES2) $(FILES2DIR)
	install -C -o 0 -g 0 -m $(FILES3MODE) $(FILES3) $(FILES3DIR)

uninstall:
	cd $(BINDIR) && rm -f $(SCRIPTS)
	rm -f $(MANDIR)/man1/$(MAN).gz
	cd $(CONFDIR) && rm -f $(FILES1)
	cd $(CONFDIR) && rm -f $(FILES2)
	cd $(CONFDIR) && rm -f $(FILES3)

clean:
	rm -f $(MAN).gz $(MAN).cat.gz

cleandepend:
	rm -f .depend .depend.*

cleandir: clean cleandepend

