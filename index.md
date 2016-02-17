<!-- CSS: http://getskeleton.com -->
<!-- markdown: http://pandoc.org/README.html -->

<div class="row" style="padding-top:20%;">

<h1 style="text-align:center; margin-bottom:5%;">Plain Text Accounting</h1>

<div class="three columns">

### accounting

**[accounting](https://en.wikipedia.org/wiki/Accounting)** is tracking the flow of valuable commodities, such as money or time.
It clarifies activity, priorities, obligations, opportunities.
It can **[reduce stress](http://podcastle.org/2009/10/09/pc-miniature-38-accounting-for-dragons)** and even be enjoyable.

**[double-entry bookkeeping](https://en.wikipedia.org/wiki/Double-entry_bookkeeping_system)** is a process for doing this reliably.
For every movement of value (a **[transaction](https://en.wikipedia.org/wiki/Financial_transaction)**), both the source and destination are recorded.
Simple arithmetic invariants help prevent errors.

In traditional double-entry bookkeeping, value at any point in time is tracked in various **[accounts](https://en.wikipedia.org/wiki/Account_(accountancy))**, classified as
**[asset](https://en.wikipedia.org/wiki/Asset)** (owned),
**[liability](https://en.wikipedia.org/wiki/Liability_(financial_accounting))** (owed)
or **[equity](https://en.wikipedia.org/wiki/Equity_(finance))** (invested).
Two more classifications track changes during some period:
**[revenues](https://en.wikipedia.org/wiki/Revenue)** (inflows)
and **[expenses](https://en.wikipedia.org/wiki/Expense)** (outflows).

Transactions consist of
**[debits](https://en.wikipedia.org/wiki/Debits_and_credits)** (increases to asset or expense accounts, or decreases to liability or equity accounts) or
**[credits](https://en.wikipedia.org/wiki/Debits_and_credits)** (decreases to asset or expense accounts, or increases to liability or equity accounts).

</div>
<div class="four columns">

### … with text

Ledger, hledger, beancount, and other **[Ledger-likes](#ledger-likes)**
are minimalist software tools for efficient double-entry-style accounting.
<!-- **[double-entry-style](https://news.ycombinator.com/item?id=10512418)** accounting. -->
This site introduces them and their way of doing things.

Accounting data is valuable;
we want to know that it will be accessible for ever - even without software.
We want to know when it changes, and revision-control it.
We want to search and manipulate it efficiently.
So, we store it as human-readable **[plain](http://ledger-cli.org/3.0/doc/ledger3.html#The-Most-Basic-Entry) [text](http://hledger.org/manual.html#journal)**.

We simplify debits and credits by using
**[signed numbers](http://ledger-cli.org/3.0/doc/ledger3.html#Stating-where-money-goes)** instead -
positive for inflows to an account, negative for outflows from an account.

We define arbitrary
**[account](http://ledger-cli.org/3.0/doc/ledger3.html#Structuring-your-Accounts)
[hierarchy](http://hledger.org/manual.html#account-names)**
to suit our needs.
This scales smoothly from simple to complex scenarios, and from high-level overview to fine detail.

Ledger-likes are, at least in part,
**[command-line](http://ledger-cli.org/3.0/doc/ledger3.html#Basic-Usage) [tools](http://hledger.org/manual.html#usage)**.
This makes them efficient to use and very
**[scriptable](#related-tools)** and flexible.

Ledger-likes also, at their core, tend towards
**[functional operation](https://en.wikipedia.org/wiki/Function_(mathematics))**:
they read the input data without changing it, and output a report.
This simple model makes them easy to understand and rely on.

</div>
<div class="four columns">

### questions ?

**is there no graphical user interface ? Must I use the command line ?**\
Not entirely! A bit. Decreasingly.
"Plain Text Accounting" is a broad description, referring mainly to the data format.
The **[GUIs](#ui-console)** are coming.

**who is this for ?**\
Techies, power users, and do-it-yourself-ers, for now.
If you need a rich GUI providing lots of guidance, you may prefer to use something else.

**who is using it, and how ?**\
See **[Who's using Ledger?](https://github.com/ledger/ledger/wiki/Who's-using-ledger%3F)** for some stories.

**what are the alternatives ?**\
FOSS tools like GNUCash, Grisbi, KMyMoney.
Proprietary tools like Quicken/Quickbooks, You Need A Budget.
Online tools like Xero, FreeAgent.
(There are **[many](https://en.wikipedia.org/wiki/Comparison_of_accounting_software)**).
**[Spreadsheets](https://backchannel.com/a-spreadsheet-way-of-knowledge-8de60af7146e#.2hr7pi9pb)**.
Paper accounting.
A bookkeeper.

**why is this better than QuickBooks&nbsp;?**\
Your data remains accessible.
No yearly fees.
Free software you can fix and port.
Cross platform.
Scriptable.
Efficient.

**how do I communicate with my accountant&nbsp;?**\
Clean up text reports by hand,
print them as PDF,
export CSV reports to a spreadsheet..

**what if my accountant only uses QuickBooks&nbsp;?**\
You'll need a new accountant,
or a duplicate set of books in QuickBooks,
or to pioneer *ledger -> QuickBooks exporting.

**can I use this to do my taxes&nbsp;?**\
You can use this to track and report the data needed for tax reporting.
Fill out and submit tax forms with another tool, or by hand.

</div>

</div>
<div class="row" style="padding-top:5%;">

<div class="seven columns">

### Ledger-likes

<!-- http://pandoc.org/README.html#tables -->
|
|-----------------------------------------------|---------------------------------------------------------------------------------------------------------------:|--------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------:
|                                               | Code, committers                                                                                               | Mail list                                                                                                                            | IRC, size
| [Ledger](http://ledger-cli.org)               | [C++](https://github.com/ledger/ledger)          101 <!-- ([openhub](https://www.openhub.net/p/ledger)) -->    | [ledger-cli](http://list.ledger-cli.org/) <!-- ([gmane](http://dir.gmane.org/gmane.comp.finance.ledger.general)) -->                 | [#ledger](http://webchat.freenode.net/?channels=ledger&randomnick=1)  70
| [hledger](http://hledger.org)                 | [Haskell](http://code.hledger.org)                30 <!-- ([openhub](https://www.openhub.net/p/hledger)) -->   | [hledger](http://list.hledger.org/) <!-- ([gmane](http://dir.gmane.org/gmane.comp.finance.ledger.hledger)) -->                       | [#hledger](http://webchat.freenode.net/?channels=hledger&randomnick=1)  20
| [Beancount](http://furius.ca/beancount)       | [Python](http://bitbucket.org/blais/beancount/)    8 <!-- ([openhub](https://www.openhub.net/p/beancount)) --> | [beancount](https://groups.google.com/forum/#!forum/beancount) <!-- ([gmane](http://dir.gmane.org/gmane.comp.finance.beancount)) --> | [#beancount](http://webchat.freenode.net/?channels=beancount&randomnick=1)  1
| Abandon                                       | [Scala](https://github.com/hrj/abandon)            5 <!-- ([openhub](https://www.openhub.net/p/abandon)) -->   |                                                                                                                                      |
| Ledger in Go                                  | [Go](https://github.com/howeyc/ledger)             2                                                           |                                                                                                                                      |

| Inactive:                                     | |
|-----------------------------------------------|-----------------------------------------------------
| cl-ledger                                     | [Common Lisp](https://github.com/ledger/cl-ledger)
| ledger.pl                                     | [Perl](https://github.com/dimonf/ledger.pl)
| [Penny](http://massysett.github.io/penny/)    | [Haskell](https://github.com/massysett/penny)
| [UMM](http://hackage.haskell.org/package/UMM) | Haskell

<!-- [compare](https://www.openhub.net/p/_compare?project_0=Ledger&project_1=hledger&project_2=beancount) -->

### related tools

- [hledger-diff](http://hackage.haskell.org/package/hledger-diff) report differing transactions between two journals
- [hledger-interest](http://hackage.haskell.org/package/hledger-interest) generate *ledger interest transactions
- [hledger-irr](http://hackage.haskell.org/package/hledger-irr) calculate an account's internal rate of return over time
- [hledger-vagrant](https://t.co/LmdG6GPmma) how to install hledger as a virtual machine
- [ledger-get-prices](https://github.com/nathankot/ledger-get-prices) download market prices
- [ledger-tutorials](https://github.com/tlvince/ledger-tutorials) convert Pete Keen's tutorials to ebook format

##### data import

- [beancount-import](https://github.com/jbms/beancount-import) CSV to beancount converter (curses)
- [icsvledger](https://launchpad.net/csv2ledger) CSV to *ledger converter
- [ledger-autosync](https://gitlab.com/egh/ledger-autosync) OFX download, OFX to *ledger conversion, deduplication
- [ledgerhub](http://furius.ca/ledgerhub/) fetch prices, extract entries, convert various formats to beancount (? deprecated)
- [qb2ledger](https://gist.github.com/genegoykhman/3765100) QuickBooks General Journal CSV to *ledger converter
- [reckon](https://github.com/cantino/reckon) smart interactive/non-interactive CSV to *ledger converter
- [total_recall](https://github.com/eval/total_recall) CSV to *ledger converter

##### editor support

- [beancount-mode](https://bitbucket.org/blais/beancount/src/1e21b27c0b0ecf2bf2e1a2cd5c3da3b1befc8152/src/elisp/beancount.el?at=default&fileviewer=file-view-default) for Emacs
- [hledger-mode](https://github.com/narendraj9/dotfiles/tree/master/.emacs.d/packages/rest/hledger-mode) for Emacs
- [ledger-mode](http://ledger-cli.org/3.0/doc/ledger-mode.html) for Emacs (also works for hledger, beancount etc.)
- [vim-beancount](https://github.com/nathangrigg/vim-beancount) for VIM
- [vim-ledger](https://github.com/ledger/vim-ledger) for VIM
- [language-ledger](https://atom.io/packages/language-ledger) for Atom
- [ledger](https://atom.io/packages/ledger) for Atom
- [sublime-ledger-syntax](https://github.com/moeffju/sublime-ledger-syntax) for Sublime Text/TextMate
- [Ledger.tmbundle](https://github.com/lifepillar/Ledger.tmbundle) for TextMate

##### time tracking

- [org2tc](https://github.com/jwiegley/org2tc) org to timeclock converter
- [on-modify.timetrack.py](https://gist.github.com/wbsch/d977b0ac29aa1dfa4437) taskwarrior hook for timeclock output
- [tim](https://github.com/MatthiasKauer/tim) time tracking tool using hledger for reporting

##### UI, console

- [hledger-iadd](https://github.com/hpdeifel/hledger-iadd) curses UI for data entry
- [hledger-ui](http://hackage.haskell.org/package/hledger-ui) curses UI for browsing
  ([demo](https://asciinema.org/a/29665))
- [ledger-add](https://github.com/Tagirijus/ledger-add) interactive console UI for data entry
- [ledger-plot](https://github.com/Tagirijus/ledger-plot) interactive helper for making charts with gnuplot

##### UI, GUI

- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) GUI tools and python library front end for Ledger

##### UI, web

- [fava](https://github.com/aumayr/beancount-web) web UI for browsing (Python, beancount)
- [hledger-api](https://github.com/simonmichael/hledger/tree/master/hledger-api) JSON API + static file server (Haskell)
- [hledger-web](http://hackage.haskell.org/package/hledger-web) web UI for browsing, data entry
  (Haskell, [demo](http://demo.hledger.org))
- [hledger-web on Sandstorm](https://apps.sandstorm.io/app/8x12h6p0x0nrzk73hfq6zh2jxtgyzzcty7qsatkg7jfg2mzw5n90) free web instances in a few clicks
- [Ledger Web](https://github.com/peterkeen/Ledger-Web) web-based, postgres-backed reporting system
- [ledger-dashboard](https://github.com/Ikke/ledger-dashboard) web UI for browsing, data entry (Python)
- [ledger-web](https://github.com/slashdotdash/node-ledger-web) web UI for browsing (JavaScript)
- [node-hledger](https://github.com/rstacruz/node-hledger) Node.js API (JavaScript)
- [WealthPulse](https://github.com/readysetmark/WealthPulse) web UI for browsing, price fetching (F#, Ledger)

</div>
<div class="five columns u-pull-right">

### docs

- [Ledger manuals](http://ledger-cli.org/docs.html)
- [Ledger wiki](https://github.com/ledger/ledger/wiki)
- [The Great Cheatsheet for Ledger CLI](http://ricostacruz.com/cheatsheets/ledger.html)
- [hledger docs](http://hledger.org)
- [Beancount docs](http://furius.ca/beancount/doc/index)
- [Beancount Syntax Cheatsheet](http://furius.ca/beancount/doc/cheatsheet)

### concepts

- [General accounting docs](http://hledger.org/more-docs.html#accounting)
- [Ledger vs accounting](http://thread.gmane.org/gmane.comp.finance.ledger.general/7398/focus=7417) 2015

### comparisons

- [Simon Michael: hledger & Ledger](http://hledger.org/faq.html#hledger-ledger)
- [Omari Norman: Why Penny](http://massysett.github.io/penny/why-penny.html) 2013
- [Fabrice Niessen: Why Ledger?](http://www.mygooglest.com/fni/ledger.html) 2010

### online books

- [Getting Started With Ledger](https://github.com/rolfschr/GSWL-book/releases/latest) 2016

### presentations

- [Ledger CLI Accounting for Geeks](http://blog.loadingdata.nl/accounting-for-geeks/) 2014
- [Hacking Your Finances for Fun and Profit](http://matthewturland.com/slides/ledger-stats/) 2013
- [Ledger and Text based Accounting](http://www.adamsinfoserv.com/AISTWiki/pub/AIS/Presentations/Ledger.pdf) 2009

### videos

- [FLOSS Weekly 375: hledger](https://twit.tv/shows/floss-weekly/episodes/375)
  ([youtube](https://www.youtube.com/watch?v=Xjl-wVJcYpE),
  [3m overview](https://www.youtube.com/watch?v=qS2UcDV_lbs))
  2016
- [Evolution of ledger](https://www.youtube.com/watch?v=MGu1Bw2USQo) 2015
- [Evolution of hledger](https://www.youtube.com/watch?v=dEADGr9dqow) 2015
- [FLOSS Weekly 150: Ledger](https://twit.tv/shows/floss-weekly/episodes/150)
  ([youtube](https://www.youtube.com/watch?v=TDqrrH-gTt0)) 2011
- [Accounting course by Prof. Krug](https://www.youtube.com/playlist?list=PL259DBFA47F3B4761) 2011

### articles

- [Pete Keen's Program your Finances tutorials](https://www.petekeen.net/finance)
- [An Alternative to QuickBooks](http://goykhman.ca/gene/blog/2012/2012-09-23-an-alternative-to-quickbooks.html) 2012
- [The accounting quest: Ledger](http://lwn.net/Articles/501681/) 2012
- [Ledger, the bran muffin of accounting tools](http://archive09.linux.com/feature/58307) 2006

### blog posts

- [Finding duplicate accounts in Hledger journals](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html) 2015
- [Matthew Turland: Ledger basics and habits](http://matthewturland.com/2014/03/29/ledger-basics-and-habits/) 2014
- [Simon Michael: What is hledger ?](http://joyful.com/blog/2013-10-20-what-is-hledger.html) 2013
- [Simon Michael: More on ledger](http://joyful.com/blog/2013-10-19-more-on-ledger.html) 2013
- [Simon Michael: Introducing hledger!](http://joyful.com/blog/2013-10-18-introducing-hledger.html) 2013
- [Joey Hess: hledger](http://joeyh.name/blog/entry/hledger) 2012
- [Sascha Welter: Doing my own accounting](http://betabug.ch/blogs/ch-athens/1221) 2011
- [Clint Adams: Accounting at SFLC](http://www.softwarefreedom.org/blog/2011/sep/07/accounting-at-sflc/) 2011
- [Christine Spang: [h]ledger rocks my world](http://blog.spang.cc/posts/hledger_rocks_my_world/) 2010
- [Roman Cheplyaka: hledger](http://ro-che.blogspot.com/2010/02/hledger.html) 2010
  
### hacker news

- [Ledger, a command-line accounting system](https://news.ycombinator.com/item?id=10510394) 2015
- [Hledger – Double-entry accounting from the Unix tools perspective (2012)](https://news.ycombinator.com/item?id=8806056) 2014
- [Ledger, a powerful CLI accounting tool](https://news.ycombinator.com/item?id=7707262) 2014
- [Command Line Accounting With Ledger and Reckon](https://news.ycombinator.com/item?id=5233255) 2013
- [Ledger: Command-line double-entry accounting](https://news.ycombinator.com/item?id=872244) 2009

### twitter

- [\@LedgerTips](https://twitter.com/LedgerTips)
- [#ledgercli](https://twitter.com/hashtag/ledgercli)

### common tasks

##### data entry

##### reconciling

##### reporting

##### forecasting

- [Notes on Installing and Using ledger on NetBSD](http://atomicules.co.uk/2015/06/20/Notes-on-installing-and-using-Ledger-on-NetBSD.html) (and forecasting)

##### budgetting

- [Using Org for Ledger Reports and Budget](http://alan.petitepomme.net/tips/ledger_and_org.html)
- [YNAB-ish envelope budgetting with hledger/ledger](https://gist.github.com/simonmichael/a1addcb652da4e78b183)

##### shared expenses

- [Sharing Expenses in Beancount](https://docs.google.com/document/d/1FRcJqUfeAMQO6KjG94w6rF7VajMGJaFplmF1Wu0rCHY/edit#heading=h.yshh8f17jbdb) (and others)

##### invoicing

- [invoicing entries](https://gist.github.com/simonmichael/986a65106a9db1f8bd68)

##### multiple currencies

- [ledger-currencies](https://github.com/mikekchar/ledger-currencies)

##### tax reporting

##### time tracking

- [Timetracking and billing with (h)ledger](https://github.com/anarcat/ledger-timetracking)

##### non-profit accounting

- [Non-Profit Accounting With Ledger CLI, A Tutorial](https://github.com/conservancy/npo-ledger-cli/blob/master/npo-ledger-cli-tutorial.md)

##### import and export

##### API access

- [Ledger Python 3 Support](https://groups.google.com/forum/#!topic/ledger-cli/C99w-79Jq8o) Python

- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) Python + CLI

- [hledger-lib](http://hackage.haskell.org/package/hledger-lib),
  [hledger](http://hackage.haskell.org/package/hledger),
  [example](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html)
  Haskell

- [hledger-api](http://editor.swagger.io/#/?import=demo.hledger.org/api/swagger.json&no-proxy),
  [examples](https://github.com/simonmichael/hledger/tree/master/hledger-api/examples)
  JSON

- [node-hledger](https://github.com/rstacruz/node-hledger) JavaScript + CLI


</div>

</div>
<div class="row" style="text-align:center;">

<hr>
Send updates via the
[github repo](https://github.com/simonmichael/plaintextaccounting)
or
[etherpad](https://oasis.sandstorm.io/shared/UAYLwagGI0a2pIMg9Hhv74K04nbuxanXiS5ZtBV6NF-)

</div>

