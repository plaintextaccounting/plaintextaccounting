all: html

# Generate html from all md files in src/, in out/
html: Makefile $(patsubst src/%,out/%,$(patsubst %.md,%.html,$(wildcard src/*.md src/quickref/*.md)))

# keep synced with above
# keep src/*.md filenames clean (no apostrophes..) or this will break
clean:
	rm -f  $(patsubst src/%,out/%,$(patsubst %.md,%.html,$(wildcard src/*.md src/quickref/*.md)))

PANDOC?=pandoc

# build html on cloudflare page server, ensuring pandoc is installed
html-cfp:
	pandoc --version || ( \
		wget -nv https://github.com/jgm/pandoc/releases/download/3.9.0.2/pandoc-3.9.0.2-linux-amd64.tar.gz && \
		tar xzf pandoc-3.9.0.2-linux-amd64.tar.gz pandoc-3.9.0.2/bin/pandoc )
	make html PANDOC=pandoc-3.9.0.2/bin/pandoc
	rm -rf pandoc-3.9.0.2*

MD2HTML=$(PANDOC) \
	-f markdown-smart-tex_math_dollars+autolink_bare_uris+wikilinks_title_after_pipe \
	--toc \
	--lua-filter=wikilinks.lua \
	--lua-filter=headings.lua \

# generate html from a md file
out/%.html: src/%.md #page.tmpl wikilinks.lua headings.lua
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

