#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr
SYSTEMD_DIR = $(HOME)/.config/systemd/user

#
# Targets
#

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D ssh-agent.service $(SYSTEMD_DIR)/ssh-agent.service
	systemctl --user enable ssh-agent.service

uninstall:
	systemctl --user disable ssh-agent.service
	rm $(SYSTEMD_DIR)/ssh-agent.service

.PHONY: all install uninstall
