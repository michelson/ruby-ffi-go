default:
	go build -buildmode=c-shared -o gofuncs.so gofuncs.go

bench:
	@ruby -Ilib examples/bench.rb

content: 
	@ruby -Ilib examples/content.rb

.PHONY: default bench content
