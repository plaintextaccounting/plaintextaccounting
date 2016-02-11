index.html: index.md index.tmpl
	pandoc index.md --template index.tmpl -o index.html
