
default::
	rm -f en.search-data.min.*.js en.search.min.*.js
	cd site && hugo -D

update: default
	git add docs/search-fuse-js/index.html ; git commit && git push

test::
	cd site && hugo server --minify --theme minimo --disableFastRender

