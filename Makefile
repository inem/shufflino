test:
	rake test

build:
	rm pkg/*.gem
	rake build

publish:
	gem push pkg/*.gem
	rm pkg/*.gem

default: test build publish

.DEFAULT_GOAL := default

.PHONY: test