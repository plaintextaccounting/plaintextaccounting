all: $(patsubst %.md,%.html,$(wildcard *.md)) Makefile

watch:
	fswatch -0 *.{md,tmpl} | xargs -0 -n1 -I{} make all

livereload:
	livereloadx --static .

clean:
	rm -f $(patsubst %.md,%.html,$(wildcard *.md))

PANDOC = pandoc # --from markdown --to html

# index.html: index.md index.tmpl
# 	$(PANDOC) --template index.tmpl index.md -o $@

%.html: %.md index.tmpl
	$(PANDOC) --template index.tmpl $< -o $@

