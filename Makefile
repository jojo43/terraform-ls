GOFLAGS = -mod=vendor

default: test

fmt:
	GOFLAGS=$(GOFLAGS) go run github.com/mh-cbon/go-fmt-fail ./...

test:
	GOFLAGS=$(GOFLAGS) go test -v -cover ./...

.PHONY: fmt test
