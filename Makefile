default: test

fmt-deps:
	go install github.com/mh-cbon/go-fmt-fail

fmt:
	go-fmt-fail ./...

test:
	go test -mod=vendor -v -cover ./...

.PHONY: fmt-deps fmt test
