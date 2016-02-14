index.html: index.md index.tmpl
	pandoc index.md --template index.tmpl -o index.html

watch:
	fswatch -0 *.{md,tmpl} | xargs -0 -n1 -I{} make
