#!/bin/bash 
URI=https://${SB_GITHUB_TOKEN}@github.com/soteria-book/soteria-book.git
BOOK_CHECKOUT=${TMPDIR:-${TRAVIS_TMPDIR:-/tmp}}/book 
if [ ! -d $BOOK_CHECKOUT ] ; then 
	mkdir -p $(dirname $BOOK_CHECKOUT)
	git clone $URI $BOOK_CHECKOUT && echo $msg || echo "couldn't clone $URI .."
fi 