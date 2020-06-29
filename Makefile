default: test

fmt:
	go run -mod=vendor github.com/mh-cbon/go-fmt-fail -mod=vendor ./...

test:
	go test -mod=vendor -v -cover ./...

.PHONY: fmt test
