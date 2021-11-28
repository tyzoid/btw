DESTDIR=/

install:
	mkdir -p $(DESTDIR)/usr/bin/btw/
	mkdir -p $(DESTDIR)/etc/profile.d/
	cp btw $(DESTDIR)/usr/bin/btw/
	cp btw.sh $(DESTDIR)/etc/profile.d/
	while read -r line; do ln -s btw $(DESTDIR)/usr/bin/btw/"$$line"; done < links.list
