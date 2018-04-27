.phony: install reinstall

install:
	@cp *.sh /usr/bin
	@chmod +x /usr/bin/raspberry_tty_udp_bridge.sh
	@cp *.service /etc/systemd/system/
	@chmod 660 /etc/systemd/system/tty_udp_bridge.service
	@systemctl daemon-reload
	@systemctl enable tty_udp_bridge.service
	@echo Install done!

reinstall:
	@systemctl disable tty_udp_bridge.service
	@rm /usr/bin/raspberry_tty_udp_bridge.sh
	@rm /etc/systemd/system/tty_udp_bridge.service
	@echo Reinstall done!
