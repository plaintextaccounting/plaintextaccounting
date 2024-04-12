all: html

# Generate html from all md files in src/, in out/
html: Makefile $(patsubst src/%,out/%,$(patsubst %.md,%.html,$(wildcard src/*.md src/quickref/*.md)))

# keep synced with above
# keep src/*.md filenames clean (no apostrophes..) or this will break
clean:
	rm -f  $(patsubst src/%,out/%,$(patsubst %.md,%.html,$(wildcard src/*.md src/quickref/*.md)))

PANDOC?=pandoc
LEDGER_FILE=finance/pta.journal

# show a balance sheet with retained earnings and inferred conversion equity
bse:
	(cat $(LEDGER_FILE); hledger close --retain --close-to=equity:retained) | hledger -f- bse --infer-equity -t --no-elide

# check the journal
check:
	hledger check -s ordereddates && echo ok

# regenerate part of finance.md from finance/*
finance-md:
	sed '/<!-- Everything below is regenerated/q' <src/finance.md >src/finance.md.tmp
	( \
	echo ; \
	hledger bs -O html; \
	echo ; \
	echo ; \
	hledger is -O html; \
	echo ; \
	echo ; \
	echo '## Transactions'; \
	echo '(<a href="https://github.com/plaintextaccounting/plaintextaccounting/blob/master/finance/pta.journal">source</a>)'; \
	echo '```hledger'; hledger print -x; echo '```'; \
	) >>src/finance.md.tmp
	mv src/finance.md.tmp src/finance.md

# temporary workaround for cloudflare pages (pandoc is too old in V1, missing in V2)
html-cfp:
	pandoc --version || ( \
		wget -nv https://github.com/jgm/pandoc/releases/download/3.1.9/pandoc-3.1.9-linux-amd64.tar.gz && \
		tar xzf pandoc-3.1.9-linux-amd64.tar.gz )
	make html PANDOC=pandoc-3.1.9/bin/pandoc
	rm -rf pandoc-3.1.9*

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

