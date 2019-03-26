default: build

install:
	brew bundle
	bundle install

build: build-html build-pdf build-epub

build-html:
	rm -rf generated/html/*
	asciidoctor book.adoc -b html5 -D generated/html
	cp -r images generated/html/

build-pdf:
	asciidoctor-pdf book.adoc -D generated

build-epub:
	rm -rf generated/epub
	export XML_CATALOG_FILES=/usr/local/etc/xml/catalog
	a2x -v -fepub -dbook --no-xmllint book.adoc
	mkdir generated/epub && mv book.epub generated/epub/