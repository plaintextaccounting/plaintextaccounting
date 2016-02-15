<!-- CSS: http://getskeleton.com -->
<!-- markdown: http://pandoc.org/README.html -->

<div class="row" style="padding-top: 15%">

<h1 style="text-align:center; margin-bottom:5%;">Plain Text Accounting</h1>

<div class="three columns">

### accounting..

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
<div class="five columns">

### with Ledger-likes

**Ledger** and the other **Ledger-likes** which followed it are minimalist software tools for efficient double-entry accounting.
This site introduces them and their way of doing things.

Accounting data is valuable;
we want to know that it will be accessible for ever - even without software.
We want to know when it changes, and revision-control it.
We want to search and manipulate it efficiently.
So, we store it as human-readable **plain text**.

We simplify by using **signed numbers** instead of debits and credits -
positive for inflows to an account, negative for outflows from an account.

We define arbitrary **account hierarchy** to suit our needs.
This scales smoothly from simple to complex scenarios, and from high-level overview to fine detail.

Ledger-likes are, at least in part, **command-line** tools.
This makes them efficient to use and very **scriptable** and flexible.

Ledger-likes also, at their core, tend towards **functional operation**:
they read the input data without changing it, and output a report.
This simplicity makes them easy to understand and to rely on.

</div>
<div class="three columns">

### why ?

why we exist

who are we for

alternatives

why is this better than QuickBooks ?

what if my accountant only uses QuickBooks ?

can I use this to do my taxes ?

</div>

</div>
<div class="row">

<div class="seven columns">

### Ledger-likes

<!-- http://pandoc.org/README.html#tables -->
| | |
|---------------------------------------------------|----------------------------------------------------------|-|
| [Ledger](http://ledger-cli.org)                   | [C++](https://www.openhub.net/p/ledger). The original. <!-- Very fast, advanced features. --> | |
| [hledger](http://hledger.org)                     | [Haskell](https://www.openhub.net/p/hledger) <!-- Easy to use, multi-column reports, multiple UIs. --> |  |
| [Beancount](http://furius.ca/beancount)           | [Python](https://www.openhub.net/p/beancount) <!-- Accounting correctness aids, extensible. --> |  |
| [Abandon](https://github.com/hrj/abandon)         | [Scala](https://www.openhub.net/p/abandon) |  |
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
- [org2tc](https://github.com/jwiegley/org2tc) org to timeclock converter
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

#### time tracking

- <https://github.com/anarcat/ledger-timetracking> on integrating timelog and journal

#### 

</div>

</div>
<div class="row" style="text-align:center;">

<hr>
Send updates via the
[github repo](https://github.com/simonmichael/plaintextaccounting)
or
[etherpad](https://oasis.sandstorm.io/shared/UAYLwagGI0a2pIMg9Hhv74K04nbuxanXiS5ZtBV6NF-)

</div>

