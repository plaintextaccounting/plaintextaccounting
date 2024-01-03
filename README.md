% README
# The plaintextaccounting.org website

This is the source for [plaintextaccounting.org](https://plaintextaccounting.org),
an information portal and community hub for Plain Text Accounting.
It is maintained by Simon Michael and fellow PTA fans like you.
All help welcome!

The site's repo is https://github.com/plaintextaccounting/plaintextaccounting.
The site is markdown pages with double-bracket wiki links, rendered by [Pandoc].
Source files are in the src/ folder, output files and assets are the out/ folder.
The source files are intended to be somewhat compatible with Obsidian,
for efficient local editing and viewing.

`page.tmpl` defines the page layout, using normalize,
[skeleton](http://getskeleton.com) and our `site.css`.

The site is rendered by Cloudflare Pages.
Changes merged in the master branch should appear at plaintextaccounting.org within a minute or so.
(If not, check <https://www.cloudflarestatus.com> and <https://www.githubstatus.com>)

## Contributing

- drop in to the [#plaintextaccounting chat room](https://plaintextaccounting.org/#newsdiscussion) on Matrix.org and suggest changes
  (there is also an older `#plaintextaccounting` IRC channel on Libera.chat)
- or log in with a Github account, then use the Edit / New Page buttons at top right
- or `git clone https://github.com/plaintextaccounting/plaintextaccounting.wiki.git`, make changes, and send a PR or push
- or discuss issues in the [Github issue tracker](https://github.com/plaintextaccounting/plaintextaccounting/issues).

### Editing tips

The markup is Pandoc markdown
(specifically `markdown-smart-tex_math_dollars+autolink_bare_uris+wikilinks_title_after_pipe`,
or whatever is in Makefile),
plus [[double-bracket wiki links]] similar to Obsidian's.

To see an accurate preview while editing, clone locally and run `make watch` 
(requires pandoc and livereloadx).
Or, here are some ways to see an approximate preview:

- Use Obsidian's editing or reading modes
- Use VS Code's Markdown Preview Enhanced extension
- Use Github's Preview tab (at github.com)

If you edit with Emacs markdown-mode:

- S-TAB cycles heading/content visibility
- TAB on a heading cycles visibility of that section
- C-x n s/C-x n w on a heading narrows to/widens from that section

### How to make a change through the web

1. Log in to Github and click the pencil at
   [index.md](https://github.com/plaintextaccounting/plaintextaccounting/blob/master/src/index.md).
2. Make your changes to the markdown source.
3. Use the Preview tab to check the result.
4. When everything looks right, commit with a descriptive message.

This will be applied immediately if you have commit access, otherwise a fork and pull request will be created, which we will review soon.

### How to make a change on your local machine

1. Log in to Github, fork this repo, and clone the fork to your machine.
    <!-- git clone https://github.com/plaintextaccounting/plaintextaccounting.wiki.git -->
2. Make your changes to `index.md` (and/or `README.md`, `css/*`, `images/*`).
3. To preview, run `make` (requires [GNU Make] and [pandoc] 2.5+) and view `index.html` in your web browser.
4. When everything looks right, commit with a descriptive message.
5. `git push` to your fork.
6. Submit a pull request.

[pandoc]: https://pandoc.org/installing.html
[GNU Make]: https://www.gnu.org/software/make/
[open an issue]: https://github.com/plaintextaccounting/plaintextaccounting/issues/new
<!-- ?title=Contributor+requesting+commit+bit&body=Request+for+commit+access -->

### How to see a live preview on your local machine

Here are two quick and dirty ways:

- Use VS Code's preview pane (eg on mac: Cmd k Cmd v while editing index.md)
- Use Obsidian's preview mode (edit index.md, `|` to split the window, switch one into preview mode)

For the most accurate rendering, use Pandoc:

- Install `pandoc`, run `make`, and browse `out/index.html`.

For live-updating Pandoc rendering:

- Install `watchexec` and [livereloadx], run `make watch`, browse http://localhost:8100

[livereloadx]: https://nitoyon.github.io/livereloadx

### How to get commit access

If you're a recurring contributor and haven't yet been granted commit access, 
please request it in the #plaintextaccounting chat.


<!--
The wiki was announced in 2022-02 at
[ledger](https://groups.google.com/g/ledger-cli/c/-ylWBNTUC9Q), 
[beancount](https://groups.google.com/g/beancount/c/_xtg1XVbbCk),
[hledger](https://groups.google.com/g/hledger/c/bLxVpYEklk4)
-->

### How to write hyperlinks

In addition to HTML `<a href="hyper.html">Links</a>` and `[Markdown](links.html)`,
double-bracketed `[[Wiki Links]]` (or `[[Wiki#section]]` or `[[Wiki|Links]]` or `[[Wiki#section|Links]]`) are supported
(note that `|alternate link text` comes last).
If you are working in Obsidian, note that it expects words in file names and wiki links to be space-separated,
but the currently the site requires file names to be hyphen-separated, 
and it will translate spaced wiki links to the hyphenated link targets automatically.

### How to manage examples

Some old notes from 2022:

Goals:
- a page for each common transaction or situation
- showing example journal entries, variations and alternative techniques
- ready to use with one or more of the [PTA tools](https://plaintextaccounting.org/#plain-text-accounting-apps). Showing multiple tool-specific versions is welcome but not required. Translation/porting tips are also welcome.
- automatically tested against tools' current release (some day)
- crowd-sourced, human-organised, kept clean
- relatively stable urls/ids, easily referenceable from chat rooms, docs and software
- where helpful, consolidate work from/sync with [tool](https://github.com/ledger/ledger/wiki)-[specific](https://hledger.org/cookbook.html#accounting-tasks) [sites](https://beancount.github.io/docs/command_line_accounting_cookbook.html) to reduce duplicated effort and increase traction

One goal for this site is to collect concise useful example journal entries for all common accounting situations.
These are organized into topic pages which get linked on [[Cookbook]].
Try to make examples reasonably reproducible.

In literal blocks, consider writing a file type after the opening triple backticks. 
Although PTA file types are not yet well supported by Github, they might be in future,
and it can also help with automation. 
Some suggested types:

- `journal` - a generic journal file (likely compatible with ledger, hledger, and compatibles)
- `ledger` - a ledger-specific journal file (optional)
- `hledger` - a hledger-specific journal file (optional)
- `beancount` - a beancount journal file
- `timeclock` - a timeclock file
- `timedot` - a timedot file
- `csv`, `ssv`, `tsv` - comma, semicolon, or tab-separated values
- `rules` - a hledger CSV rules file, ...
- `abandon`, `tackler`, `nledger`, ... - files specific to other PTA apps

In example files, consider writing the filename as a comment on the first line, 
and using each filename only once within a page. 
This gives example commands something to reference,
and can help users trying out the variations,
or automated tests.

