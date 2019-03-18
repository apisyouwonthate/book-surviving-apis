# Surviving Other Peoples APIs

API Developers focus so much on designing and building their APIs, yet often we
seem to forget the folks on the other end of the line. You, the frontend and
backend developers trying to integrate our data and functionality into your own
work, often get left with junky docs, or are just assumed to know how things are
going to work.

Just like with Build APIs You Won’t Hate, this book will take a non-academic,
easy-to-read approach to some pretty complex topics around HTTP interactions,
versioning, client-caching, state management, differences between how you
interact with RPC, REST and GraphQL, using JSON Schema for local validation, and
all sorts of other awesome stuff that nobody ever bothered to mention to you.

## Structure

The book skeleton is in `book.adoc´. Add new chapters by adding an empty line and
a new include:

```adoc
include::10-change-management.adoc[]

include::11-some-new-chapter.adoc[]
```

## Contributing

If you can see this repo, you are welcome to contribute! Please send pull
requests with ideas, improvements, fixes, whatever you like.

``` bash
make
```

That should let you know if anything goes wrong, and will output the HTML
generated book in `generated/book.html`.

## Preview

[HTML5 Preview](http://htmlpreview.github.com/?https://github.com/apisyouwonthate/book-surviving-apis/blob/master/generated/book.html)