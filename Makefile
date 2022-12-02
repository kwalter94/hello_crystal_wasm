build: build-web
	crystal build src/server.cr

build-web:
	lib/js/scripts/build.sh src/frontend.cr
	mv frontend.js frontend.wasm public/