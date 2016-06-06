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
<div class="three columns">

### … with text

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
<div class="three columns">

### questions ?

**who is this for ?**\
Techies, power users, and do-it-yourself-ers, for now.
If you need a complete GUI providing lots of guidance, you may prefer to use something else.

**must I edit text and type cryptic commands ?**\
Not entirely!
"Plain Text Accounting" is a broad description, referring mainly to the data format.
We don't object to additional **[GUIs](#ui-console)**, and they are coming.

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
<div class="two columns" style="white-space:nowrap;">

### read more

[Ledger-likes](#ledger-likes)  
[related tools](#related-tools)  
&nbsp;&nbsp;[data import/conversion](#data-importconversion)  
&nbsp;&nbsp;[editor support](#editor-support)  
&nbsp;&nbsp;[time logging](#time-logging)  
&nbsp;&nbsp;[UI, console](#ui-console)  
&nbsp;&nbsp;[UI, curses](#ui-curses)  
&nbsp;&nbsp;[UI, GUI](#ui-gui)  
&nbsp;&nbsp;[UI, web](#ui-web)  
&nbsp;&nbsp;[API](#api)  
[discussion](#discussion)  
&nbsp;&nbsp;[mail lists/IRC](#mail-listsirc)  
&nbsp;&nbsp;[stack exchange](#stack-exchange)  
&nbsp;&nbsp;[hacker news](#hacker-news)  
&nbsp;&nbsp;[reddit](#reddit)  
&nbsp;&nbsp;[twitter](#twitter)  
[docs](#docs)  
&nbsp;&nbsp;[concepts](#concepts)  
&nbsp;&nbsp;[comparisons](#comparisons)  
&nbsp;&nbsp;[online books](#online-books)  
&nbsp;&nbsp;[presentations](#presentations)  
&nbsp;&nbsp;[videos](#videos)  
&nbsp;&nbsp;[articles](#articles)  
&nbsp;&nbsp;[blog posts](#blog-posts)  
&nbsp;&nbsp;[inspiration](#inspiration)  
[common tasks](#common-tasks)  
&nbsp;&nbsp;[choosing accounts](#choosing-accounts)  
&nbsp;&nbsp;[entering data](#entering-data)  
&nbsp;&nbsp;[importing](#importing)  
&nbsp;&nbsp;[reconciling](#reconciling)  
&nbsp;&nbsp;[reporting](#reporting)  
&nbsp;&nbsp;[budgeting](#budgeting)  
&nbsp;&nbsp;[forecasting](#forecasting)  
&nbsp;&nbsp;[invoicing](#invoicing)  
&nbsp;&nbsp;[multiple currencies](#multiple-currencies)  
&nbsp;&nbsp;[shared expenses](#shared-expenses)  
&nbsp;&nbsp;[taxes](#taxes)  
&nbsp;&nbsp;[time tracking](#time-tracking)  
&nbsp;&nbsp;[inventory tracking](#inventory-tracking)  
&nbsp;&nbsp;[non-profit accounting](#non-profit-accounting)  
&nbsp;&nbsp;[exporting](#exporting)  
&nbsp;&nbsp;[API access](#api-access)  

</div>

</div>

### Ledger-likes

<!-- http://pandoc.org/README.html#tables -->
<style>
th, td { border:none; padding-top:0; }
</style>
|
|---------------------------------------------------|--------------|---------------------------------------------------------------------------------------------------------------:|-------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------:
| Project, start&nbsp;date                          | Last release | Code, committers                                                                                               | Mail list, size                                                                                                                           | IRC, size
| **[Ledger](http://ledger-cli.org)**, 2003         | 2016/01      | [C++](https://github.com/ledger/ledger)          101 <!-- ([openhub](https://www.openhub.net/p/ledger)) -->    | [ledger-cli](http://list.ledger-cli.org/) <!-- ([gmane](http://dir.gmane.org/gmane.comp.finance.ledger.general)) -->                  650 | [#ledger](http://webchat.freenode.net/?channels=ledger&randomnick=1)        75
| **[hledger](http://hledger.org)**, 2007           | 2015/10      | [Haskell](http://code.hledger.org)                30 <!-- ([openhub](https://www.openhub.net/p/hledger)) -->   | [hledger](http://list.hledger.org/) <!-- ([gmane](http://dir.gmane.org/gmane.comp.finance.ledger.hledger)) -->                         75 | [#hledger](http://webchat.freenode.net/?channels=hledger&randomnick=1)      30
| **[Beancount](http://furius.ca/beancount)**, 2008 |              | [Python](http://bitbucket.org/blais/beancount/)    8 <!-- ([openhub](https://www.openhub.net/p/beancount)) --> | [beancount](https://groups.google.com/forum/#!forum/beancount) <!-- ([gmane](http://dir.gmane.org/gmane.comp.finance.beancount)) -->   70 | [#beancount](http://webchat.freenode.net/?channels=beancount&randomnick=1)   5
| Abandon, 2013                                     | 2015/11      | [Scala](https://github.com/hrj/abandon)            5 <!-- ([openhub](https://www.openhub.net/p/abandon)) -->   |                                                                                                                                           |
| Ledger in Go, 2013                                |              | [Go](https://github.com/howeyc/ledger)             2                                                           |                                                                                                                                           |

Inactive:

|
|---------------------------------------------------|--------------|---------------------------------------------------------------------------------------------------------------:|-------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------:
| Project, start&nbsp;date                          | Last release | Code
| uledger, 2015 | | [Python](https://github.com/danpat/uledger)
| pacioli, 2013 | | [Python](https://github.com/mdipierro/pacioli)
| ledger.pl, 2013 | | [Perl](https://github.com/dimonf/ledger.pl)
| [Penny](http://massysett.github.io/penny/), 2012 | 2014 | [Haskell](https://github.com/massysett/penny)
| [UMM](http://hackage.haskell.org/package/UMM), 2009 | 2010 | Haskell
| cl-ledger, 2007 | | [Common Lisp](https://github.com/ledger/cl-ledger)
| sm-Ledger, 2007 | | [Squeak Smalltalk](https://gist.github.com/simonmichael/bb611dba654ccb1573e1)

<!-- [compare at openhub](https://www.openhub.net/p/_compare?project_0=Ledger&project_1=hledger&project_2=beancount) -->

<div class="row">

<div class="seven columns">

### related tools

- [hledger-diff](http://hackage.haskell.org/package/hledger-diff) report differing transactions between two journals
- [hledger-interest](http://hackage.haskell.org/package/hledger-interest) generate *ledger interest transactions
- [hledger-irr](http://hackage.haskell.org/package/hledger-irr) calculate an account's internal rate of return over time
- [ledger-get-prices](https://github.com/nathankot/ledger-get-prices) download market prices
- [ledger-tutorials](https://github.com/tlvince/ledger-tutorials) convert Pete Keen's tutorials to ebook format

#### data import/conversion

- [banks2ledger](https://github.com/tomszilagyi/banks2ledger) - CSV to *ledger converter
- bean-identify, bean-extract, bean-file - Beancount built-in tools
- [beancount-import](https://github.com/jbms/beancount-import) CSV to beancount converter (curses)
- [gnucash2ledger.py](https://github.com/MatzeB/pygnucash/blob/master/gnucash2ledger.py) GNUCash to *ledger conversion
- [icsvledger](https://launchpad.net/csv2ledger) CSV to *ledger converter
- [ledger-autosync](https://gitlab.com/egh/ledger-autosync) OFX download, OFX to *ledger conversion, deduplication
- [ledger2beancount.py](https://gist.github.com/travisdahlke/71152286b0a8826249fe) *ledger to beancount converter
- [ledgerhub](http://furius.ca/ledgerhub/) fetch prices, extract entries, convert various formats to beancount (? deprecated)
- [plaid2text](https://github.com/madhat2r/plaid2text) Plaid API to *ledger/beancount download/conversion
- [qb2ledger](https://gist.github.com/genegoykhman/3765100) QuickBooks General Journal CSV to *ledger converter
- [QIFtoLedger](https://github.com/Kolomona/QIFtoLedger) (Bank of America's) QIF to *ledger converter
- [reckon](https://github.com/cantino/reckon) smart interactive/non-interactive CSV to *ledger converter
- [total_recall](https://github.com/eval/total_recall) CSV to *ledger converter

#### editor support

- [beancount-mode](https://bitbucket.org/blais/beancount/src/1e21b27c0b0ecf2bf2e1a2cd5c3da3b1befc8152/src/elisp/beancount.el?at=default&fileviewer=file-view-default) for Emacs
- [hledger-mode](https://github.com/narendraj9/dotfiles/tree/master/.emacs.d/packages/rest/hledger-mode) for Emacs
- [ledger-mode](http://ledger-cli.org/3.0/doc/ledger-mode.html) for Emacs (also works for hledger, beancount etc.)
- [vim-beancount](https://github.com/nathangrigg/vim-beancount) for VIM
- [vim-ledger](https://github.com/ledger/vim-ledger) for VIM
- [language-ledger](https://atom.io/packages/language-ledger) for Atom
- [ledger](https://atom.io/packages/ledger) for Atom
- [sublime-ledger-syntax](https://github.com/moeffju/sublime-ledger-syntax) for Sublime Text/TextMate
- [Ledger.tmbundle](https://github.com/lifepillar/Ledger.tmbundle) for TextMate

#### time logging

- [org2tc](https://github.com/jwiegley/org2tc) org to timeclock converter
- [on-modify.timetrack.py](https://gist.github.com/wbsch/d977b0ac29aa1dfa4437) taskwarrior hook for timeclock output
- [tim](https://github.com/MatthiasKauer/tim) time logging and reporting tool using hledger

#### UI, console

- [bean-add](https://github.com/simon-v/bean-add) interactive transaction entry
- [hledger add](http://hledger.org/manual.html#add) interactive transaction entry (built-in command)
- [ledger-add](https://github.com/Tagirijus/ledger-add) interactive transaction entry
- [ledger-plot](https://github.com/Tagirijus/ledger-plot) interactive helper for making charts with GNUplot
- [ledger xact](http://ledger-cli.org/3.0/doc/ledger3.html#xact) history-aware transaction generator (built-in command)

#### UI, curses

- [hledger-iadd](https://github.com/hpdeifel/hledger-iadd) curses UI for transaction entry
- [hledger-ui](http://hackage.haskell.org/package/hledger-ui) curses UI for browsing
  ([demo](https://asciinema.org/a/29665))
- [regdel](https://github.com/guillaumechereau/regdel) curses UI for browsing (Ledger)

#### UI, GUI

- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) GTK GUI tools + helper library (Python)

#### UI, web

- [fava](https://github.com/aumayr/beancount-web) web UI for browsing (Python, beancount, [demo](http://fava.pythonanywhere.com/))
- [hledger-web](http://hackage.haskell.org/package/hledger-web) web UI for browsing, data entry
  (Haskell, [demo](http://demo.hledger.org))
- [hledger-web on Sandstorm](https://apps.sandstorm.io/app/8x12h6p0x0nrzk73hfq6zh2jxtgyzzcty7qsatkg7jfg2mzw5n90) free web instances in a few clicks
- [Ledger Web](https://github.com/peterkeen/Ledger-Web) web-based, postgres-backed reporting system
- [ledger-dashboard](https://github.com/Ikke/ledger-dashboard) web UI for browsing, data entry (Python)
- [ledger-web](https://github.com/slashdotdash/node-ledger-web) web UI for browsing (JavaScript)
- [ledgible](https://github.com/lipidity/ledgible) web UI for browsing, data entry (Python, [demo](https://lipidity.com/cgi/ledgible/app.py/))
- [WealthPulse](https://github.com/readysetmark/WealthPulse) web UI for browsing, price fetching (F#, Ledger)

#### API

- [hledger-api](https://github.com/simonmichael/hledger/tree/master/hledger-api) JSON API + static file server (Haskell)
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) extends Ledger's python library (Python)
- [node-hledger](https://github.com/rstacruz/node-hledger) Node.js API (JavaScript)
- [sassetti](https://github.com/jvasile/sassetti) command-line wrapper (Common Lisp)

<!--
other console/curses tools

- [Taskwarrior](http://taskwarrior.org) modern task manager
- [add / tapecalc](http://invisible-island.net/add/add.html) dynamically updating tape calculator
- [sc](http://www.linuxjournal.com/article/10699) spreadsheet
- [sc-im](https://github.com/andmarti1424/sc-im) update of sc
- [GNU PEM & Oleo](http://www.examiner.com/article/gnu-pem-oleo-two-great-command-line-text-based-financial-accounting-apps) expenses manager, spreadsheet
- the [org empire](http://orgmode.org)...
-->

<br>

### discussion

<div class="row">
<div class="five columns u-pull-left">
#### mail lists/IRC
</div>

[see above](#ledger-likes)

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

[2009](https://news.ycombinator.com/item?id=872244),
[2013](https://news.ycombinator.com/item?id=5233255),
[2014](https://news.ycombinator.com/item?id=7707262),
[2014](https://news.ycombinator.com/item?id=8806056), 
[2015](https://news.ycombinator.com/item?id=10510394),
[2016](https://news.ycombinator.com/item?id=11164330),
[2016](https://news.ycombinator.com/item?id=11366693)
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

[/r/ledger](https://www.reddit.com/r/ledger/)

</div>

<div class="row">
<div class="five columns u-pull-left">
#### twitter
</div>

[\@LedgerTips](https://twitter.com/LedgerTips),
[#plaintextaccounting](https://twitter.com/hashtag/plaintextaccounting),
[#ledgercli](https://twitter.com/hashtag/ledgercli),
[#hledger](https://twitter.com/hashtag/hledger),
[#beancount](https://twitter.com/hashtag/beancount)

<!-- twitter widget -->
<div style="margin:0 15% 0 0;">
<!-- <b>Tweets (#plaintextaccounting OR #ledgercli OR #hledger OR #beancount):</b> -->
<a class="twitter-timeline" data-chrome="noheader" data-dnt="true" href="https://twitter.com/search?q=%23plaintextaccounting%20OR%20%23ledgercli%20OR%20%23hledger%20OR%20%23beancount%20-RT%20-%23TheJoker" data-widget-id="711933503055667200">Tweets about #plaintextaccounting OR #ledgercli OR #hledger OR #beancount -RT -#TheJoker</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>

</div>

</div>
<div class="five columns u-pull-right">

### docs

- [Ledger manuals](http://ledger-cli.org/docs.html)
- [Ledger wiki](https://github.com/ledger/ledger/wiki)
- [The Great Cheatsheet for Ledger CLI](http://ricostacruz.com/cheatsheets/ledger.html)
- [hledger docs](http://hledger.org/docs.html)
- [Beancount docs](http://furius.ca/beancount/doc/index) (or [sphinx version with API docs](http://aumayr.github.io/beancount-docs-static/))
- [Beancount Syntax Cheatsheet](http://furius.ca/beancount/doc/cheatsheet)

#### concepts

- [Accounting docs](http://hledger.org/more-docs.html#accounting)
- [account structure (Ledger vs accounting)](http://thread.gmane.org/gmane.comp.finance.ledger.general/7398/focus=7417) 2015
<!--
- http://money.stackexchange.com/questions/47561/simplified-version-of-double-entry-bookkeeping-for-personal-and-business-finance
-->

#### comparisons

- [Quick Reference for the Ledger-Likes](quickref/)
- [Matthias Kauer: Command Line Accounting – A look at the various ledger ports](http://www.matthiaskauer.com/2015/08/command-line-accounting-a-look-at-the-various-ledger-ports/) 2015
- [Another Ledger user's perspective](http://thread.gmane.org/gmane.comp.finance.beancount/227) on Beancount 2015
- [Martin Blais: A Comparison of Beancount and Ledger](https://docs.google.com/document/d/1dW2vIjaXVJAf9hr7GlZVe3fJOkM-MtlVjvCO1ZpNLmg/edit?pli=1#heading=h.2ax1dztqboy7) 2014
- [ledger vs hledger vs beancount or how to choose the right cli client](http://thread.gmane.org/gmane.comp.finance.ledger.general/6563) 2014
- [Simon Michael: hledger & Ledger](http://hledger.org/faq.html#hledger-ledger) 2014
- [Omari Norman: Why Penny](http://massysett.github.io/penny/why-penny.html) 2013
- [Fabrice Niessen: Why Ledger?](http://www.mygooglest.com/fni/ledger.html) 2010

#### online books

- [Getting Started With Ledger](https://github.com/rolfschr/GSWL-book/releases/latest) 2016

#### presentations

- [Ledger CLI Accounting for Geeks](http://blog.loadingdata.nl/accounting-for-geeks/) 2014
- [Hacking Your Finances for Fun and Profit](http://matthewturland.com/slides/ledger-stats/) 2013
- [Ledger and Text based Accounting](http://www.adamsinfoserv.com/AISTWiki/pub/AIS/Presentations/Ledger.pdf) 2009

#### videos

- [Conquering Your Finances with Emacs and Ledger](https://www.youtube.com/watch?v=cjoCNRpLanY) 2016
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

#### articles

- [Pete Keen's Program your Finances tutorials](https://www.petekeen.net/finance) 2012
- [An Alternative to QuickBooks](http://goykhman.ca/gene/blog/2012/2012-09-23-an-alternative-to-quickbooks.html) 2012
- [The accounting quest: Ledger](http://lwn.net/Articles/501681/) 2012
- [Ledger, the bran muffin of accounting tools](http://archive09.linux.com/feature/58307) 2006

#### blog posts

- [Managing my personal finances with beancount](https://alexjj.com/finance/2016/02/27/managing-personal-finances-with-beancount/) 2016
- [Finding duplicate accounts in Hledger journals](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html) 2015
- [Matthew Turland: Ledger basics and habits](http://matthewturland.com/2014/03/29/ledger-basics-and-habits/) 2014
- [Simon Michael: What is hledger ?](http://joyful.com/blog/2013-10-20-what-is-hledger.html) 2013
- [Simon Michael: More on ledger](http://joyful.com/blog/2013-10-19-more-on-ledger.html) 2013
- [Simon Michael: Introducing hledger!](http://joyful.com/blog/2013-10-18-introducing-hledger.html) 2013
- [Joey Hess: hledger](http://joeyh.name/blog/entry/hledger) 2012
- [Sascha Welter: Doing my own accounting](http://betabug.ch/blogs/ch-athens/1221) 2011
- [Clint Adams: Accounting at SFLC](http://www.softwarefreedom.org/blog/2011/sep/07/accounting-at-sflc/) 2011
- [Christine Spang: [h]ledger rocks my world](http://blog.spang.cc/posts/hledger_rocks_my_world/) 2010
<!-- - [Roman Cheplyaka: hledger](http://ro-che.blogspot.com/2010/02/hledger.html) 2010 -->
  
#### inspiration

- [Accounting for Dragons](http://podcastle.org/2009/10/09/pc-miniature-38-accounting-for-dragons)
- [David Mitchell: Personal Debts](https://www.youtube.com/watch?v=9zyp8RF-Fyw)

### common tasks

#### choosing accounts

- [sample chart of accounts (freelancer)](https://gist.github.com/simonmichael/9936299)
- [Beancount Cookbook: Account Naming Conventions](https://docs.google.com/document/d/1Tss0IEzEyAPuKSGeNsfNgb0BfiW2ZHyP5nCFBW1uWlk/view#heading=h.tu0f1kydrpgn)
- [Mint: Ways to Categorize Your Spending](https://www.mint.com/mint-categories)

#### entering data

- [hledger step by step: basic data entry](http://hledger.org/step-by-step.html#basic-data-entry-reporting)
- ledger-mode:\
  `C-c C-a` add a transaction,\
  `C-c C-b` amount calculator,\
  `C-c C-c`/`C-c C-e` toggle cleared
- [Beancount: Command Line Accounting Cookbook](https://docs.google.com/document/d/1Tss0IEzEyAPuKSGeNsfNgb0BfiW2ZHyP5nCFBW1uWlk)
- [hledger: How to use another account separator character](http://hledger.org/how-to-use-another-account-separator-character.html)
- [Accounting bookkeeping entries](http://hledger.org/more-docs.html#accounting)
- [UI tools](#ui-console)

#### importing

- [Ledger: The convert command](http://www.ledger-cli.org/3.0/doc/ledger3.html#The-convert-command)
- [hledger: CSV files](http://hledger.org/manual.html#csv)
- [hledger: How to read CSV files](http://hledger.org/how-to-read-csv-files.html)
- [Importing External Data in Beancount](http://furius.ca/beancount/doc/ingest)
- [Fetching Prices in Beancount](https://docs.google.com/document/d/1thYRAMell_QT1Da1F_laprSs6BlROZjyK_h3V8qHW9c)
- [Payment matching done right](https://tomszilagyi.github.io/payment-matching/)
- [import tools](#data-import)

#### reconciling

- ledger-mode: `C-c C-r`

#### reporting

- [example queries for Beancount](http://aumayr.github.io/beancount-sql-queries/)
- [hledger: How to use account aliases](http://hledger.org/how-to-use-account-aliases.html)

#### budgeting

- [Ledger: Budgeting](http://www.ledger-cli.org/3.0/doc/ledger3.html#Budgeting)
- [Program Your Finances: Envelope Budgeting](https://www.petekeen.net/program-your-finances-envelope-budgeting)
- [envelope budgeting with plain transactions](https://gist.github.com/simonmichael/a1addcb652da4e78b183)
- [Weaving a budget with Org & ledger](http://orgmode.org/worg/org-tutorials/weaving-a-budget.html)
- [Using Org for Ledger Reports and Budget](http://alan.petitepomme.net/tips/ledger_and_org.html)

#### forecasting

- [Ledger: Forecasting](http://www.ledger-cli.org/3.0/doc/ledger3.html#Forecasting)
- [Notes on Installing and Using ledger on NetBSD](http://atomicules.co.uk/2015/06/20/Notes-on-installing-and-using-Ledger-on-NetBSD.html) and forecasting

#### invoicing

- [invoicing entries](https://gist.github.com/simonmichael/986a65106a9db1f8bd68)

#### multiple currencies

- [Peter Selinger: Tutorial on multiple currency accounting](http://www.mscs.dal.ca/~selinger/accounting/tutorial.html)
- [ledger-currencies tutorial](https://github.com/mikekchar/ledger-currencies)
- [on currency vs commodity valuation](https://groups.google.com/d/msg/ledger-cli/dc6F-HvZOyE/5IuoxzMOBwAJ)

#### shared expenses

- [Sharing Expenses in Beancount](https://docs.google.com/document/d/1FRcJqUfeAMQO6KjG94w6rF7VajMGJaFplmF1Wu0rCHY/edit#heading=h.yshh8f17jbdb) and others
- [Keeping (financial) score with Ledger](http://sachachua.com/blog/2014/11/keeping-financial-score-ledger/)
- [Program Your Finances: Automated Transactions](https://www.petekeen.net/program-your-finances-automated-transactions) for tracking reimbursables
- [How to keep control of shared expenses inside marriage ?](http://money.stackexchange.com/questions/7101/how-to-keep-control-of-shared-expenses-inside-marriage)

#### taxes

- [Another Ledger user's perspective](http://thread.gmane.org/gmane.comp.finance.beancount/227/focus=237) some tax discussion
- [hledger: How to use account aliases](http://hledger.org/how-to-use-account-aliases.html) for tax reporting

#### time tracking

- [Ledger: Time Keeping](http://ledger-cli.org/3.0/doc/ledger3.html#Time-Keeping)
- [hledger: Timeclock files](http://hledger.org/manual.html#timeclock)
- [hledger: Timedot files](http://hledger.org/manual.html#timedot)
- [Timetracking and billing with (h)ledger](https://github.com/anarcat/ledger-timetracking)
- [time tracking tools](#time-tracking)

#### inventory tracking

- [Inventory Booking](http://furius.ca/beancount/doc/proposal-booking), [discussion](https://groups.google.com/forum/#!searchin/ledger-cli/inventory/ledger-cli/aQvbjTZa7HE/x3KNPteJWPsJ)
- [Accounting Savvy for Business Owners ch. 8](http://www.amazon.com/Accounting-Savvy-Business-Owners-Essentials/dp/193292518X)

#### non-profit accounting

- [Non-Profit Accounting With Ledger CLI, A Tutorial](https://github.com/conservancy/npo-ledger-cli/blob/master/npo-ledger-cli-tutorial.md)

#### exporting

- [Ledger: The csv command](http://www.ledger-cli.org/3.0/doc/ledger3.html#The-csv-command)
- [hledger: CSV output](http://hledger.org/manual.html#csv-output)
- [Beancount: Exporting Your Portfolio](https://docs.google.com/document/d/1mNyE_ONuyEkF_I2l6V_AoAU5HJgI654AOBhHsnNPPqw)

#### API access

- [Ledger: Extending with Python](http://ledger-cli.org/3.0/doc/ledger3.html#Extending-with-Python)

- [Ledger Python 3 Support](https://groups.google.com/forum/#!topic/ledger-cli/C99w-79Jq8o) Python

- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) Python

- [hledger-lib](http://hackage.haskell.org/package/hledger-lib),
  [hledger](http://hackage.haskell.org/package/hledger),
  [example](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html)
  Haskell

- [hledger-api](http://editor.swagger.io/#/?import=demo.hledger.org/api/swagger.json&no-proxy),
  [examples](https://github.com/simonmichael/hledger/tree/master/hledger-api/examples)
  JSON

- [node-hledger](https://github.com/rstacruz/node-hledger) JavaScript


</div>

</div>
<div class="row" style="text-align:center;">

<hr>
Send updates via the
[github repo](https://github.com/plaintextaccounting/plaintextaccounting.github.io)
([changes](https://github.com/plaintextaccounting/plaintextaccounting.github.io/commits/master))

</div>

