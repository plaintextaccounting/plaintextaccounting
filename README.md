# The plaintextaccounting.org website

This is the source for [plaintextaccounting.org](http://plaintextaccounting.org),
an information portal/overview site for Plain Text Accounting and
related tools: Ledger, hledger, beancount, etc. 

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

The site's repo is https://github.com/plaintextaccounting/plaintextaccounting.github.io .
Changes to the master branch will appear at https://plaintextaccounting.org.
Until 2022 this was done by Github Pages,
hence the name `plaintextaccounting.github.io`
making it the Github Pages site for the 
[plaintextaccounting organization](https://github.com/plaintextaccounting/), 
allowing it to have the custom domain.
Rendered HTML was generated locally and committed by editors.

Since 2022-01-14, the site is rendered by Cloudflare Pages, 
and HTML is no longer committed in the repo. Some cleanups may still be ongoing.

### Where to discuss / give feedback

The site is managed via 

- the Github issue tracker
- and the `#plaintextaccounting:matrix.org` room on Matrix, or the bridged `#plaintextaccounting` channel on Libera.chat.
Site-related questions or discussion are welcome here.

### How to make a change through the web

1. Log in to Github and click the pencil at
   [index.md](https://github.com/plaintextaccounting/plaintextaccounting.github.io/blob/master/index.md).
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
[open an issue]: https://github.com/plaintextaccounting/plaintextaccounting.github.io/issues/new
<!-- ?title=Contributor+requesting+commit+bit&body=Request+for+commit+access -->

### How to see a live preview on your machine

Quick and dirty ways (warning, may not render the site accurately):

- Use VS Code's preview pane (eg on mac: Cmd k Cmd v while editing index.md)
- Use Obsidian's preview mode (edit index.md, `|` to split the window, switch one into preview mode)

An accurate way:

1. Install [entr] and [livereloadx]
2. In one window, `make liverender` to update index.html
3. In another window, `make livereload` to run a live-reloading local webserver
4. Open the page in a browser: http://localhost:10000
5. Save changes in `index.md`, see updates in the browser.

[entr]:        http://eradman.com/entrproject/
[livereloadx]: https://nitoyon.github.io/livereloadx

### How to get commit access

If you're a recurring contributor and haven't yet been granted commit access, 
please request it in the #plaintextaccounting chat.

