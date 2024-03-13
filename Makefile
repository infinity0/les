.PHONY: install

build-dep:
	aptitude install sox v4l-utils

install:
	mkdir -p "$(DESTDIR)/"
	install -D -m 644 -t "$(DESTDIR)/etc/udev/rules.d" cec0-configure.rules
	install -D -m 644 -t "$(DESTDIR)/etc/systemd/system" cec0-configure.service
	install -D -m 755 -t "$(DESTDIR)/usr/local/bin" cec-autostart
	install -D -m 644 -t "$(DESTDIR)/etc/xdg/autostart" audiocaffeine.desktop
	install -D -m 755 -t "$(DESTDIR)/usr/local/bin" audiocaffeine

postinst:
	systemctl enable cec0-configure.service
	systemctl daemon-reload
