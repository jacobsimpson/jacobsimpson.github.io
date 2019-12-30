
default::
	rm -f en.search-data.min.*.js en.search.min.*.js
	cd site && hugo -D

update: default
	git add en.search-data.min.*.js en.search.min.*.js ; git commit && git push

test::
	cd site && hugo server --minify --theme minimo --disableFastRender

