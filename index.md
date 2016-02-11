<!-- CSS: http://getskeleton.com -->
<!-- markdown: http://pandoc.org/README.html -->

<div class="row" style="padding-top: 15%">

<h1 style="text-align:center; margin-bottom:5%;">Plain Text Accounting</h1>

<div class="three columns">

### concepts

accounting and double-entry bookkeeping

Ledger and the Ledger-likes

</div>
<div class="five columns">

### characteristics

plain text data format

signed numbers instead of debit and credit
<!--
Business transactions are events that have a monetary impact on the
financial statements of an organization. When accounting for these
transactions, we record numbers in two accounts, where the debit
column is on the left and the credit column is on the right.

A debit is an accounting entry that either increases an asset or
expense account, or decreases a liability or equity account. It is
positioned to the left in an accounting entry.

A credit is an accounting entry that either increases a liability or
equity account, or decreases an asset or expense account.

--[Debits and Credits](http://www.accountingtools.com/debits-and-credits)
http://www.accountingcoach.com/debits-and-credits/explanation
-->

free-form account hierarchy

functional operation

command-line scriptable

</div>
<div class="three columns">

### why ?

why we exist

who are we for

alternatives

</div>

</div>
<div class="row">

<div class="seven columns">

### Ledger-likes

<!-- http://pandoc.org/README.html#tables -->
| | |
|---------------------------------------------------|----------------------------------------------------------|-|
| [Ledger](http://ledger-cli.org)                   | the original. C++ <!-- Very fast, advanced features. --> | [openhub](https://www.openhub.net/p/ledger) |
| [hledger](http://hledger.org)                     | Haskell <!-- Easy to use, multi-column reports, multiple UIs. --> | [openhub](https://www.openhub.net/p/hledger) |
| [Beancount](http://furius.ca/beancount)           | Python <!-- Accounting correctness aids, extensible. --> | [openhub](https://www.openhub.net/p/beancount) |
| [Abandon](https://github.com/hrj/abandon)         | Scala | [openhub](https://www.openhub.net/p/abandon) |
| [Ledger in Go](https://github.com/howeyc/ledger)  | Go | |

<!-- | Inactive:                                         | | | -->
<!-- | [cl-ledger](https://github.com/ledger/cl-ledger)  | Common Lisp | | -->
<!-- | [ledger.pl](https://github.com/dimonf/ledger.pl)  | Perl | | -->
<!-- | [penny](https://github.com/massysett/penny)       | Haskell | | -->
<!-- | [UMM](http://hackage.haskell.org/package/UMM)     | Haskell | | -->

Inactive:

- [cl-ledger](https://github.com/ledger/cl-ledger)&nbsp;Common Lisp
- [ledger.pl](https://github.com/dimonf/ledger.pl)&nbsp;Perl
- [penny](https://github.com/massysett/penny)&nbsp;Haskell
- [UMM](http://hackage.haskell.org/package/UMM)&nbsp;Haskell

<!-- [compare](https://www.openhub.net/p/_compare?project_0=Ledger&project_1=hledger&project_2=beancount) -->

### related tools

- [fava](https://github.com/aumayr/beancount-web) web UI for browsing beancount data
- [hledger-api](https://github.com/simonmichael/hledger/tree/master/hledger-api) JSON API for *ledger data, can also serve static files
- [hledger-diff](http://hackage.haskell.org/package/hledger-diff) report differing transactions between two journals
- [hledger-iadd](https://github.com/hpdeifel/hledger-iadd) curses UI for data entry
- [hledger-interest](http://hackage.haskell.org/package/hledger-interest) generate *ledger interest transactions
- [hledger-irr](http://hackage.haskell.org/package/hledger-irr) calculate an account's internal rate of return over time
- [hledger-ui](http://hackage.haskell.org/package/hledger-ui) curses UI for browsing
- [hledger-web](http://hackage.haskell.org/package/hledger-web) web UI for browsing and data entry
- [icsvledger](https://launchpad.net/csv2ledger) CSV to journal converter
- [ledger-autosync](https://gitlab.com/egh/ledger-autosync) convert OFX to journal, deduplication, bank download
- [ledger-dashboard](https://github.com/Ikke/ledger-dashboard) web UI for browsing
- [ledger-web](https://github.com/slashdotdash/node-ledger-web) web UI for browsing
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) GUI tools and python library front end for Ledger
- [reckon](https://github.com/cantino/reckon) smart interactive/non-interactive CSV to journal converter
- sandstorm.io web app hosting, eg for [hledger-web](https://apps.sandstorm.io/app/8x12h6p0x0nrzk73hfq6zh2jxtgyzzcty7qsatkg7jfg2mzw5n90)
- [taskwarrior](http://taskwarrior.org) todo list manager, some *ledger integration for time reporting
- [tim](https://github.com/MatthiasKauer/tim) time tracking tool using hledger for reports
    
</div>
<div class="five columns u-pull-right">

### docs

- [Ledger manuals](http://ledger-cli.org/docs.html)
- [Ledger wiki](https://github.com/ledger/ledger/wiki)
- [Getting Started With Ledger book](https://github.com/rolfschr/GSWL-book)
- [hledger's more docs](http://hledger.org)
- [Beancount docs](http://furius.ca/beancount/doc/index)
<!-- - [Abandon wiki](https://github.com/hrj/abandon/wiki) -->

### discussion

### common tasks

#### data entry

#### reconciling

#### reporting

#### forecasting

#### budgetting

#### shared expenses

#### 

#### 

</div>

</div>
<div class="row" style="text-align:center;">

<hr>
Send updates via the [github repo](https://github.com/simonmichael/plaintextaccounting) or [notes page](https://oasis.sandstorm.io/shared/UAYLwagGI0a2pIMg9Hhv74K04nbuxanXiS5ZtBV6NF-)

</div>

