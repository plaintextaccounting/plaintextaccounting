<!-- CSS: http://getskeleton.com -->
<!-- markdown: http://pandoc.org/README.html -->

<div class="row" style="padding-top: 15%">

<h1 style="text-align:center; margin-bottom:5%;">Plain Text Accounting</h1>

<div class="four columns">

### accounting

**accounting** is tracking the flow of valuable commodities, such as money or time.
It clarifies activity, priorities, obligations, opportunities.
It can reduce stress and even be enjoyable.

**double-entry bookkeeping** is a process for doing this reliably.
For every movement of value (a **transaction**), both the source and destination are recorded.
Simple arithmetic invariants help prevent errors.

In traditional double-entry bookkeeping, value at any point in time is tracked in various **accounts**, classified as
**asset** (owned), **liability** (owed) or **equity** (invested).
Two more classifications track changes during some period: **revenues** (inflows) and **expenses** (outflows).

Transactions consist of **debits** (increases to asset or expense
accounts, or decreases to liability or equity accounts) or **credits**
(decreases to asset or expense accounts, or increases to liability or
equity accounts).

</div>
<div class="four columns">

### ..with text

**Ledger** and the other **Ledger-likes** inspired by it are minimalist software tools for efficient double-entry accounting.
This site introduces them and their way of doing things.

Accounting data is valuable;
we want to know that it will be accessible for ever - even without software.
We want to know when it changes, and revision-control it.
We want to search and manipulate it efficiently.
So, we store it as human-readable **plain text**.

We simplify debits and credits by using **signed numbers** instead -
positive for inflows to an account, negative for outflows from an account.

We define arbitrary **account hierarchy** to suit our needs.
This scales smoothly from simple to complex scenarios, and from high-level overview to fine detail.

Ledger-likes are, at least in part, **command-line** tools.
This makes them efficient to use and very **scriptable** and flexible.

Ledger-likes also, at their core, tend towards **functional operation**:
they read the input data without changing it, and output a report.
This simplicity makes them easy to understand and rely on.

</div>
<div class="three columns">

### questions ?

**who is this for&nbsp;?**\
Techies, power users, and do-it-yourself-ers,
at least for now.
If you need a rich GUI and lots of structure, you may prefer a more traditional GUI tool.

**what are the alternatives&nbsp;?**\
GNUCash, Grisbi, KMyMoney or other FOSS tools, proprietary tools like Quicken/Quickbooks, online tools like Xero, spreadsheets, paper accounting.

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
<div class="row">

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

##### data import

- [icsvledger](https://launchpad.net/csv2ledger) CSV to journal converter
- [ledger-autosync](https://gitlab.com/egh/ledger-autosync) convert OFX to journal, deduplication, bank download
- [reckon](https://github.com/cantino/reckon) smart interactive/non-interactive CSV to journal converter

##### editing

- [ledger-mode](http://ledger-cli.org/3.0/doc/ledger-mode.html) for Emacs
- [vim-ledger](https://github.com/ledger/vim-ledger) for VIM
- [language-ledger](https://atom.io/packages/language-ledger) for Atom
- [ledger](https://atom.io/packages/ledger) for Atom
- [sublime-ledger-syntax](https://github.com/moeffju/sublime-ledger-syntax) for Sublime Text/TextMate
- [Ledger.tmbundle](https://github.com/lifepillar/Ledger.tmbundle) for TextMate

##### time tracking

- [org2tc](https://github.com/jwiegley/org2tc) org to timeclock converter
- [taskwarrior](http://taskwarrior.org) todo list manager, some *ledger integration for time reporting
- [tim](https://github.com/MatthiasKauer/tim) time tracking tool using hledger for reports

##### UI, console

- [hledger-iadd](https://github.com/hpdeifel/hledger-iadd) curses UI for data entry
- [hledger-ui](http://hackage.haskell.org/package/hledger-ui) curses UI for browsing

##### UI, GUI

- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) GUI tools and python library front end for Ledger

##### UI, web

- [fava](https://github.com/aumayr/beancount-web) web UI for browsing beancount data
- [hledger-api](https://github.com/simonmichael/hledger/tree/master/hledger-api) JSON API for *ledger data, can also serve static files
- [hledger-web](http://hackage.haskell.org/package/hledger-web) web UI for browsing, data entry
- [ledger-dashboard](https://github.com/Ikke/ledger-dashboard) web UI for browsing, data entry
- [ledger-web](https://github.com/slashdotdash/node-ledger-web) web UI for browsing
- sandstorm.io web app hosting, eg for [hledger-web](https://apps.sandstorm.io/app/8x12h6p0x0nrzk73hfq6zh2jxtgyzzcty7qsatkg7jfg2mzw5n90)

</div>
<div class="five columns u-pull-right">

### docs

- [Ledger manuals](http://ledger-cli.org/docs.html)
- [Ledger wiki](https://github.com/ledger/ledger/wiki)
- ["Getting Started With Ledger" book](https://github.com/rolfschr/GSWL-book)
- [hledger docs](http://hledger.org), [more docs](http://hledger.org/more-docs.html)
- [Beancount docs](http://furius.ca/beancount/doc/index)
<!-- - [Abandon wiki](https://github.com/hrj/abandon/wiki) -->
- [\@LedgerTips](https://twitter.com/LedgerTips)

### common tasks

##### data entry

##### reconciling

##### reporting

##### forecasting

##### budgetting

##### shared expenses

##### tax reporting

##### time tracking

- [on integrating timelog and journal](https://github.com/anarcat/ledger-timetracking)

##### import and export

#####

</div>

</div>
<div class="row" style="text-align:center;">

<hr>
Send updates via the
[github repo](https://github.com/simonmichael/plaintextaccounting)
or
[etherpad](https://oasis.sandstorm.io/shared/UAYLwagGI0a2pIMg9Hhv74K04nbuxanXiS5ZtBV6NF-)

</div>

