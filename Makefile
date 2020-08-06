PREFIX?=${PWD}
VERSION?=$(shell git describe --always --first-parent HEAD)

all: env version

version: clean
	@echo $(VERSION) > ./version

clean:
	@rm -f ./version

install: env version
	@ln -fs $(PREFIX)/bin/submarine /usr/local/bin/submarine

env:
	@cp -n $(PREFIX)/.env.example $(PREFIX)/.env || :

uninstall:
	@unlink /usr/local/bin/submarine
