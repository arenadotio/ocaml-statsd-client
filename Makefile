.PHONY: default build install uninstall

default: build

build:
	dune build @install

install: build
	dune install statsd-client
	dune install statsd-client-async
	dune install statsd-client-lwt

uninstall:
	dune uninstall

.PHONY: clean
clean:
	dune clean
