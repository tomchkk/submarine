VERSION?=$(shell git describe --always --first-parent HEAD)

all: env version

version: clean
	@echo $(VERSION) > ./version

clean:
	@rm -f ./version

install: env version
	@ln -fs ${PWD}/bin/submarine /usr/local/bin/submarine

env:
	@cp -n ${PWD}/.env.example ${PWD}/.env || :

uninstall:
	@unlink /usr/local/bin/submarine
