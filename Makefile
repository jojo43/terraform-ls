SOURCE_FILES ?= $$(find . -not -path "./vendor/*" -type f -name "*.go")

default: test

fmt:
	@gofmt -s -w $(SOURCE_FILES)

fmtcheck:
	@test -z $$(gofmt -s -l $(SOURCE_FILES) | tee /dev/tty)

test:
	go test -mod=vendor ./...

.PHONY: fmt fmtcheck test
