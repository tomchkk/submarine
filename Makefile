install:
	@ln -fs ${PWD}/submarine /usr/local/bin/submarine

version:
	@git describe --always --first-parent HEAD > ./version
