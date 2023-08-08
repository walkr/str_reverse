help:
	@echo "USAGE: make [time-default | time-faster]"
	@echo

build-default:
	@nimble build --nimcache:cache -d:release

build-faster:
	@nimble build --nimcache:cache -d:release -d:faster

time-default: build-default
	@time ./bin/str_reverse

time-faster: build-faster
	@time ./bin/str_reverse

clean:
	@rm -rf ./bin ./cache