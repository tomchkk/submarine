all: env install

env:
	@cp -n ${PWD}/.env.example ${PWD}/.env || :

install:
	@ln -fs ${PWD}/submarine /usr/local/bin/submarine

uninstall:
	@unlink /usr/local/bin/submarine
