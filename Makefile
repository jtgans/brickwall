all:
	$(error There is no all target. Only clean, install, and uninstall.)

clean:
	-rm *~

install:
	$(INSTALL) -D -o root -g root -m 0755 brickwall /usr/sbin
	$(LN) -s /usr/sbin/brickwall /etc/network/if-up.d/brickwall
	$(LN) -s /usr/sbin/brickwall /etc/network/if-down.d/brickwall
	$(LN) -s /usr/sbin/brickwall /etc/rcS.d/S40brickwall

uninstall:
	-rm /usr/sbin/brickwall
	-rm /etc/network/if-up.d/brickwall
	-rm /etc/network/if-down.d/brickwall
	-rm /etc/rcS.d/S40brickwall

