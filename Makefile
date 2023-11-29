all: html

# Generate html from all md files in src/, in out/
html: $(patsubst src/%,out/%,$(patsubst %.md,%.html,$(wildcard src/*.md src/quickref/*.md))) Makefile

PANDOC?=pandoc

# temporary workaround for cloudflare pages (pandoc is too old in V1, missing in V2)
html-cfp:
	pandoc --version || ( \
		wget https://github.com/jgm/pandoc/releases/download/3.1.9/pandoc-3.1.9-linux-amd64.tar.gz && \
		tar xzf pandoc-3.1.9-linux-amd64.tar.gz )
	make html PANDOC=pandoc-3.1.9/bin/pandoc
	rm -rf pandoc-3.1.9*

MD2HTML=$(PANDOC) \
	-f markdown-smart-tex_math_dollars+autolink_bare_uris+wikilinks_title_after_pipe \
	--lua-filter=wikilinks.lua

# generate html from a md file
out/%.html: src/%.md page.tmpl
	$(MD2HTML) --template page.tmpl "$<" -o "$@"

# regenerate html whenever an md file changes
html-auto auto:
	watchexec -- make html
# no different:
#	watchexec --ignore-file=page.tmpl -- make html

BROWSE=open
LIVERELOADPORT=8100
LIVERELOAD=livereloadx -p $(LIVERELOADPORT) -s
  #  --exclude '*.html'
  # Exclude html files to avoid reloading browser as every page is generated.
  # A reload happens at the end when the css/js files get copied.

# Auto-regenerate html, and watch changes in a new browser window.
html-watch watch:
	make html-auto &
	(sleep 1; $(BROWSE) http://localhost:$(LIVERELOADPORT)/) &
	$(LIVERELOAD) out

clean:
	rm -f $(patsubst %.md,%.html,$(wildcard *.md))

