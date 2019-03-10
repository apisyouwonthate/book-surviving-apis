default: build-html

build-html:
	asciidoctor src/book.adoc -D generated -b html5
