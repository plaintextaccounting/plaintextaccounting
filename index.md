% Plain Text Accounting, a guide to Ledger and friends

<!-- CSS: http://getskeleton.com -->
<!-- markdown: http://pandoc.org/README.html -->
<div style="float:right; position:fixed; bottom:1em; right:1em;">
[![github](https://img.shields.io/github/stars/plaintextaccounting/plaintextaccounting.github.io.svg?style=social&label=Github){title="send pull requests, bug reports, blog posts, star us, tweet with #plaintextaccounting tag"}](https://github.com/plaintextaccounting/plaintextaccounting.github.io)
</div>
<div class="row" style="padding-top:10%;">

<h1 style="text-align:center; margin-bottom:5%;">Plain Text Accounting</h1>

<div class="four columns">

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

### ...with text

<!-- Ledger, hledger, beancount, and other **[Ledger-likes](#ledger-likes)** -->
<!-- are minimalist software tools for efficient double-entry-style accounting. -->
<!-- <\!-- **[double-entry-style](https://news.ycombinator.com/item?id=10512418)** accounting. -\-> -->
<!-- This site introduces them and their way of doing things. -->

In 2003, John Wiegley invented Ledger: a plain text data format and command-line reporting tool for efficient double-entry-style accounting.
This idea went viral among software developers and technical folk, and we now have
5+ actively-developed **[Ledger-likes](#ledger-likes)** such as hledger and Beancount,
with 40+ add-on tools and an active community.
This site was created in 2016 to introduce our
tools, documentation, and practices.

Accounting data is valuable;
we want to know that it will be accessible for ever - even without software.
We want to know when it changes, and revision-control it.
We want to search and manipulate it efficiently.
So, we store it as human-readable **[plain](http://ledger-cli.org/3.0/doc/ledger3.html#The-Most-Basic-Entry) [text](http://hledger.org/manual.html#journal-format)**.

We simplify debits and credits by using
**[signed numbers](http://ledger-cli.org/3.0/doc/ledger3.html#Stating-where-money-goes)** -
positive for inflows to an account, negative for outflows from an account.

We define arbitrary
**[account](http://ledger-cli.org/3.0/doc/ledger3.html#Structuring-your-Accounts)
[hierarchy](http://hledger.org/manual.html#account-names)**
to suit our needs.
This scales smoothly from simple to complex scenarios, and from high-level overview to fine detail.

Ledger-likes are, at least in part,
**[command-line](http://ledger-cli.org/3.0/doc/ledger3.html#Basic-Usage) [tools](http://hledger.org/manual.html#hledger)**.
This makes them efficient to use and very
**[scriptable](#related-tools)** and flexible.

Ledger-likes also, at their core, tend towards
**[functional operation](https://en.wikipedia.org/wiki/Function_(mathematics))**:
they read the input data without changing it, and output a report.
This simple model makes them easy to understand and rely on.

</div>
<div class="three columns" style="white-space:nowrap;">

### read more

[FAQ](#frequently-asked-questions)  
[software](#software)  
&nbsp;&nbsp;[plain text accounting tools](#plain-text-accounting-tools)  
&nbsp;&nbsp;[data import/conversion](#data-importconversion)  
&nbsp;&nbsp;[data generation](#data-generation)  
&nbsp;&nbsp;[reports](#reports)  
&nbsp;&nbsp;[time logging](#time-logging)  
&nbsp;&nbsp;[UI, console](#ui-console)  
&nbsp;&nbsp;[UI, curses](#ui-curses)  
&nbsp;&nbsp;[UI, GUI](#ui-gui)  
&nbsp;&nbsp;[UI, web](#ui-web)  
&nbsp;&nbsp;[UI, mobile](#ui-mobile)  
&nbsp;&nbsp;[API](#api)  
&nbsp;&nbsp;[editor support](#editor-support)  
[discussion](#discussion)  
&nbsp;&nbsp;[mail lists/IRC](#mail-listsirc)  
&nbsp;&nbsp;[stack exchange](#stack-exchange)  
&nbsp;&nbsp;[hacker news](#hacker-news)  
&nbsp;&nbsp;[reddit](#reddit)  
&nbsp;&nbsp;[twitter](#twitter)  
[docs](#docs)  
&nbsp;&nbsp;[general accounting](#general-accounting)  
&nbsp;&nbsp;[plain text accounting](#plain-text-accounting)  
&nbsp;&nbsp;[comparisons](#comparisons)  
&nbsp;&nbsp;[presentations](#presentations)  
&nbsp;&nbsp;[videos](#videos)  
&nbsp;&nbsp;[articles & blog posts](#articles-blog-posts)  
[common tasks](#common-tasks)  
&nbsp;&nbsp;[choosing accounts](#choosing-accounts)  
&nbsp;&nbsp;[choosing cash vs accrual](#choosing-cash-vs-accrual)  
&nbsp;&nbsp;[entering data](#entering-data)  
&nbsp;&nbsp;[importing](#importing)  
&nbsp;&nbsp;[reconciling](#reconciling)  
&nbsp;&nbsp;[reporting](#reporting)  
&nbsp;&nbsp;[budgeting](#budgeting)  
&nbsp;&nbsp;[forecasting](#forecasting)  
&nbsp;&nbsp;[invoicing](#invoicing)  
&nbsp;&nbsp;[multiple currencies](#multiple-currencies)  
&nbsp;&nbsp;[trip expenses](#trip-expenses)  
&nbsp;&nbsp;[shared expenses](#shared-expenses)  
&nbsp;&nbsp;[taxes](#taxes)  
&nbsp;&nbsp;[time tracking](#time-tracking)  
&nbsp;&nbsp;[inventory tracking](#inventory-tracking)  
<!-- down 2018/03/14 &nbsp;&nbsp;[estate accounting](#estate-accounting)   -->
&nbsp;&nbsp;[non-profit accounting](#non-profit-accounting)  
&nbsp;&nbsp;[exporting](#exporting)  
&nbsp;&nbsp;[customising](#customising)  
&nbsp;&nbsp;[API access](#api-access)  

</div>

</div>

<div class="">

### frequently asked questions

**Who is this for?**\
Those who are comfortable on the command line and who understand the value of storing information in plain text.
If you need a complete GUI providing lots of guidance, you may prefer to use something else.

**Must I edit text and type cryptic commands?**\
Not entirely!
"Plain Text Accounting" is a broad description, referring mainly to the data format.
We welcome optional **[GUIs](#ui-console)**, and they are [coming](#ui-console).

**Who is using this, and how?**\
See **[Who's using Ledger?](https://github.com/ledger/ledger/wiki/Who's-using-ledger%3F)** for some stories.

**What are the alternatives?**\
**[FOSS](https://en.wikipedia.org/wiki/Free_and_open-source_software)** tools like GNUCash, Grisbi, KMyMoney.
Proprietary tools like Quicken/Quickbooks, You Need A Budget.
Online tools like Xero, FreeAgent.
(There are **[many](https://en.wikipedia.org/wiki/Comparison_of_accounting_software)**).
**[Spreadsheets](https://backchannel.com/a-spreadsheet-way-of-knowledge-8de60af7146e#.2hr7pi9pb)**.
Paper accounting.
A bookkeeper.

**Why is this better than QuickBooks?**\
Your data remains accessible.
No yearly fees.
Free software you can fix and port.
Cross platform.
Scriptable.
Efficient.

**How do I communicate with my accountant?**\
Clean up text reports by hand,
print them as PDF,
export CSV reports to a spreadsheet..

**What if my accountant only uses QuickBooks?**\
You'll need a new accountant,
or a duplicate set of books in QuickBooks,
or to pioneer *ledger -> QuickBooks exporting.

**Can I use this to do my taxes?**\
You can use this to track and report the data needed for tax reporting.
Fill out and submit tax forms with another tool, or by hand.

**How do I do budgeting?**\
See [budgeting](#budgeting) below. I emulate YNAB-ish envelope budgetting (see third link).

**Double entry accounting? Where are the debits and credits?**\
Most (not all) plain text accounting implementations use signed amounts instead of debits and credits. This makes them "double entry light" perhaps, but it has been a rather successful simplification, intuitive to most newcomers.

<!-- (from <https://news.ycombinator.com/item?id=12124890>:) -->

**Isn't personal accounting a waste of time?**\
People have very different needs and practise personal accounting for many different reasons. There is of course a point of diminishing returns; tailor your accounting practices to your needs. Needs change over time. Some of us would benefit from doing more (or better) accounting, some less (I would guess this second group is smaller).
In [The Millionaire Next Door](https://en.wikipedia.org/wiki/The_Millionaire_Next_Door) (highly recommended), one research finding was that above-average wealth accumulators spend more time on financial planning, which for many of us requires accounting as a foundation. "Minimal time dedicated to financial planning is a leading indicator of a UAW [Under Accumulator of Wealth]".

**Do you really enter every little transaction?**\
Yes! Many folks in our community do it. Mahatma Gandhi reconciled to the penny every night. J.D. Rockefeller was famous for his ledgers.
It's not required. I started doing it as a temporary learning exercise, and still like it. It makes troubleshooting and reconciling easier.

**How is that possible?**\
Practice, and a process/toolset that suits you. Some folks import most of the data from their banks, so little manual data entry is required. A few prefer to manually enter everything, for the increased awareness and insight. "Manual" data entry is usually assisted in some way: interactive console tools (hledger add and similar), web-based tools (hledger-web and similar), GUI tools (ledgerhelpers), smart editors (eg emacs & ledger-mode), recurring transaction scripts. I currently use a mixture of bank CSV import and rapid copy/paste in emacs. I spend 15 minutes a day on average, and for me that's currently a good investment.

**How do I use the transaction data in my bank's web or mobile app?**\
If you can export it as CSV, you can import it and run queries against it. There are also some tools for converting OFX, QIF etc.

**So I've got a huge list of transactions recorded, duplicating my bank statements. How does that help?**\
Accounting is modelling flows of money (or other value). Such a model aggregates information from many sources, in one trusted place. With it you can efficiently generate reports, forecast things (cashflow!), answer questions, try experiments.
Some people need a very simple model, others benefit from a more detailed one, and we don't know up front what we might need in future. The most fundamental accounting data is a simple list of transactions (the journal). Once you have captured this, you can mine it for anything you may want later on.
Plain text accounting provides nice open data format(s), tools and practices for doing this, and could be a good foundation for more powerful tools.

**Isn't a command-line tool too limited for real-world accounting needs?**\
*"I am sure for a simple expense/budget ledger it will work OK, but when it comes to recurring journals, multiple reconciliation accounts, inter company transfers, control account tracing etc., give me a nice GUI any day..."*\
Understandable. The current plain text accounting tools provide a very generic double entry accounting system with which you can model such things, and script them.
There are a number of generic GUIs available (hledger has curses and web interfaces, and there are web/curses/GTK interfaces for Ledger and beancount). But there are not yet a lot of rich task-specific GUIs. There's no reason they can't be built, though.

**Isn't a plain text format too limited for large organizations?**\
*"it's pretty obvious that plain-text files don't scale to a multinational, with hundreds of accountants of various types all trying to work with the same files. Even with proper use of Git I bet that would get old fast. You would instead want a real database, with a schema, and some data validation and some programs/webpages to smooth out the data entry and querying and whatnot."*\
I'm not sure. Current plain text accounting tools can do some schema definition and data validation, and will do more in future. The plain text storage format is open, human-readable, future-proof (useful even without the software), scales smoothly from simple to complex needs, and taps a huge ecosystem of highly useful tooling, such as version control systems. And, despite the name, there's no reason these tools can't support other kinds of storage, such as a database.

**Where can I see a comparison of hledger, Ledger, beancount, and the rest?**\
Glad you asked! See below, and also [comparisons](#comparisons). hledger's FAQ discusses differences from Ledger, Beancount docs probably do too.

</div>

<a name="ledger-likes"></a>

### software

#### plain text accounting tools

<style>
th, td { border:none; padding-top:0; padding-bottom:0; border-bottom:thin solid #ddd; white-space:nowrap; }
</style>

<!-- syntax: http://pandoc.org/README.html#tables -->
<!-- actives sorted by committers, inactives sorted by start -->
<!-- with leading |'s markdown-mode can realign table with TAB but screws it up again with fontification -->

Project        | Start | Last release | Code                        | Committers | Stars | Mail list, size                  | Chat, size
---------------|-------|:------------:|-----------------------------|-----------:|------:|----------------------------------|----------------------
[Ledger]       | 2003  | 2019-03      | [C++][ledger-gh]            | 160        | 2738  | [ledger][ledger-mail], 922       | [#ledger], 70
[hledger]      | 2007  | 2019-03      | [haskell][hledger-code]     | 100        |  929  | [hledger][hledger-mail], 151     | [#hledger], 65
[Beancount]    | 2008  | 2019-01      | [python][beancount-bb]      | 40         |       | [beancount][beancount-mail], 261 | [#beancount], 20
&nbsp;         |       |              |
[Abandon]      | 2013  | 2017-05      | [scala][abandon-gh]         | 9          |  132  |                                  | [gitter][abandon-gi]
[Transity]     | 2018  | 2018-09      | [purescript][transity-gh]   | 5          |  382  |                                  | [gitter][transity-gi]
[Ledger in Go] | 2013  | 2018-06      | [go][ledger-go-gh]          | 5          |  168  |                                  |
cl-ledger      | 2007  |              | [common lisp][cl-ledger-gh] | 4          |   50  |                                  | 
[.Net Ledger]  | 2017  | 2018-08      | [C#][nledger-gh]            | 1          |   29  |                                  | [gitter][nledger-gi]
[Tackler]      | 2017  | 2019-04      | [scala][tackler-gl]         | 1          |   18  |                                  | [gitter][tackler-gi]
[beans]        | 2017  | 2019-01      | [haskell][beans-gh]         | 1          |   10  |                                  |
[monescript]   | 2017  | 2018-01      | [javascript][monescript-gh] | 1          |    3  |                                  |
[Prudent]      | 2018  |              | javascript ([addons][prudent-gh]) | 1          |       |                                  | [\@PrudentLedger][prudent-chat]
&nbsp;         |       |              |
**Inactive:**  |       |              |
uledger        | 2015  |              | [python][uledger-gh]
pacioli        | 2013  |              | [python][pacioli-gh]
ledger.pl      | 2013  |              | [perl][ledger.pl-gh]
[Penny]        | 2012  | 2014         | [haskell][penny-gh]
[UMM]          | 2009  | 2010         | [haskell][UMM]
sm-Ledger      | 2007  |              | [squeak smalltalk][smalltalk-gh]

[Abandon]: https://github.com/hrj/abandon#readme
[abandon-gh]: https://github.com/hrj/abandon
[abandon-gi]: https://gitter.im/hrj/abandon

[Beancount]: http://furius.ca/beancount
[beancount-mail]: https://groups.google.com/forum/#!forum/beancount
[#beancount]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#beancount
[beancount-bb]: http://bitbucket.org/blais/beancount/

[cl-ledger-gh]: https://github.com/ledger/cl-ledger

[hledger]: http://hledger.org
[hledger-mail]: http://mail.hledger.org/
[#hledger]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#hledger
[hledger-code]: http://code.hledger.org

[Ledger]: http://ledger-cli.org
[#ledger]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#ledger
[ledger-mail]: http://list.ledger-cli.org/
[ledger-gh]: https://github.com/ledger/ledger

[ledger.pl-gh]: https://github.com/dimonf/ledger.pl

[Ledger in Go]: https://github.com/howeyc/ledger#readme
[ledger-go-gh]: https://github.com/howeyc/ledger

[.Net Ledger]: https://github.com/dmitry-merzlyakov/nledger
[nledger-gh]: https://github.com/dmitry-merzlyakov/nledger
[nledger-gi]: https://gitter.im/nledger/lobby

[pacioli-gh]: https://github.com/mdipierro/pacioli

[Penny]: http://massysett.github.io/penny/
[penny-gh]: https://github.com/massysett/penny

[prudent]: https://prudent.me
[prudent-gh]: https://github.com/PrudentMe
[prudent-chat]: https://twitter.com/PrudentLedger

[smalltalk-gh]: https://gist.github.com/simonmichael/bb611dba654ccb1573e1

[monescript]: https://monescript.github.io/
[monescript-gh]: https://github.com/monescript/monescript

[Tackler]: https://tackler.e257.fi
[tackler-gl]: https://gitlab.com/e257/accounting/tackler
[tackler-gi]: https://gitter.im/E257-FI/tackler

[Transity]: https://github.com/feramhq/transity#readme
[transity-gh]: https://github.com/feramhq/transity
[transity-gi]: https://gitter.im/feramhq/transity

[beans]: https://sboehler.github.io/beans
[beans-gh]: https://github.com/sboehler/beans

[uledger-gh]: https://github.com/danpat/uledger

[UMM]: http://hackage.haskell.org/package/UMM



<!-- [compare at openhub](https://www.openhub.net/p/_compare?project_0=Ledger&project_1=hledger&project_2=beancount) -->

<div class="row">

<div class="seven columns">

The following sections collect add-ons and helper tools related to the above.
"\*ledger" below means Ledger & hledger-style journal format.

#### data import/conversion

- [Ledger](http://ledger-cli.org/3.0/doc/ledger3.html#Comma-Separated-Values-files) and [hledger](http://hledger.org/manual.html#csv-format) have CSV conversion built in. Also:
- bean-identify, bean-extract, bean-file - Beancount built-in tools
- [banks2ledger](https://github.com/tomszilagyi/banks2ledger) - CSV to *ledger converter
- [beancount-import](https://github.com/jbms/beancount-import) web app/framework for converting various formats to beancount (python)
- [beancount-ynab](https://github.com/hoostus/beancount-ynab) You Need A Budget to beancount converter
- [csv2beancount](https://github.com/PaNaVTEC/csv2beancount) CSV to beancount converter (clojure)
- [gcash2ledger.py](https://gist.github.com/nonducor/ddc97e787810d52d067206a592a35ea7/) GNUCash XML to *ledger converter (python)
- [gnucash-to-beancount](https://github.com/henriquebastos/gnucash-to-beancount/) GNUCash sqlite to beancount converter (python)
- [gnucash2ledger.py](https://github.com/MatzeB/pygnucash/blob/master/gnucash2ledger.py) GNUCash sqlite to *ledger converter (python)
- [grisbi2Ledger](https://github.com/Hawk777/grisbi2ledger) Grisbi to *ledger converter
- [hledger-import-dsl](https://github.com/hpdeifel/hledger-import-dsl) alternate, programmable CSV converter for hledger
- [hledger-to-influxdb](https://github.com/barrucadu/hledger-scripts#hledger-to-influxdb) hledger to InfluxDB converter (haskell)
- [icsvledger](https://launchpad.net/csv2ledger) CSV to *ledger converter
- [into-ledger](https://github.com/manishrjain/into-ledger) CSV to *ledger converter
- [Ledger in Go](https://github.com/howeyc/ledger) has limport, a CSV to *ledger converter
- [ledger-autosync](https://gitlab.com/egh/ledger-autosync) OFX download, OFX to *ledger conversion, deduplication
- [ledger-guesser](https://github.com/j3k0/ledger-guesser) neural network for generating entries like past ones, can be used with ledger-autosync (javascript)
- [ledger-reconciler](https://disjoint.ca/projects/ledger-reconciler) automatically download and reconcile your ledger financial entries
- [ledger-to-beancount](https://github.com/glasserc/ledger-to-beancount/) yet another simple ledger to beancount converter (python)
- [ledger-tutorials](https://github.com/tlvince/ledger-tutorials) convert Pete Keen's tutorials to ebook format
- [ledger2beancount.py](https://gist.github.com/travisdahlke/71152286b0a8826249fe) *ledger to beancount converter
- [ledger2beancount](https://github.com/zacchiro/ledger2beancount) ledger to beancount converter
- [ledgerbil](https://github.com/scarpent/ledgerbil) schedule recurring txns, interactive reconcile, date sorting
- [outofit](https://github.com/rcaputo/outofit) QuickBooks to *ledger converter
- [piecash](https://github.com/sdementen/piecash) GNUCash SQL to *ledger converter (python)
- [plaid2qif](https://github.com/ebridges/plaid2qif) Download transactions from plaid as QIF or CSV files
- [plaid2text](https://github.com/madhat2r/plaid2text) Plaid API to *ledger/beancount download/conversion
- [qb2ledger](https://gist.github.com/genegoykhman/3765100) QuickBooks General Journal CSV to *ledger converter
- [QIFtoLedger](https://github.com/Kolomona/QIFtoLedger) (Bank of America's) QIF to *ledger converter
- [reckon](https://github.com/cantino/reckon) smart interactive/non-interactive CSV to *ledger converter
- [smart_importer](https://github.com/johannesjh/smart_importer) library for building smarter CSV to beancount/Fava converters
- [total_recall](https://github.com/eval/total_recall) CSV to *ledger converter
- [ynab_to_ledger](https://github.com/pgr0ss/ynab_to_ledger) You Need A Budget to *ledger converter

#### data generation

- [beancount-extract-price](https://github.com/Mayeu/beancount-scripts) generate prices transactions based on your beancount ledger (python)
- [bean-price](https://docs.google.com/document/d/1thYRAMell_QT1Da1F_laprSs6BlROZjyK_h3V8qHW9c) Beancount's price fetching tool
- [hledger-interest](http://hackage.haskell.org/package/hledger-interest) generate *ledger interest entries (haskell)
- [ledger-get-prices](https://github.com/nathankot/ledger-get-prices) download market prices (ruby)
- [market-prices](https://github.com/barrucadu/hledger-scripts#market-prices) download market prices from several sources (python)
- [sassetti](https://github.com/jvasile/sassetti) adds lisp macros to ledger files (common lisp)

#### reports

- [hledger-diff](http://hackage.haskell.org/package/hledger-diff) report differing transactions between two journals (haskell)
- [hledger-irr](http://hackage.haskell.org/package/hledger-irr) calculate an account's internal rate of return (superseded by [roi](http://hledger.org/manual.html#roi)) (haskell)
- [ledger-plot](https://github.com/Tagirijus/ledger-plot) interactive tool for making GNUplot charts from Ledger (python)
- [ledger-plots](https://github.com/esovetkin/ledger-plots) R package & script to make charts from Ledger (R)
- [r-ledger](https://github.com/trevorld/r-ledger) an R package for reading and reporting on ledger/hledger/beancount files (R)
- [TaxingLots](https://framagit.org/jkepler/TaxingLots) calculates capital gains for a ledger journal (python)

#### time logging

- [org2tc](https://github.com/jwiegley/org2tc) org to timeclock converter
- [on-modify.timetrack.py](https://gist.github.com/wbsch/d977b0ac29aa1dfa4437) taskwarrior hook for timeclock output
- [t](https://github.com/nuex/t) ledger timeclock shellscript
- [tim](https://github.com/MatthiasKauer/tim) time logging and reporting tool using hledger

#### UI, console

- [bean-add](https://github.com/simon-v/bean-add) interactive transaction entry tool (python)
- [hledger add](http://hledger.org/manual.html#add) interactive transaction entry tool (builtin command)
- [ldgr](https://github.com/brandonpittman/ldgr) command line tool to add/sort/tag ledger files (ruby)
- [ledger xact](https://www.ledger-cli.org/3.0/doc/ledger3.html#xact) history-aware transaction generator (builtin command)
- [recurring](http://hub.darcs.net/simon/ledgertools/browse/recurring) command line tool to show/add recurring entries using Ledger (python)

#### UI, curses

- [hledger-iadd](https://github.com/hpdeifel/hledger-iadd) TUI for *ledger transaction entry (haskell)
- [hledger-ui](http://hackage.haskell.org/package/hledger-ui) TUI for *ledger browsing (haskell, [video](https://asciinema.org/a/29665))
- [ledger-add](https://github.com/Tagirijus/ledger-add) TUI for *ledger transaction entry (python)
- [regdel](https://github.com/guillaumechereau/regdel) TUI for browsing Ledger files (python)

#### UI, GUI

- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) misc. GUI tools + helper library (Python, GTK)
- [Prudent][prudent] integrated journal editing/importing/reporting GUI for Ledger (Javascript, mac only, closed source)

#### UI, web

- [fava](https://github.com/beancount/fava) web UI for beancount browsing (python, [demo](http://fava.pythonanywhere.com/))
- [hledger-web](http://hackage.haskell.org/package/hledger-web) web UI for *ledger browsing, data entry 
  (haskell, 
   [demo](http://demo.hledger.org), 
   [Sandstorm app](https://apps.sandstorm.io/app/8x12h6p0x0nrzk73hfq6zh2jxtgyzzcty7qsatkg7jfg2mzw5n90))
- [Ledger in Go](https://github.com/howeyc/ledger) web UI for browsing ledger transactions, reports, and porfolios
- [Ledger Web](https://github.com/peterkeen/Ledger-Web) ledger HTML reporting system (ruby, postgres)
- [Ledger Web](https://vifon.github.io/ledger-web) web UI/API for ledger browsing, data entry (python)
- [ledger-analytics](https://github.com/kendricktan/ledger-analytics) web UI for ledger data analytics (javascript)
- [ledger-dashboard](https://github.com/Ikke/ledger-dashboard) web UI for ledger browsing, data entry (python)
- [ledgible](https://github.com/lipidity/ledgible) web UI for ledger browsing, data entry (python)
- [node-ledger-web](https://github.com/slashdotdash/node-ledger-web) web UI for ledger browsing (javascript)
- [WealthPulse](https://github.com/readysetmark/WealthPulse) web UI for ledger browsing, price fetching (F#)

#### UI, mobile

- [cashier](https://gitlab.com/alensiljak/cashier) mobile or desktop client for ledger and hledger-web (Android/Desktop, javascript, [app](https://cashier.alensiljak.eu.org/))
- [cone](https://f-droid.org/en/packages/info.tangential.cone/) data entry app for the h/ledger format (Android, [dart](https://github.com/bradyt/cone))
- [MoLe](https://fossdroid.com/a/mole.html) mobile client for hledger-web (Android, [java](https://git.ktnx.net/?p=mobile-ledger.git))

#### API

- [hledger-api](https://github.com/simonmichael/hledger/tree/master/hledger-api) JSON API server for *ledger files (haskell)
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) extends Ledger's python library (python)
- [node-hledger](https://github.com/rstacruz/node-hledger) Node.js API for *ledger files (javascript)

<!--
other console/curses tools

- [Taskwarrior](http://taskwarrior.org) modern task manager
- [add / tapecalc](http://invisible-island.net/add/add.html) dynamically updating tape calculator
- [sc](http://www.linuxjournal.com/article/10699) spreadsheet
- [sc-im](https://github.com/andmarti1424/sc-im) update of sc
- [GNU PEM & Oleo](http://www.examiner.com/article/gnu-pem-oleo-two-great-command-line-text-based-financial-accounting-apps) expenses manager, spreadsheet
- the [org empire](http://orgmode.org)...
-->

#### editor support

Grouped by editor.
Note these often work quite well for other ledger-likes, not just the one they are named for.

- <span style="float:right;">Atom</span> [language-ledger](https://atom.io/packages/language-ledger)
- <span style="float:right;">Atom</span> [ledger](https://atom.io/packages/ledger)
\
\
- <span style="float:right;">Emacs</span> [beancount-mode](https://bitbucket.org/blais/beancount/src/1e21b27c0b0ecf2bf2e1a2cd5c3da3b1befc8152/src/elisp/beancount.el?at=default&fileviewer=file-view-default)
- <span style="float:right;">Emacs</span> [hledger-mode](https://github.com/narendraj9/hledger-mode)
- <span style="float:right;">Emacs</span> [ledger-mode](https://www.ledger-cli.org/3.0/doc/ledger-mode.html) (also works for hledger, beancount etc.)
\
\
- <span style="float:right;">VIM</span> [hledger-vim](https://github.com/anekos/hledger-vim)
- <span style="float:right;">VIM</span> [vim-beancount](https://github.com/nathangrigg/vim-beancount)
- <span style="float:right;">VIM</span> [vim-ledger](https://github.com/ledger/vim-ledger)
\
\
- <span style="float:right;">Sublime</span> [sublime-ledger-syntax](https://github.com/moeffju/sublime-ledger-syntax)
\
\
- <span style="float:right;">TextMate</span> [Ledger.tmbundle](https://github.com/lifepillar/Ledger.tmbundle)
\
\
- <span style="float:right;">Visual Studio Code</span> [hledger-vscode](https://github.com/mhansen/hledger-vscode)
- <span style="float:right;">Visual Studio Code</span> [ledger](https://marketplace.visualstudio.com/items?itemName=mariosangiorgio.ledger)
- <span style="float:right;">Visual Studio Code</span> [vscode-beancount](https://marketplace.visualstudio.com/items?itemName=Lencerf.beancount)

<br>

### discussion

<div class="row">
<div class="five columns u-pull-left">
#### mail lists/IRC
</div>

[#plaintextaccounting],
[project mail lists/chats](#plain-text-accounting-tools)

[#plaintextaccounting]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#plaintextaccounting

</div>

<div class="row">
<div class="five columns u-pull-left">
#### stack exchange
</div>

[ledger](http://money.stackexchange.com/search?q=ledger-cli),
[hledger](http://money.stackexchange.com/search?q=hledger)
<!-- [beancount](http://money.stackexchange.com/search?q=beancount) -->

</div>

<div class="row">
<div class="five columns u-pull-left">
#### hacker news
</div>

[stories](https://hn.algolia.com/?query=plain%20text%20accounting&sort=byDate&prefix=false&page=0&dateRange=all&type=story),
[comments](https://hn.algolia.com/?query=plain%20text%20accounting&sort=byDate&prefix=false&page=0&dateRange=all&type=comment)

<!--
- [Ledger, a command-line accounting system](https://news.ycombinator.com/item?id=10510394) 2015
- [Hledger – Double-entry accounting from the Unix tools perspective (2012)](https://news.ycombinator.com/item?id=8806056) 2014
- [Ledger, a powerful CLI accounting tool](https://news.ycombinator.com/item?id=7707262) 2014
- [Command Line Accounting With Ledger and Reckon](https://news.ycombinator.com/item?id=5233255) 2013
- [Ledger: Command-line double-entry accounting](https://news.ycombinator.com/item?id=872244) 2009
-->

</div>

<div class="row">
<div class="five columns u-pull-left">
#### reddit
</div>

[/r/plaintextaccounting](https://www.reddit.com/r/plaintextaccounting/)

</div>

<div class="row">
<div class="five columns u-pull-left">
#### twitter
</div>

[#plaintextaccounting](https://twitter.com/hashtag/plaintextaccounting),
[#ledgercli](https://twitter.com/hashtag/ledgercli),
[#hledger](https://twitter.com/hashtag/hledger),
[#beancount](https://twitter.com/hashtag/beancount),
[\@LedgerTips](https://twitter.com/LedgerTips)

</div>

</div>
<div class="five columns u-pull-right tight">

### docs

#### general accounting

- [hledger: Accounting](https://github.com/simonmichael/hledger/wiki/More%20docs#accounting)
- [Accounting for Dragons](http://podcastle.org/2009/10/09/pc-miniature-38-accounting-for-dragons)
- [Beancount: The Double-Entry Counting Method](https://docs.google.com/document/d/100tGcA4blh6KSXPRGCZpUlyxaRUwFHEvnz_k9DyZFn4)

#### plain text accounting
<!-- official docs & useful intro docs -->
<!-- XXX reorg -->

- [Ledger manuals](http://ledger-cli.org/docs.html)
- [Ledger wiki](https://github.com/ledger/ledger/wiki)
- [Ledger CLI cheatsheet](https://devhints.io/ledger)
- [Getting Started With Ledger](https://rolfschr.github.io/gswl-book/latest.html)
- [hledger User Guide](http://hledger.org/docs.html)
- [Beancount docs (google)](http://furius.ca/beancount/doc/index) / [(sphinx)](http://aumayr.github.io/beancount-docs-static/)
- [Beancount: Command-line Accounting in Context](https://docs.google.com/document/d/1e4Vz3wZB_8-ZcAwIFde8X5CjzKshE4-OXtVVHm4RQ8s)
- [Beancount: Syntax Cheatsheet](http://furius.ca/beancount/doc/cheatsheet)
- [Program your Finances: Command-line Accounting](https://www.petekeen.net/keeping-finances-with-ledger)
- [Don’t Sink Your First Attempts at Plaintext Accounting](plaintext-accounting-errors.html)
- [Syntax Quick Reference for the Ledger-Likes](quickref/)

#### comparisons

- [Matthias Kauer: Command Line Accounting – A look at the various ledger ports](http://www.matthiaskauer.com/2015/08/command-line-accounting-a-look-at-the-various-ledger-ports/) 2015
- [Another Ledger user's perspective](https://groups.google.com/d/msg/beancount/QV4qgpFbtJ8/9fSgMw-XGC8J) 2015
- [Beancount: A Comparison of Beancount and Ledger](https://docs.google.com/document/d/1dW2vIjaXVJAf9hr7GlZVe3fJOkM-MtlVjvCO1ZpNLmg) 2014
- [ledger vs hledger vs beancount or how to choose the right cli client](https://groups.google.com/d/topic/ledger-cli/__yuMVjrOH0/discussion) 2014
- [hledger: hledger & Ledger](http://hledger.org/faq.html#hledger-ledger) 2014
- [Omari Norman: Why Penny](http://massysett.github.io/penny/why-penny.html) 2013
<!-- - [Fabrice Niessen: Why Ledger?](gone) 2010 -->

#### presentations

- [Andreas Pauley: Purely Functional Personal Finance](https://pauley.org.za/functional-finance-hledger/) 2018
- [Ledger CLI Accounting for Geeks](http://blog.loadingdata.nl/accounting-for-geeks/) 2014
- [Hacking Your Finances for Fun and Profit](http://matthewturland.com/slides/ledger-stats/) 2013
- [Ledger and Text based Accounting](http://www.adamsinfoserv.com/AISTWiki/pub/AIS/Presentations/Ledger.pdf) 2009

#### videos

- [Colin Dean: Plaintext Accounting with the ledger ecosystem](https://www.youtube.com/watch?v=FJtaM43PgXQ) 2017
- [Colin Dean: Plain Text Accounting](https://www.youtube.com/watch?v=8r5Cp66k4PA) 2017
- [Simon Michael: Hands-on with hledger](https://www.youtube.com/watch?v=H_CdGzLbc7A) 2016
- [Austin Walker: Conquering Your Finances with Emacs and Ledger](https://www.youtube.com/watch?v=cjoCNRpLanY) 2016
- [FLOSS Weekly 375: hledger](https://twit.tv/shows/floss-weekly/episodes/375)
  ([youtube](https://www.youtube.com/watch?v=Xjl-wVJcYpE),
  [3m overview](https://www.youtube.com/watch?v=qS2UcDV_lbs))
  2016
- [Evolution of ledger](https://www.youtube.com/watch?v=MGu1Bw2USQo) 2015
- [Evolution of hledger](https://www.youtube.com/watch?v=dEADGr9dqow) 2015
- [FLOSS Weekly 150: Ledger](https://twit.tv/shows/floss-weekly/episodes/150)
  ([youtube](https://www.youtube.com/watch?v=TDqrrH-gTt0)) 2011
- [Accounting course by Prof. Krug](https://www.youtube.com/playlist?list=PL259DBFA47F3B4761) 2011
- [Khan Academy: Accounting and financial statements](https://www.khanacademy.org/economics-finance-domain/core-finance/accounting-and-financial-stateme)
- [David Mitchell: Personal Debts](https://www.youtube.com/watch?v=9zyp8RF-Fyw)

#### articles & blog posts
<!-- "series" are positioned by most recent post date; their individual posts can be linked elsewhere if appropriate -->

- [Skip Oliva: Accounting in Plain Text, Part 1](https://cvillefoss.blog/2019/02/12/accounting-in-plain-text-part-1) 2019
- [John Sullivan: Answering questions with accounting: Reimbursements](https://blog.johncs.com/posts/accounting-reimbursements.htm) 2019 <!-- 01/07 -->
- [Felix Crux: Ledger Practices series](https://felixcrux.com/blog/ledger-practices) 2016-2018
- [Zoran Zaric: Depreciation in Personal Finance with Hledger](http://rantsideasstuff.com/posts/2018/07/08-depreciation-in-personal-finance-with-hledger/) 2018 <!-- 7/4 -->
- [Zoran Zaric: Tracking Investments in Lots with Hledger](http://rantsideasstuff.com/posts/2018/07/01-tracking-investments-in-lots-with-hledger/) 2018 <!-- 7/1 -->
- [LWN: Counting beans - and more - with Beancount](https://lwn.net/SubscriberLink/751874/a38128abb72e45c5/) 2018 <!-- 4/19 -->
- [Michael Walker: I Need A Budget](https://www.barrucadu.co.uk/posts/etc/2017-12-16-i-need-a-budget.html) 2017 <!-- /12/16 -->
- [Accounting for the simple minds with plain text accounting](https://dustri.org/b/accounting-for-the-simple-minds-with-plain-text-accounting.html) 2017 <!-- 12/1 -->
<!-- down 2018/03/14 - [S.M. Oliva: Inventory, Part I: Will It Probate?](https://commandlineprobate.com/post/003-inventory-part-1-will-it-probate/) 2017/8/31 -->
<!-- down 2018/03/14  - [S.M. Oliva: A Simple First Account](https://commandlineprobate.com/post/002-a-simple-first-account/) 2017/7/31 -->
<!-- down 2018/03/14  - [S.M. Oliva: The Basics of hledger](https://commandlineprobate.com/post/001-the-basics-of-hledger/) 2017/7/30 -->
<!-- down 2018/03/14  - [S.M. Oliva: Introduction to Command Line Probate](https://commandlineprobate.com/post/000-introduction-to-command-line-probate/) 2017/7/5 -->
- [LWN: Restarting the free accounting search](https://lwn.net/Articles/729088/) 2017 <!-- 7/28 -->
- [Michael Walker: Visualise your finances with hledger, InfluxDB, and Grafana](https://www.barrucadu.co.uk/posts/etc/2017-05-18-visualise-your-finances-with-hledger-influxdb-grafana.html) 2017<!-- 5/18 -->
- [Brady Trainor: Hledger web](https://bradyt.com/2017/04/28/Hledger-web/) 2017<!-- /4/28 -->
- [Karan Ahuja: Hledger Improvements Wishlist.](http://www.karanahuja.in/2016-05-17-Hledger-Improvements-Wishlist/) 2016<!-- /5/17 -->
- [Alex Johnstone: Managing my personal finances with beancount](https://alexjj.com/blog/2016/2/managing-my-personal-finances-with-beancount/) 2016<!-- /2/27 -->
- [Stefano Rodighiero: hledger-dupes](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html) 2015<!-- /1/4 -->
- [Matthew Turland: Ledger basics and habits](http://matthewturland.com/2014/03/29/ledger-basics-and-habits/) 2014<!-- /3/29 -->
- [Simon Michael: What is hledger?](http://joyful.com/blog/2013-10-20-what-is-hledger.html) 2013<!-- /10/20 -->
- [Simon Michael: More on ledger](http://joyful.com/blog/2013-10-19-more-on-ledger.html) 2013<!-- /10/19 -->
- [Simon Michael: Introducing hledger!](http://joyful.com/blog/2013-10-18-introducing-hledger.html) 2013<!-- /10/18 -->
- [Joey Hess: hledger](http://joeyh.name/blog/entry/hledger) 2012<!-- /12/3 -->
- [Gene Goykhman: An Alternative to QuickBooks](http://goykhman.ca/gene/blog/2012/2012-09-23-an-alternative-to-quickbooks.html) 2012<!-- /9/23 -->
- [LWN: The accounting quest: Ledger](http://lwn.net/Articles/501681/) 2012<!-- /6/13 -->
- [Pete Keen: Program your Finances series](https://www.petekeen.net/finance) 2010-2012<!-- /5/23 -->
- [Clint Adams: Accounting at SFLC](http://www.softwarefreedom.org/blog/2011/sep/07/accounting-at-sflc/) 2011<!-- /9/7 -->
- [Sascha Welter: Doing my own accounting](http://betabug.ch/blogs/ch-athens/1221) 2011<!-- /12/5 -->
- [Christine Spang: [h]ledger rocks my world](http://blog.spang.cc/posts/hledger_rocks_my_world/) 2010<!-- /7/5 -->
<!-- - [Roman Cheplyaka: hledger](http://ro-che.blogspot.com/2010/02/hledger.html) 2010 -->
<!-- - [Fabrice Niessen on Ledger, hledger, beancount, CSV2Ledger](http://www.mygooglest.com/fni/ledger.html) 2010 -->
- [советы: Ledger — бухучёт в командной строке](http://s.arboreus.com/2009/05/personal-accounting-in-command-line.html) ([english](http://translate.google.com/translate?hl=en&sl=ru&u=http://s.arboreus.com/2009/05/personal-accounting-in-command-line.html)) 2009
- [Joe Barr: Ledger, the bran muffin of accounting tools](http://archive09.linux.com/feature/58307) 2006<!-- /11/10 -->

### common tasks

#### choosing accounts

- [sample chart of accounts for a freelancer](https://gist.github.com/simonmichael/9936299)
- [Beancount Cookbook: Account Naming Conventions](https://docs.google.com/document/d/1Tss0IEzEyAPuKSGeNsfNgb0BfiW2ZHyP5nCFBW1uWlk/view#heading=h.tu0f1kydrpgn)
- [Mint: Ways to Categorize Your Spending](https://www.mint.com/mint-categories)
- [Simplified version of double-entry bookkeeping for personal and business finance?](http://money.stackexchange.com/questions/47561/simplified-version-of-double-entry-bookkeeping-for-personal-and-business-finance)

#### choosing cash vs accrual

- [Ledger Practices: Accrual vs. Cash Basis Accounting](https://felixcrux.com/blog/ledger-practices-accrual-vs-cash-basis-accounting)

#### entering data

- [hledger Step by Step: basic data entry](http://hledger.org/step-by-step.html#basic-data-entry-reporting)
- ledger-mode:\
  `C-c C-a` add a transaction,\
  `C-c C-b` amount calculator,\
  `C-c C-c`/`C-c C-e` toggle cleared
- [Beancount: Command Line Accounting Cookbook](https://docs.google.com/document/d/1Tss0IEzEyAPuKSGeNsfNgb0BfiW2ZHyP5nCFBW1uWlk)
- [hledger Cookbook: Use another account separator character](http://hledger.org/cookbook.html#use-another-account-separator-character)
- [Accounting bookkeeping entries](https://github.com/simonmichael/hledger/wiki/more-docs#accounting)
- [ledger-envelope-generator.rb](https://github.com/simonmichael/hledger/issues/313)
- [Ledger Practices: Separate Your Journals](https://felixcrux.com/blog/ledger-practices-separate-your-journals)
- [UI tools](#ui-console)

#### importing

- [Ledger: The convert command](http://www.ledger-cli.org/3.0/doc/ledger3.html#The-convert-command)
- [hledger: CSV format](http://hledger.org/manual.html#csv-format)
- [hledger Cookbook: Convert CSV files](http://hledger.org/cookbook.html#convert-csv-files)
- [Beancount: Importing External Data in Beancount](https://docs.google.com/document/d/11EwQdujzEo2cxqaF5PgxCEZXWfKKQCYSMfdJowp_1S8)
- [Beancount: Prices in Beancount](https://docs.google.com/document/d/1thYRAMell_QT1Da1F_laprSs6BlROZjyK_h3V8qHW9c)
- [Payment matching done right](https://tomszilagyi.github.io/payment-matching/)
- ["Full-fledged hledger" tutorial](https://github.com/adept/full-fledged-hledger)
- ["Hledger Flow" tutorial/slideshow](https://github.com/apauley/hledger-flow)
- [import tools](#data-import)

#### reconciling

- ledger-mode: `C-c C-r`
- [How to use ledger(1) to reconcile your chequebook with your bank statement](https://mumble.net/~campbell/2017/02/26/ledger/HOWTO-reconcile-cheques)
- [How to use ledger(1) to reconcile your payments with your payment processor](https://mumble.net/~campbell/2017/02/26/ledger/HOWTO-reconcile-payments)

#### reporting

- [example queries for Beancount](http://aumayr.github.io/beancount-sql-queries/)
- [hledger Cookbook: Rewrite account names](https://github.com/simonmichael/hledger/wiki/Rewrite-account-names)
- [Report Scripts for Ledger CLI with Gnuplot](https://www.sundialdreams.com/report-scripts-for-ledger-cli-with-gnuplot/)
- [Full-fledged hledger tutorial](https://github.com/adept/full-fledged-hledger)
- [Ledger Practices: Reporting Special Events Separately From Regular Spending](https://felixcrux.com/blog/ledger-practices-reporting-special-events-separately)
- [Program your Finances: Reporting for Fun and Profit](https://www.petekeen.net/program-your-finances-reporting-for-fun-and-profit)
- [Pete Keen: A Robust Reporting System for Ledger](https://www.petekeen.net/a-robust-reporting-system-for-ledger) 2012<!-- /1/1 -->

#### budgeting

Budget reporting with Ledger's periodic transactions:

- [Ledger: Budgeting](http://www.ledger-cli.org/3.0/doc/ledger3.html#Budgeting)

<p style="margin-bottom:.1em;">Budget reporting with hledger-budget:

- [hledger-budget](http://hledger.org/manual.html#budget)

Envelope budgeting with ordinary accounts:

- [Michael Walker: I Need A Budget](https://www.barrucadu.co.uk/posts/etc/2017-12-16-i-need-a-budget.html)
- [Simon Michael: envelope budgeting example](https://gist.github.com/simonmichael/a1addcb652da4e78b183)

Envelope budgeting with Ledger's automated postings:

- [bsilvereagle: Envelope Budgeting with ledger](https://frdmtoplay.com/envelope-budgeting-with-ledger)
- [Program Your Finances: Envelope Budgeting](https://www.petekeen.net/program-your-finances-envelope-budgeting)
- [Marcin Borkowski: Ledger – virtual postings aka envelopes](http://mbork.pl/2016-07-18_Ledger_–_virtual_postings_aka_envelopes)

Envelope budgeting with automated postings, org & babel:

- [Org tutorials: Weaving a budget with Org & ledger](http://orgmode.org/worg/org-tutorials/weaving-a-budget.html)
- [Alan Schmitt: Using Org for Ledger Reports and Budget](http://alan.petitepomme.net/tips/ledger_and_org.html)

#### forecasting

- [Ledger: Forecasting](http://www.ledger-cli.org/3.0/doc/ledger3.html#Forecasting)
<!-- down 2017/4/28 - [Notes on Installing and Using ledger on NetBSD](http://atomicules.co.uk/2015/06/20/Notes-on-installing-and-using-Ledger-on-NetBSD.html) and forecasting -->

#### invoicing

- [invoicing entries](https://gist.github.com/simonmichael/986a65106a9db1f8bd68)
- [Ledger Practices: Tracking Reimbursable Expenses](https://felixcrux.com/blog/ledger-practices-tracking-reimbursable-expenses)

#### multiple currencies

- [Peter Selinger: Tutorial on multiple currency accounting](http://www.mscs.dal.ca/~selinger/accounting/tutorial.html)
- [ledger-currencies tutorial](https://github.com/mikekchar/ledger-currencies)
- [Understanding the valuation function and the market function](https://groups.google.com/d/msg/ledger-cli/dc6F-HvZOyE/5IuoxzMOBwAJ)

#### trip expenses

- [Program your Finances: Vacation Tracking](https://www.petekeen.net/program-your-finances-vacation-tracking) 2011<!-- /8/4 -->

#### shared expenses

- [Beancount: Sharing Expenses in Beancount](https://docs.google.com/document/d/1FRcJqUfeAMQO6KjG94w6rF7VajMGJaFplmF1Wu0rCHY)
- [Keeping (financial) score with Ledger](http://sachachua.com/blog/2014/11/keeping-financial-score-ledger/)
- [Program Your Finances: Automated Transactions](https://www.petekeen.net/program-your-finances-automated-transactions)
- [How to keep control of shared expenses inside marriage?](http://money.stackexchange.com/questions/7101/how-to-keep-control-of-shared-expenses-inside-marriage)
- [How to use ledger(1) to split shared expenses](https://mumble.net/~campbell/2017/02/26/ledger/HOWTO-sharedexpense)
- [Ledger Practices: Tracking Accounts Jointly and Separately](https://felixcrux.com/blog/ledger-practices-tracking-accounts-jointly-and-separately)

#### taxes

- [How to use ledger(1) to track US income taxes](https://mumble.net/~campbell/2017/08/06/ledger/HOWTO-track-tax)
- [Another Ledger user's perspective](https://groups.google.com/d/msg/beancount/QV4qgpFbtJ8/9fSgMw-XGC8J) 2015

#### time tracking

- [Ledger: Time Keeping](http://ledger-cli.org/3.0/doc/ledger3.html#Time-Keeping)
- [hledger: Timeclock files](http://hledger.org/manual.html#timeclock-format)
- [hledger: Timedot files](http://hledger.org/manual.html#timedot-format)
- [Timetracking and billing with (h)ledger](https://github.com/anarcat/ledger-timetracking)
- [time tracking tools](#time-logging)

#### inventory tracking

- [Beancount: Inventory Booking](https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4), [discussion](https://groups.google.com/forum/#!searchin/ledger-cli/inventory/ledger-cli/aQvbjTZa7HE/x3KNPteJWPsJ)
- [Accounting Savvy for Business Owners ch. 8](http://www.amazon.com/Accounting-Savvy-Business-Owners-Essentials/dp/193292518X)

<!-- #### estate accounting

down 2018/03/14 - [Command Line Probate blog](https://commandlineprobate.com) -->

#### non-profit accounting

- [Non-Profit Accounting With Ledger CLI, A Tutorial](https://github.com/conservancy/npo-ledger-cli/blob/master/npo-ledger-cli-tutorial.md)

#### exporting

- [Ledger: The csv command](http://www.ledger-cli.org/3.0/doc/ledger3.html#The-csv-command)
- [hledger: CSV output](http://hledger.org/manual.html#csv-output)
- [Beancount: Exporting Your Portfolio](https://docs.google.com/document/d/1mNyE_ONuyEkF_I2l6V_AoAU5HJgI654AOBhHsnNPPqw)

#### customising

- [Ledger Practices: Create a .ledgerrc](https://felixcrux.com/blog/ledger-practices-create-a-ledgerrc)

#### API access

- [Ledger: Extending with Python](http://ledger-cli.org/3.0/doc/ledger3.html#Extending-with-Python)
- [Ledger Python 3 Support](https://groups.google.com/forum/#!topic/ledger-cli/C99w-79Jq8o) Python
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) Python
- [hledger-lib](http://hackage.haskell.org/package/hledger-lib),
  [hledger](http://hackage.haskell.org/package/hledger),
  [an example](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html)
  Haskell
- [hledger-api](http://editor.swagger.io/#/?import=demo.hledger.org/api/swagger.json&no-proxy),
  [examples](https://github.com/simonmichael/hledger/tree/master/hledger-api/examples)
  JSON
- [node-hledger](https://github.com/rstacruz/node-hledger) JavaScript


</div>

</div>
<div class="row" style="text-align:center;">

<hr>
\(c) 2016-2018 [Simon Michael](http://joyful.com) & contributors |
Send updates via [github](https://github.com/plaintextaccounting/plaintextaccounting.github.io)
([latest changes](https://github.com/plaintextaccounting/plaintextaccounting.github.io/commits/master))

</div>
