# The plaintextaccounting.org website

This is the source for [plaintextaccounting.org](http://plaintextaccounting.org),
an information portal/overview site for Plain Text Accounting and
related tools: Ledger, hledger, beancount, etc.

The repo is named `plaintextaccounting.github.io` to make it the
Github Pages site for the 
[plaintextaccounting organization](https://github.com/plaintextaccounting/), 
allowing it to be served with the custom `plaintextaccounting.org` domain.

### How to contribute an update (using web UI)

(Ok for trivial updates)

#. Log in to Github and click the pencil at
   [index.md](https://github.com/plaintextaccounting/plaintextaccounting.github.io/blob/master/index.md).
#. Make your changes to the markdown source. Commit.
#. Make the corresponding changes in the generated [index.html](https://github.com/plaintextaccounting/plaintextaccounting.github.io/blob/master/index.html). Commit.
   It's ok to skip this step if you must; we'll update the html for you.
#. These commits will be bundled into a pull request (I think). 
   Or will be applied immediately if you have commit access.

### How to contribute an update (using pandoc)

#. Log in to Github, fork this repo, clone it to your machine.
#. Make your changes to `index.md` (and/or `README.md`, `css/*`, `images/*`).
#. Regenerate `index.html` as follows:
   - Ensure you have [pandoc] 2.5+ and [GNU Make] installed, and run `make`. (Preferred).
   - If you don't have GNU Make, you can run
     `pandoc -f markdown-smart+autolink_bare_uris --template index.tmpl index.md -o index.html`
   - If you don't have pandoc, you can update `index.html` by hand (ok for trivial changes).
#. Commit the changes (source files and regenerated html files, eg both `index.md` and `index.html`).
#. `git push` to your fork.
#. Submit a pull request.

[pandoc]: http://pandoc.org/installing.html

### How to get commit access

If you're a recurring contributor and haven't yet been granted commit access, 
feel free to [open an issue](https://github.com/plaintextaccounting/plaintextaccounting.github.io/issues/new?title=Contributor+requesting+commit+bit&body=Request+for+commit+access)
to request it.

### How to see a live local preview

#. Install [entr] and [livereloadx]
#. In one window, `make liverender` to update index.html
#. In another window, `make livereload` to run a live-reloading local webserver
#. Open the page in a browser: http://localhost:10000
#. Save changes in `index.md`, see updates in the browser.

[entr]:        http://eradman.com/entrproject/
[livereloadx]: https://nitoyon.github.io/livereloadx

