% About this wiki

*2023-11 Old, needs update*

This wiki complements the [plaintextaccounting.org](https://plaintextaccounting.org) static site. 
It was announced in 2022-02 on the [ledger](https://groups.google.com/g/ledger-cli/c/-ylWBNTUC9Q), [beancount](https://groups.google.com/g/beancount/c/_xtg1XVbbCk), and [hledger](https://groups.google.com/g/hledger/c/bLxVpYEklk4) mail lists.
Maintenance is led by Simon Michael; all help is welcome! You can:
- drop in to the [#plaintextaccounting chat room](https://plaintextaccounting.org/#newsdiscussion) on Matrix.org or Libera.chat and suggest changes
- or log in with a Github account, then use the Edit / New Page buttons at top right
- or `git clone https://github.com/plaintextaccounting/plaintextaccounting.wiki.git`, make changes, and send a PR or push.

## Goals

Some current wishes (2022):
- a page for each common transaction or situation
- showing example journal entries, variations and alternative techniques
- ready to use with one or more of the [PTA tools](https://plaintextaccounting.org/#plain-text-accounting-apps). Showing multiple tool-specific versions is welcome but not required. Translation/porting tips are also welcome.
- automatically tested against tools' current release (some day)
- crowd-sourced, human-organised, kept clean
- relatively stable urls/ids, easily referenceable from chat rooms, docs and software
- where helpful, consolidate work from/sync with [tool](https://github.com/ledger/ledger/wiki)-[specific](https://hledger.org/cookbook.html#accounting-tasks) [sites](https://beancount.github.io/docs/command_line_accounting_cookbook.html) to reduce duplicated effort and increase traction
- appropriate combined use of reader-friendly plaintextaccounting.org site and editor-friendly github wiki

## Shortcut urls

`https://wiki.plaintextaccounting.org[/PAGE]` works as a shortcut, and the Github wiki is case- and space/hypen-insensitive, so eg any of these will work: \
[wiki.plaintextaccounting.org](https://wiki.plaintextaccounting.org) \
<a href="https://wiki.plaintextaccounting.org/borrowing and lending">wiki.plaintextaccounting.org/borrowing and lending</a> \
[wiki.plaintextaccounting.org/Borrowing-and-Lending](https://wiki.plaintextaccounting.org/Borrowing-and-Lending) 

## Tools

Both VS Code and Obsidian work well for editing this wiki locally. 
See the repo URL in the sidebar, eg:
```
git clone https://github.com/plaintextaccounting/plaintextaccounting.wiki.git
```

Obsidian's `[[Wiki Links]]` are compatible enough with Github's to be useful. Note:
- Obsidian creates spaced page names and Github creates hyphenated-page-names by default. 
  Spaced page names work fine on Github so it might be preferable to use those for most efficient local editing.
- Obsidian puts alternate link text last (`[[PAGE|LINKTEXT]]`), Github puts it first `[[LINKTEXT|PAGE]]`.

## Content

One goal for this wiki is to collect concise useful example journal entries for all common accounting situations.
These are organized into topic pages which get linked on [[Home]].

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
