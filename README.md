# The plaintextaccounting.org website

This is the source for [plaintextaccounting.org](http://plaintextaccounting.org),
an information portal/overview site for Plain Text Accounting and
related tools: Ledger, hledger, beancount, etc. 

Since 2023-11, source files are in the src/ folder and output files
and assets are the out/ folder, and content formerly in the github wiki
has been merged into the static site.

The src/ folder is intended to be somewhat compatible with Obsidian,
for efficient/rich local editing and viewing; this is driving the
current file names/"slugs", eg.

## Old

*2023-11 Old, needs update:*

Since 2022-01, there is also a companion wiki: https://wiki.plaintextaccounting.org.
(The wiki is hosted on Github and its urls are not finalised, but
`https://wiki.plaintextaccounting.org[/PAGE]` will always redirect to the right place.)

## Contributing

### Construction and rendering

The site is mainly one big markdown page, plus a few more.
These are rendered by [Pandoc]
(chosen originally for its power and dependability, 
to minimise layout troubleshooting time).

### Hosting and deployment

The site's repo is https://github.com/plaintextaccounting/plaintextaccounting.
Since 2022-01, the site is rendered by Cloudflare Pages.
Changes merged in the master branch appear at plaintextaccounting.org within 2-3 minutes.

### Where to discuss / give feedback

The site is managed via 

- the Github issue tracker
- and the `#plaintextaccounting:matrix.org` room on Matrix, or the bridged `#plaintextaccounting` channel on Libera.chat.
Site-related questions or discussion are welcome here.

### How to make a change through the web

1. Log in to Github and click the pencil at
   [index.md](https://github.com/plaintextaccounting/plaintextaccounting/blob/master/index.md).
2. Make your changes to the markdown source.
3. Use the Preview tab to check the result.
4. When everything looks right, commit with a descriptive message.

This will be applied immediately if you have commit access, otherwise a fork and pull request will be created, which we will review soon.

### How to make a change on your machine

1. Log in to Github, fork this repo, and clone the fork to your machine.
2. Make your changes to `index.md` (and/or `README.md`, `css/*`, `images/*`).
3. To preview, run `make` (requires [GNU Make] and [pandoc] 2.5+) and view `index.html` in your web browser.
4. When everything looks right, commit with a descriptive message.
5. `git push` to your fork.
6. Submit a pull request.

[pandoc]: http://pandoc.org/installing.html
[GNU Make]: https://www.gnu.org/software/make/
[open an issue]: https://github.com/plaintextaccounting/plaintextaccounting/issues/new
<!-- ?title=Contributor+requesting+commit+bit&body=Request+for+commit+access -->

### How to see a live preview on your machine

Quick and dirty ways:

- Use VS Code's preview pane (eg on mac: Cmd k Cmd v while editing index.md)
- Use Obsidian's preview mode (edit index.md, `|` to split the window, switch one into preview mode)

For accurate rendering:

- Install [entr] and [livereloadx], run `make html-watch` for a live-reloading view at http://localhost:8100

[entr]:        http://eradman.com/entrproject/
[livereloadx]: https://nitoyon.github.io/livereloadx

### How to get commit access

If you're a recurring contributor and haven't yet been granted commit access, 
please request it in the #plaintextaccounting chat.

