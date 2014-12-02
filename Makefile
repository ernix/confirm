PREFIX=/usr/local
install:
	cp confirm.sh $(PREFIX)/bin/confirm
	chmod 755 $(PREFIX)/bin/confirm
deinstall:
	rm -f $(PREFIX)/bin/confirm
uninstall:
	rm -f $(PREFIX)/bin/confirm
