default: build

install:
	brew bundle
	bundle install

build: build-html build-pdf build-epub build-mobi

build-html:
	rm -rf generated/html/*
	asciidoctor book.adoc -b html5 -D generated/html
	cp -r images generated/html/

build-pdf:
	asciidoctor-pdf book.adoc -D generated

build-epub:
	asciidoctor-epub3 -D generated book.adoc

build-mobi:
	asciidoctor-epub3 -D generated -a ebook-format=kf8 book.adoc