% Plain Text Accounting, a guide to Ledger and friends

<!--
Editing tips:

This is pandoc markdown (markdown-smart+autolink_bare_uris) + html.
http://pandoc.org/README.html
index.tmpl defines the page layout, using normalize, skeleton and local css.
http://getskeleton.com
We run pandoc locally and commit the html it generates, eg index.html.

If editing via github web UI:
- you can see an approximate preview with the Preview tab
- no need to update the generated html; we'll do that when needed

If editing in a local clone:
- you can use make html or make html-watch to see an accurate preview
- if you do, you might as well commit the updated html as well; 
  otherwise we'll do that when needed

If using emacs markdown-mode:
- S-TAB cycles heading/content visibility
- TAB on a heading cycles visibility of that section
- C-x n s/C-x n w on a heading narrows to/widens from that section

-->

<style>
body {
/*    background-color:#fdd;*/
}
.columns {
    margin-left:0 !important;
    margin-right:4%;
}
h1 {
    text-align:center; 
    margin-top:10%;
    margin-bottom:5%;
}
h2 {
}
h3 {
    font-weight:normal;
}
h4 {
}
h5 {
    font-size:1.2em;
}
.faq h5 { /* questions */
    font-weight:bold;
    margin-bottom:0;
}
#intro {
  font-size:1.2em;
}
#sitemapheading {
  font-size:4.2rem;
    /*  font-weight:bold; */
}
#section1 {
  /* background-color:#fff; */  /* these need to be full width */
}
#section2 {
    /* background-color:#eee; */
}
#section3 {
    /* background-color:#ddd; */
}
#section4 {
    /* background-color:#ccc; */
}
#section5 {
    /* background-color:#bbb; */
}
#section6 {
    /* background-color:#aaa; */
}
</style>

<div style="float:right; position:fixed; top:.5em; right:.5em;">
[![github](https://img.shields.io/github/stars/plaintextaccounting/plaintextaccounting.github.io.svg?style=social&label=Github){title="send pull requests, bug reports, blog posts, star us, tweet with #plaintextaccounting tag"}](https://github.com/plaintextaccounting/plaintextaccounting.github.io)
</div>

<div id="section1">

# plain text accounting

 <div id="intro">

***Plain text accounting*** means doing accounting with plain text
data formats and scriptable software, in the style of 
[Ledger, hledger, beancount, and co](#plain-text-accounting-apps).
This site collects FAQs and a directory for the PTA community's tools, docs and practices. 
It is maintained by Simon&nbsp;Michael (hledger project leader, Ledger
contributor, PTA researcher & fan), and contributors like you. 
Got feedback ? Join us in
[#plaintextaccounting](https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#plaintextaccounting)
or [send an edit](https://github.com/plaintextaccounting/plaintextaccounting.github.io/edit/master/index.md).

 </div>

 <div class="row">
  <div class="faq eight columns">

## FAQ

(A work in progress; improvements always welcome.)

### What and why

##### What is Accounting, and what can it do for me?

[Accounting](https://en.wikipedia.org/wiki/Accounting) is tracking the flow of valuable commodities, such as money or time.
It clarifies activity, priorities, obligations, opportunities.
It can [reduce stress](http://podcastle.org/2009/10/09/pc-miniature-38-accounting-for-dragons) and even be enjoyable.

##### What is Plain Text Accounting?

In 2003, John Wiegley invented Ledger: 
a command-line reporting tool and a plain text data format for efficient double-entry-style accounting.
Ledger's ideas appealed to many software developers and technical folk.
In 2007 and 2008 it was joined by hledger and Beancount respectively,
and as of 2019 there are more than a dozen [Ledger-likes](#plain-text-accounting-apps),
many add-on tools and an active community.
This site was started in 2016 to help keep track of it all.

##### What is double-entry?

[Double-entry bookkeeping](https://en.wikipedia.org/wiki/Double-entry_bookkeeping_system) 
is a process for keeping accounting records reliably.
For every movement of value (a [transaction](https://en.wikipedia.org/wiki/Financial_transaction)), both the source and destination are recorded.
Simple arithmetic invariants help prevent errors.

Value at any point in time is tracked in various [accounts](https://en.wikipedia.org/wiki/Account_(accountancy)), classified as
[asset](https://en.wikipedia.org/wiki/Asset) (owned),
[liability](https://en.wikipedia.org/wiki/Liability_(financial_accounting)) (owed)
or [equity](https://en.wikipedia.org/wiki/Equity_(finance)) (invested).
Two more classifications track changes during some period:
[revenues](https://en.wikipedia.org/wiki/Revenue) (inflows)
and [expenses](https://en.wikipedia.org/wiki/Expense) (outflows).

Transactions consist of
[debits](https://en.wikipedia.org/wiki/Debits_and_credits) (increases to asset or expense accounts, or decreases to liability or equity accounts) or
[credits](https://en.wikipedia.org/wiki/Debits_and_credits) (decreases to asset or expense accounts, or increases to liability or equity accounts).

##### What are some characteristics of Plain Text Accounting ?

Accounting data is valuable;
we want to know that it will be accessible for ever - even without software.
We want to know when it changes, and revision-control it.
We want to search and manipulate it efficiently.
So, we store it as human-readable 
[plain](https://www.ledger-cli.org/3.0/doc/ledger3.html#The-Most-Basic-Entry) 
[text](https://hledger.org/journal.html).

We simplify debits and credits by using
[signed numbers](https://www.ledger-cli.org/3.0/doc/ledger3.html#Stating-where-money-goes) -
positive for inflows to an account, negative for outflows from an account.

We define arbitrary
[account](https://www.ledger-cli.org/3.0/doc/ledger3.html#Structuring-your-Accounts)
[hierarchy](https://hledger.org/journal.html#account-names)
to suit our needs.
This scales smoothly from simple to complex scenarios, and from high-level overview to fine detail.

Ledger-likes are, at least in part,
[command-line tools](#software).
This makes them efficient to use and very
scriptable and flexible.

Ledger-likes also, at their core, tend towards
[functional operation](https://en.wikipedia.org/wiki/Function_(mathematics)):
they read the input data without changing it, and output a report.
This simple model makes them easy to understand and rely on.

  </div> <!-- column -->
  <div id="sitemap" class="three columns" style="white-space:nowrap;">

<div id=sitemapheading>site map</div> <!-- don't disrupt content tree -->
[FAQ](#frequently-asked-questions)  
&nbsp;&nbsp;[What and Why](#what-and-why)  
&nbsp;&nbsp;[Objections and Concerns](#objections-and-concerns)  
&nbsp;&nbsp;[Getting started, Practicalities](#getting-started-practicalities)  
[news/discussion](#newsdiscussion)  
&nbsp;&nbsp;[mail lists/IRC](#mail-listsirc)  
&nbsp;&nbsp;[twitter](#twitter)  
&nbsp;&nbsp;[reddit](#reddit)  
&nbsp;&nbsp;[hacker news](#hacker-news)  
&nbsp;&nbsp;[stack exchange](#stack-exchange)  
[software](#software)  
&nbsp;&nbsp;[plain text accounting apps](#plain-text-accounting-apps)  
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
[docs](#docs)  
&nbsp;&nbsp;[general accounting](#general-accounting)  
&nbsp;&nbsp;[plain text accounting](#plain-text-accounting)  
&nbsp;&nbsp;[comparisons](#comparisons)  
&nbsp;&nbsp;[presentations](#presentations)  
&nbsp;&nbsp;[videos](#videos)  
[articles & blog posts](#articles-blog-posts)  
&nbsp;&nbsp;[in 2021](#in-2021)  
&nbsp;&nbsp;[in 2020](#in-2020)  
&nbsp;&nbsp;[in 2019](#in-2019)  
&nbsp;&nbsp;[in 2018](#in-2018)  
&nbsp;&nbsp;[in 2017](#in-2017)  
&nbsp;&nbsp;[in 2016](#in-2016)  
&nbsp;&nbsp;[in 2015](#in-2015)  
&nbsp;&nbsp;[in 2014](#in-2014)  
&nbsp;&nbsp;[in 2013](#in-2013)  
&nbsp;&nbsp;[in 2012](#in-2012)  
&nbsp;&nbsp;[in 2011](#in-2011)  
&nbsp;&nbsp;[in 2010](#in-2010)  
&nbsp;&nbsp;[in 2009](#in-2009)  
&nbsp;&nbsp;[in 2008](#in-2008)  
&nbsp;&nbsp;[in 2007](#in-2007)  
&nbsp;&nbsp;[in 2006](#in-2006)  
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
&nbsp;&nbsp;[non-profit accounting](#non-profit-accounting)  
&nbsp;&nbsp;[exporting](#exporting)  
&nbsp;&nbsp;[customising](#customising)  
&nbsp;&nbsp;[API access](#api-access)  

  </div> <!-- column -->
 </div> <!-- row -->
</div> <!-- section -->
<div id="section2" class="faq">

##### Who is using this, and how?
[Who's using Ledger?](https://github.com/ledger/ledger/wiki/Who's-using-ledger%3F) has some stories.

##### Is it a good fit for me?
If you would like to use a GUI that provides lots of guidance, 
PTA tools currently don't meet that need.
Most current PTA users tend to be comfortable using the command line,
editing plain text, and perhaps using version control.

##### What are the alternatives?
Traditional GUI-centric accounting software:  
[Free/open-source](https://en.wikipedia.org/wiki/Free_and_open-source_software): GNUCash, Grisbi, KMyMoney..  
Commercial: Quicken, Quickbooks, You Need A Budget..

Online/cloud-based accounting software: Xero, FreeAgent..

Here is Wikipedia's [Comparison of accounting software](https://en.wikipedia.org/wiki/Comparison_of_accounting_software).
Also: 

- [spreadsheets](https://backchannel.com/a-spreadsheet-way-of-knowledge-8de60af7146e#.2hr7pi9pb)
- keeping accounts on paper
- using a bookkeeper/accountant.

##### What are the advantages over traditional (Free/open-source) accounting software, like GnuCash?

<!-- https://www.reddit.com/r/plaintextaccounting/comments/dboxgx/what_are_the_advantages_of_ledger_and_the_likes/ -->

Some key factors:

<!-- why stupid line breaks without nbsp ? why numbers instead of letters ? -->

a.&nbsp;The plain text, human readable, well supported data formats.

b.&nbsp;The division of concerns between creating and managing the data
   (your responsibility) and analysing it (the tool's responsibility).
   Ie "immutable data" + "referentially transparent reporting tools".

c.&nbsp;The command-line interface.

d.&nbsp;The ecosystem of related tools.

create synergies such as:

1.&nbsp;The data is more future proof. You can access it relatively easily
   with different software, newly-written software, or no software.

2.&nbsp;The command-line based UI, together with the plain text format,
   allows easy integration with other software, custom workflows and
   automation.

3.&nbsp;The user's responsibilities and mental model feel simpler, ie: "I
   just need to keep a list of transactions". Complex features and
   tools are not visible until you need them. Common actions can be
   easily scripted for daily use.

4.&nbsp;The data can be managed using the rich ecosystem of tools for
   managing text. This is appealing to folks familiar with such tools.

5.&nbsp;Most significantly, the data can be effectively version controlled,
   providing an audit trail, unlimited "undo", and collaboration.

6.&nbsp;Because the software (mostly) does not touch your data, and because
   version control would let you know and roll back if it did, you can have
   great confidence in the integrity of your data. 
   If the software misbehaves, your data is not at risk.
   It's safe and relaxing to try out new features or new software on your data.

7.&nbsp;The data/tool separation facilitates decentralised development,
   stimulating an ecosystem of more tools and integrations.

8.&nbsp;The free form DSL-style format provides great expressiveness for
   modelling and documenting real-world financial activities, without
   UI-imposed limitations.

##### What are the advantages over commercial accounting software, like QuickBooks?
In addition to the advantages above, being Free or Open Source software helps ensure:
- No lockin - your data remains accessible, and there are no yearly fees.
- You can fix, enhance and port the software.
- The software is more portable, scriptable, and lightweight.

##### Where can I read more discussion of this approach ?

- [The Surprising Ease of Plain Text Accounting](https://news.ycombinator.com/item?id=12119050)
- Articles linked below...
- ...

### Objections and Concerns

##### Isn't personal accounting a waste of time?

People have very different needs and practise personal accounting for many different reasons. There is of course a point of diminishing returns; tailor your accounting practices to your needs. Needs change over time. Some of us would benefit from doing more (or better) accounting, some less (I would guess this second group is smaller).
In [The Millionaire Next Door](https://en.wikipedia.org/wiki/The_Millionaire_Next_Door) (highly recommended), one research finding was that above-average wealth accumulators spend more time on financial planning, which for many of us requires accounting as a foundation. "Minimal time dedicated to financial planning is a leading indicator of a UAW [Under Accumulator of Wealth]".

##### Must I edit text and type cryptic commands?

Not entirely!
"Plain Text Accounting" is a broad description, referring mainly to the data format.
We welcome optional [GUIs](#ui-console), and they are [coming](#ui-console).

##### Do you really enter every little transaction?

Yes! Many folks in our community do it. Mahatma Gandhi reconciled to the penny every night. J.D. Rockefeller was famous for his ledgers.
It's not required. I started doing it as a temporary learning exercise, and still like it. It makes troubleshooting and reconciling easier.

##### How is that possible?

Practice, and a process/toolset that suits you. Some folks import most of the data from their banks, so little manual data entry is required. A few prefer to manually enter everything, for the increased awareness and insight. "Manual" data entry is usually assisted in some way: interactive console tools (hledger add and similar), web-based tools (hledger-web and similar), GUI tools (ledgerhelpers), smart editors (eg emacs & ledger-mode), recurring transaction scripts. I currently use a mixture of bank CSV import and rapid copy/paste in emacs. I spend 15 minutes a day on average, and for me that's currently a good investment.

##### How do I use the transaction data in my bank's web or mobile app?

If you can export it as CSV, you can import it and run queries against it. There are also some tools for converting OFX, QIF etc.

##### So I've got a huge list of transactions recorded, duplicating my bank statements. How does that help?

Accounting is modelling flows of money (or other value). Such a model aggregates information from many sources, in one trusted place. With it you can efficiently generate reports, forecast things (cashflow!), answer questions, try experiments.
Some people need a very simple model, others benefit from a more detailed one, and we don't know up front what we might need in future. The most fundamental accounting data is a simple list of transactions (the journal). Once you have captured this, you can mine it for anything you may want later on.
Plain text accounting provides nice open data format(s), tools and practices for doing this, and could be a good foundation for more powerful tools.

##### Isn't a command-line tool too limited for real-world accounting needs?

*"I am sure for a simple expense/budget ledger it will work OK, but when it comes to recurring journals, multiple reconciliation accounts, inter company transfers, control account tracing etc., give me a nice GUI any day..."*\
Understandable. The current plain text accounting tools provide a very generic double entry accounting system with which you can model such things, and script them.
There are a number of generic GUIs available (hledger has curses and web interfaces, and there are web/curses/GTK interfaces for Ledger and beancount). But there are not yet a lot of rich task-specific GUIs. There's no reason they can't be built, though.

##### Isn't a plain text format too limited for large organizations?

*"it's pretty obvious that plain-text files don't scale to a multinational, with hundreds of accountants of various types all trying to work with the same files. Even with proper use of Git I bet that would get old fast. You would instead want a real database, with a schema, and some data validation and some programs/webpages to smooth out the data entry and querying and whatnot."*\
I'm not sure. Current plain text accounting tools can do some schema definition and data validation, and will do more in future. The plain text storage format is open, human-readable, future-proof (useful even without the software), scales smoothly from simple to complex needs, and taps a huge ecosystem of highly useful tooling, such as version control systems. And, despite the name, there's no reason these tools can't support other kinds of storage, such as a database.


##### If this is double entry accounting, where are the debits and credits?

Most (not all) plain text accounting implementations use signed
amounts instead of debits and credits. This makes them "double entry
light" perhaps, but it has been a rather successful simplification,
intuitive to most newcomers.

##### How do I communicate with my accountant?

Clean up text reports by hand,
print them as PDF,
export CSV reports to a spreadsheet..

##### What if my accountant only uses QuickBooks?

You'll need a new accountant,
or a duplicate set of books in QuickBooks,
or to pioneer *ledger -> QuickBooks exporting.

##### Can I use this to do my taxes?

You can use this to track and report the data needed for tax reporting.
Fill out and submit tax forms with another tool, or by hand.

### Getting started, Practicalities

##### Where can I see a comparison of hledger, Ledger, beancount, and the rest?

Glad you asked! See below, and also [comparisons](#comparisons). hledger's FAQ discusses differences from Ledger, Beancount docs probably do too.

##### How to organise files ? Should I split the journal into many files ?

All in one file (or one file per year) and ordered by date is simplest
and creates the fewest headaches (balance assertions/assignments,
scope of directives, where to put entries, finding things..).

If you use emacs: it’s possible to insert org headings (which are
comments to h/ledger) and then use org-mode or org-minor-mode to
collapse/expand/navigate sections of your journal.

Also in emacs: in ledger-mode, C-c C-f can give you a filtered view of
just one account’s transactions. (But be careful, if you edit in the
wrong place it will lose data.)

https://www.reddit.com/r/plaintextaccounting/comments/d69slp/how_do_you_manage_multiple_accounts_in/

##### How big is your ledger/journal file ?

For individual accounting, somewhere between 500-1500 transactions and 100-400K of journal per year seems typical.

https://www.reddit.com/r/plaintextaccounting/comments/dbjizl/how_big_is_your_ledgerjournal_file/

##### How do I do budgeting?
See [budgeting](#budgeting) below.

<!-- 
TODO ##### How to get started ?

getting-started.md
-->

</div> <!-- section -->

<div id="section3">

## news/discussion

 <div class="row">
  <div class="three columns u-pull-left">
##### mail&nbsp;lists/IRC<br><br>
  </div>
<span style="white-space:nowrap;">[#plaintextaccounting] on Freenode IRC,</span>
<span style="white-space:nowrap;"><a href="https://matrix.to/#/#freenode_#plaintextaccounting:matrix.org">#freenode_#plaintextaccounting:matrix.org</a> on Matrix,</span>
<span style="white-space:nowrap;">[project-specific mail lists/chats](#plain-text-accounting-apps)</span>

[#plaintextaccounting]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#plaintextaccounting


 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### twitter
  </div>

[#plaintextaccounting](https://twitter.com/hashtag/plaintextaccounting?f=live),
[#ledgercli](https://twitter.com/hashtag/ledgercli?f=live),
[#hledger](https://twitter.com/hashtag/hledger?f=live),
[#beancount](https://twitter.com/hashtag/beancount?f=live),
[\@LedgerTips](https://twitter.com/LedgerTips)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### reddit
  </div>

[/r/plaintextaccounting](https://www.reddit.com/r/plaintextaccounting/)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### hacker&nbsp;news
  </div>

[stories](https://hn.algolia.com/?query=plain%20text%20accounting&sort=byDate&prefix=false&page=0&dateRange=all&type=story),
[comments](https://hn.algolia.com/?query=plain%20text%20accounting&sort=byDate&prefix=false&page=0&dateRange=all&type=comment)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### stack&nbsp;exchange
  </div>

[[ledger-cli]](https://money.stackexchange.com/questions/tagged/ledger-cli?tab=newest) / ["ledger-cli"](https://money.stackexchange.com/search?tab=newest&q=ledger-cli),
[[hledger]](https://money.stackexchange.com/questions/tagged/hledger?tab=newest) / ["hledger"](https://money.stackexchange.com/search?tab=newest&q=hledger)
<!-- [beancount](https://money.stackexchange.com/search?tab=newest&q=beancount) -->

 </div> <!-- row -->
</div> <!-- section -->

<div id="section4">

<style>
th, td { border:none; padding-top:0; padding-bottom:0; border-bottom:thin solid #ddd; white-space:nowrap; }
</style>

## software

<a name="ledger-likes"></a>

### plain text accounting apps

<!-- Syntax: http://pandoc.org/README.html#tables -->
<!-- Leading |'s let markdown-mode realign the table with TAB, but screw up fontification. Hmm, maybe fixed ? Try it. -->
<!-- Active projects are sorted by committers+other community size/activity signals; inactives are sorted by start. -->

| Project                   | Start | Last release | Code                              | Committers | Stars | Mail list, size                  | Chat, size                      |
|---------------------------|-------|:------------:|-----------------------------------|-----------:|------:|----------------------------------|---------------------------------|
| [Ledger]                  | 2003  | 2020-05      | [C++][ledger-gh]                  |        162 |  3.4k | [ledger][ledger-mail], 922       | [#ledger], 80                   |
| [hledger]                 | 2007  | 2021-14      | [haskell][hledger-gh]             |        131 |  1.6k | [hledger][hledger-mail], 182     | [#hledger], 90                  |
| [Beancount]               | 2008  | 2020-06      | [python][beancount-gh]            |         44 |   618 | [beancount][beancount-mail], 377 | [#beancount], 20                |
| Abandon                   | 2013  | 2019-09      | [scala][abandon-gh]               |         11 |   151 |                                  | [gitter][abandon-gitter]        |
| Transity                  | 2018  | 2019-05      | [purescript][transity-gh]         |          7 |   472 |                                  | [gitter][transity-gitter]       |
| Ledger in Go              | 2013  | 2019-11      | [go][ledger-in-go-gh]             |          6 |   221 |                                  |                                 |
| cl-ledger                 | 2007  |              | [common lisp][cl-ledger-gh]       |          4 |    66 |                                  |                                 |
| rust\_ledger              | 2019  | 2020-09      | [rust][rust_ledger-gh]            |          2 |    18 |                                  |                                 |
| .Net Ledger               | 2017  | 2018-08      | [C#][nledger-gh]                  |          1 |    67 |                                  | [gitter][nledger-gitter]        |
| goledger                  | 2019  |              | [go][goledger-gh]                 |          1 |    13 |                                  |                                 |
| [monescript]              | 2017  | 2018-01      | [javascript][monescript-gh]       |          1 |    12 |                                  |                                 |
| blossom                   | 2020  |              | [F#][blossom-gh]                  |          1 |    12 |                                  |                                 |
| [Tackler]                 | 2017  | 2021-01      | [scala][tackler-gl]               |          1 |     6 |                                  | [gitter][tackler-gitter]        |
| acc                       | 2020  |              | [rust][acc-gh]                    |          1 |     1 |                                  |                                 |
| bankroll                  | 2020  | 2020-08      | [rust][bankroll-gl]               |          2 |     1 |                                  |                                 |
| [pta]                     | 2020  | 2020-09      | perl                              |          1 |       |                                  |                                 |
| [Prudent]                 | 2018  |              | js (closed; [addons][prudent-gh]) |          1 |       |                                  | [\@PrudentLedger][prudent-chat] |
| knut                      | 2020  |              | [go][knut-gh]                     |          1 |       |                                  |                                 |
| &nbsp;                    |       |              |                                   |            |       |                                  |                                 |
| **Inactive:**             |       |              |                                   |            |       |                                  |                                 |
| [beans]                   | 2019  | 2019         | [haskell][beans-gh]               |            |       |                                  |                                 |
| uledger                   | 2015  |              | [python][uledger-gh]              |            |       |                                  |                                 |
| pacioli                   | 2013  |              | [python][pacioli-gh]              |            |       |                                  |                                 |
| ledger.pl                 | 2013  |              | [perl][ledger.pl-gh]              |            |       |                                  |                                 |
| Penny                     | 2012  | 2014         | [haskell][penny-gh]               |            |       |                                  |                                 |
| UMM                       | 2009  | 2010         | [haskell][UMM-hackage]            |            |       |                                  |                                 |
| sm-Ledger                 | 2007  |              | [squeak smalltalk][smalltalk-gh]  |            |       |                                  |                                 |
| &nbsp;                    |       |              |                                   |            |       |                                  |                                 |
| **See also:**             |       |              |                                   |            |       |                                  |                                 |
| [plaintextaccounting.org] |       |              |                                   |            |       |                                  | [#plaintextaccounting], 50      |
|                           |       |              |                                   |            |       |                                  | [/r/plaintextaccounting], 1773  |

[plaintextaccounting.org]: https://plaintextaccounting.org
[/r/plaintextaccounting]: https://www.reddit.com/r/plaintextaccounting

[abandon-gh]: https://github.com/hrj/abandon
[abandon-gitter]: https://gitter.im/hrj/abandon

[acc-gh]: https://github.com/rudolfschmidt/acc

[Beancount]: http://furius.ca/beancount
[Beancount2]: https://beancount.github.io
[beancount-gh]: https://github.com/beancount/beancount/
[beancount-mail]: https://groups.google.com/forum/#!forum/beancount
[#beancount]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#beancount

[beans]: https://sboehler.github.io/beans
[beans-gh]: https://github.com/sboehler/beans

[blossom-gh]: https://github.com/blossom-hub/blossom

[cl-ledger-gh]: https://github.com/ledger/cl-ledger

[goledger-gh]: https://github.com/mescanne/goledger

[hledger]: https://hledger.org
[hledger-gh]: https://github.com/simonmichael/hledger
[hledger-code]: http://code.hledger.org
[hledger-mail]: http://mail.hledger.org/
[#hledger]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#hledger

[knut-gh]: https://github.com/sboehler/knut

[Ledger]: https://www.ledger-cli.org
[ledger-gh]: https://github.com/ledger/ledger
[#ledger]: https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#ledger
[ledger-mail]: http://list.ledger-cli.org/

[ledger-in-go-gh]: https://github.com/howeyc/ledger

[ledger.pl-gh]: https://github.com/dimonf/ledger.pl

[monescript]: https://monescript.github.io/
[monescript-gh]: https://github.com/monescript/monescript

[nledger-gh]: https://github.com/dmitry-merzlyakov/nledger
[nledger-gitter]: https://gitter.im/nledger/lobby

[pacioli-gh]: https://github.com/mdipierro/pacioli

[penny-gh]: https://github.com/massysett/penny

[pta]: https://mandoc.bsd.lv/pta

[prudent]: https://prudent.me
[prudent-gh]: https://github.com/PrudentMe
[prudent-chat]: https://twitter.com/PrudentLedger

[rust_ledger-gh]: https://github.com/ebcrowder/rust_ledger

[bankroll-gl]: https://gitlab.com/dantuck/bankroll

[smalltalk-gh]: https://gist.github.com/simonmichael/bb611dba654ccb1573e1

[Tackler]: https://tackler.e257.fi
[tackler-gl]: https://gitlab.com/e257/accounting/tackler
[tackler-gitter]: https://gitter.im/E257-FI/tackler

[transity-gh]: https://github.com/feramhq/transity
[transity-gitter]: https://gitter.im/feramhq/transity
[transity-demo]: https://www.feram.io/transity

[uledger-gh]: https://github.com/danpat/uledger

[UMM-hackage]: http://hackage.haskell.org/package/UMM

<!-- [compare at openhub](https://www.openhub.net/p/_compare?project_0=Ledger&project_1=hledger&project_2=beancount) -->

Next, related add-ons and helpers by category
(note: `*ledger` below means Ledger and hledger-style journal format):

### data import/conversion

- [Ledger](https://www.ledger-cli.org/3.0/doc/ledger3.html#Comma-Separated-Values-files) and [hledger](https://hledger.org/csv.html) have CSV conversion built in. Also:
- bean-identify, bean-extract, bean-file - Beancount built-in tools
- [banks2ledger](https://github.com/tomszilagyi/banks2ledger) - CSV to *ledger converter
- [beancount-import](https://github.com/jbms/beancount-import) web app/framework for converting various formats to beancount (python)
- [beancount-ynab](https://github.com/hoostus/beancount-ynab) You Need A Budget to beancount converter
- [buchhaltung](http://hackage.haskell.org/package/buchhaltung) CSV/FinTS/HBCI/OFX to *ledger conversion/deduplication (haskell)
- [csv2beancount](https://github.com/PaNaVTEC/csv2beancount) CSV to beancount converter (clojure)
- [CSV2Ledger](https://launchpad.net/csv2ledger) CSV to *ledger converter (perl)
- [fints2ledger](https://github.com/MoritzR/fints2ledger) FinTS/HBCI to csv to *ledger or beancount journals (python)
- [gcash2ledger.py](https://gist.github.com/nonducor/ddc97e787810d52d067206a592a35ea7/) GNUCash XML to *ledger converter (python)
- [gnucash-to-beancount](https://github.com/henriquebastos/gnucash-to-beancount/) GNUCash sqlite to beancount converter (python)
- [gnucash2ledger.py](https://github.com/MatzeB/pygnucash/blob/master/gnucash2ledger.py) GNUCash sqlite to *ledger converter (python)
- [grisbi2Ledger](https://github.com/Hawk777/grisbi2ledger) Grisbi to *ledger converter
- [hledger-import-dsl](https://github.com/hpdeifel/hledger-import-dsl) alternate, programmable CSV converter for hledger
- [hledger-to-influxdb](https://github.com/barrucadu/hledger-scripts#hledger-to-influxdb) hledger to InfluxDB converter (haskell)
- [hledger2beancount](https://github.com/tjroth/hledger2beancount) hledger to beancount converter (haskell)
- [homebank2ledger](https://github.com/chazmcgarvey/homebank2ledger) HomeBank to ledger and beancount converter (perl)
- [icsvledger](https://github.com/quentinsf/icsv2ledger) interactive CSV to *ledger converter (python)
- [into-ledger](https://github.com/manishrjain/into-ledger) CSV to *ledger converter
- [kmymoney2hledger](https://github.com/maridonkers/kmymoney2hledger) KMyMoney to *ledger converter (clojure)
- [kmymoney2ledgers](https://github.com/isabekov/kmymoney2ledgers) KMyMoney to *ledger/beancount converter (python)
- [Ledger in Go](https://github.com/howeyc/ledger) has limport, a CSV to *ledger converter
- [ledger-autosync](https://gitlab.com/egh/ledger-autosync) OFX download, OFX to *ledger conversion, deduplication
- [ledger-guesser](https://github.com/j3k0/ledger-guesser) neural network for generating entries like past ones, can be used with ledger-autosync (javascript)
- [ledger-myexpenses](https://github.com/ony/ledger-myexpenses) MyExpenses android app sqlite db to *ledger conversion (python)
- [ledger-reconciler](https://disjoint.ca/projects/ledger-reconciler) automatically download and reconcile your ledger financial entries
- [ledger-to-beancount](https://github.com/glasserc/ledger-to-beancount/) yet another simple ledger to beancount converter (python)
- [ledger-tutorials](https://github.com/tlvince/ledger-tutorials) convert Pete Keen's tutorials to ebook format
- [ledger2beancount.py](https://gist.github.com/travisdahlke/71152286b0a8826249fe) *ledger to beancount converter
- [ledger2beancount](https://github.com/beancount/ledger2beancount) h/ledger to beancount converter (perl). Use this one.
- [outofit](https://github.com/rcaputo/outofit) QuickBooks to *ledger converter
- [piecash](https://github.com/sdementen/piecash) GNUCash SQL to *ledger converter (python)
- [plaid2qif](https://github.com/ebridges/plaid2qif) Download transactions from plaid as QIF or CSV files
- [plaid2text](https://github.com/madhat2r/plaid2text) Plaid API to *ledger/beancount download/conversion
- [qb2ledger](https://gist.github.com/genegoykhman/3765100) QuickBooks General Journal CSV to *ledger converter
- [QIFtoLedger](https://github.com/Kolomona/QIFtoLedger) (Bank of America's) QIF to *ledger converter
- [reckon](https://github.com/cantino/reckon) smart interactive/non-interactive CSV to *ledger converter
- [slc](https://github.com/marvinpinto/slc) slc is a CLI application to generate Ledger accounting entries, works with generic CSV files as well as the Stripe API
- [smart_importer](https://github.com/johannesjh/smart_importer) library for building smarter CSV to beancount/Fava converters
- [total_recall](https://github.com/eval/total_recall) CSV to *ledger converter
- [ynab-to-ledger](https://github.com/vermiceli/ynab-to-ledger) You Need A Budget (YNAB) to *ledger converter. Handles multiple currencies, multiple number formats, reconciliation, memos, transfers, and split transactions
- [ynab_to_ledger](https://github.com/pgr0ss/ynab_to_ledger) You Need A Budget to *ledger converter
- [Costflow](https://docs.costflow.io) convert one line message to beancount/*ledger format
- [Go Ledger parser](https://github.com/abourget/ledger) a parser and ledgerfmt, ledger2json, json2ledger tools (go)

### data generation

- [beancount-extract-price](https://github.com/Mayeu/beancount-scripts) generate prices transactions based on your beancount ledger (python)
- [bean-price](https://docs.google.com/document/d/1thYRAMell_QT1Da1F_laprSs6BlROZjyK_h3V8qHW9c) Beancount's price fetching tool (python)
- [DepreciateForLedger](https://github.com/tazzben/DepreciateForLedger) generate *ledger depreciation transactions (python)
- [hledger-interest](http://hackage.haskell.org/package/hledger-interest) generate *ledger interest entries (haskell)
- [ledger-get-prices](https://github.com/nathankot/ledger-get-prices) download market prices (ruby)
- [ledgerbil](https://github.com/scarpent/ledgerbil) schedule recurring txns, interactive reconcile, date sorting
- [LedgerScheduler](https://github.com/tazzben/LedgerScheduler) move entries from one file to another when they come due (python)
- [LedgerStockUpdate](https://github.com/adchari/LedgerStockUpdate) update a Ledger price database (go)
- [lotter](https://src.d10.dev/lotter) generate postings for capital gain/loss (go)
- [market-prices](https://github.com/barrucadu/hledger-scripts#market-prices) download market prices from several sources (python)
- [recurring](http://hub.darcs.net/simon/ledgertools/browse/recurring) generate recurring *ledger entries (python)
- [reorder-journal.sh](https://github.com/amitaibu/hledger-example/blob/master/reorder-journal.sh) sort hledger entries, preserving directives/comments at top of file (bash)
- [sassetti](https://github.com/jvasile/sassetti) adds lisp macros to ledger files (common lisp)

### reports

- [hledger-diff](http://hackage.haskell.org/package/hledger-diff) report differing transactions between two journals (haskell)
- [hledger-irr](http://hackage.haskell.org/package/hledger-irr) calculate an account's internal rate of return (superseded by [roi](https://hledger.org/hledger.html#roi)) (haskell)
- [hreports](https://pypi.org/project/hreports) save custom reports and PDF templates (python)
- [ledger-plot](https://github.com/Tagirijus/ledger-plot) interactive tool for making GNUplot charts from Ledger (python)
- [ledger-plots](https://github.com/esovetkin/ledger-plots) R package & script to make charts from Ledger (R)
- [ludget](https://pypi.org/project/ludget) generate charts from Ledger (python)
- [r-ledger](https://github.com/trevorld/r-ledger) an R package for reading and reporting on ledger/hledger/beancount files (R)
- [TaxingLots](https://framagit.org/jkepler/TaxingLots) calculates capital gains for a ledger journal (python)

### time logging

- [org2tc](https://github.com/jwiegley/org2tc) org to timeclock converter
- [on-modify.timetrack.py](https://gist.github.com/wbsch/d977b0ac29aa1dfa4437) taskwarrior hook for timeclock output
- [t](https://github.com/nuex/t) ledger timeclock shellscript
- [tim](https://github.com/MatthiasKauer/tim) time logging/reporting tool using hledger
- [timekeeping-template](https://github.com/bbarker/timekeeping-template) time logging/reporting examples/how-to using hledger
- [tito](https://mostlyabsurd.com/files/tito) time logging bash scripts that avoid double clock-in

### UI, console

- [bean-add](https://github.com/simon-v/bean-add) interactive transaction entry tool (python)
- [hledger add](https://hledger.org/hledger.html#add) interactive transaction entry tool (builtin command)
- [ladd](https://github.com/ninewise/dotfiles/blob/master/local/bin/ladd) create and edit a new *ledger transaction by fuzzy-matching past descriptions
- [ldgr](https://github.com/brandonpittman/ldgr) command line tool to add/sort/tag ledger files (ruby)
- [ledger xact](https://www.ledger-cli.org/3.0/doc/ledger3.html#xact) history-aware transaction generator (builtin command)

### UI, curses

- [hledger-iadd](https://github.com/hpdeifel/hledger-iadd) TUI for *ledger transaction entry (haskell)
- [hledger-ui](http://hackage.haskell.org/package/hledger-ui) TUI for *ledger browsing (haskell, [video](https://asciinema.org/a/29665))
- [ledger-add](https://github.com/Tagirijus/ledger-add) TUI for *ledger transaction entry (python)
- [regdel](https://github.com/guillaumechereau/regdel) TUI for browsing Ledger files (python)

### UI, GUI

- [ledgerble](https://github.com/sbridges/ledgerble) reporting GUI with charts & adjustable reports (Javascript)
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) misc. GUI tools + helper library (Python, GTK)
- [Prudent][prudent] integrated journal editing/importing/reporting GUI for Ledger (Javascript, mac only, closed source)

### UI, web

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
- [ledger-pyreport](https://yingtongli.me/git/ledger-pyreport/about/) web UI for standard accounting statements and unrealised gains (python)
- [ledgible](https://github.com/lipidity/ledgible) web UI for ledger browsing, data entry (python)
- [node-ledger-web](https://github.com/slashdotdash/node-ledger-web) web UI for ledger browsing (javascript)
- [WealthPulse](https://github.com/readysetmark/WealthPulse) web UI for ledger browsing, price fetching (F#)

### UI, mobile

- [beancount-mobile](https://github.com/xuhcc/beancount-mobile) data entry app for beancount (Android, javascript)
- [cashier](https://gitlab.com/alensiljak/cashier) mobile or desktop client for ledger and hledger-web (Android/Desktop, javascript, [app](https://cashier.alensiljak.eu.org/))
- [cone](https://f-droid.org/en/packages/info.tangential.cone/) data entry app for the h/ledger format (Android, [dart](https://github.com/bradyt/cone))
- [MoLe](https://fossdroid.com/a/mole.html) mobile client for hledger-web (Android, [java](https://git.ktnx.net/?p=mobile-ledger.git))

### API

- [hledger-api](https://github.com/simonmichael/hledger/tree/master/hledger-api) JSON API server for *ledger files (retired, use hledger-web instead) (haskell)
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

### editor support

Editor plugins.
Note these often work quite well for other ledger-likes, not just the one they are named for.

 <div class="row">
  <div class="three columns u-pull-left">
##### Atom
  </div>

  [language-ledger](https://atom.io/packages/language-ledger),
  [ledger](https://atom.io/packages/ledger)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### Emacs
  </div>

  [beancount-mode](https://bitbucket.org/blais/beancount/src/1e21b27c0b0ecf2bf2e1a2cd5c3da3b1befc8152/src/elisp/beancount.el?at=default&fileviewer=file-view-default),
  [hledger-mode](https://github.com/narendraj9/hledger-mode),
  [ledger-mode](https://www.ledger-cli.org/3.0/doc/ledger-mode.html) (also works for hledger, beancount etc.)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### VIM
  </div>

  [vim-ledger](https://github.com/ledger/vim-ledger) (supports ledger & hledger),
  [vim-beancount](https://github.com/nathangrigg/vim-beancount),
  [hledger-vim](https://github.com/anekos/hledger-vim)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### Sublime
  </div>

  [sublime-ledger-syntax](https://github.com/moeffju/sublime-ledger-syntax)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### TextMate
  </div>

  [Ledger.tmbundle](https://github.com/lifepillar/Ledger.tmbundle)

 </div> <!-- row -->
 <div class="row">
  <div class="three columns u-pull-left">
##### VS&nbsp;Code
  </div>

  [hledger-vscode](https://github.com/mhansen/hledger-vscode),
  [ledger](https://marketplace.visualstudio.com/items?itemName=mariosangiorgio.ledger),
  [vscode-beancount](https://marketplace.visualstudio.com/items?itemName=Lencerf.beancount)

</div> <!-- section -->

<div id="section5">

<!-- <div class="three columns u-pull-right tight"> -->

## docs

### general accounting

- [hledger: Accounting](https://github.com/simonmichael/hledger/wiki/More%20docs#accounting)
- [Accounting for Dragons](http://podcastle.org/2009/10/09/pc-miniature-38-accounting-for-dragons)
- [Beancount: The Double-Entry Counting Method](https://docs.google.com/document/d/100tGcA4blh6KSXPRGCZpUlyxaRUwFHEvnz_k9DyZFn4)

### plain text accounting
<!-- official docs & useful intro docs -->
<!-- XXX reorg -->

- [Ledger manuals](https://www.ledger-cli.org/docs.html)
- [Ledger wiki](https://github.com/ledger/ledger/wiki)
- [Ledger CLI cheatsheet](https://devhints.io/ledger)
- [Getting Started With Ledger](https://rolfschr.github.io/gswl-book/latest.html)
- [hledger docs](https://hledger.org/sitemap.html)
- [Beancount docs](https://beancount.github.io/docs/) / [(google)](http://furius.ca/beancount/doc/index) / [(sphinx)](http://aumayr.github.io/beancount-docs-static/)
- [Beancount: Command-line Accounting in Context](https://docs.google.com/document/d/1e4Vz3wZB_8-ZcAwIFde8X5CjzKshE4-OXtVVHm4RQ8s)
- [Beancount: Syntax Cheatsheet](http://furius.ca/beancount/doc/cheatsheet)
- [Program your Finances: Command-line Accounting](https://www.petekeen.net/keeping-finances-with-ledger)
- [Don’t Sink Your First Attempts at Plaintext Accounting](plaintext-accounting-errors.html)
- [Syntax Quick Reference for the Ledger-Likes](quickref/)

### comparisons

- [Matthias Kauer: Command Line Accounting – A look at the various ledger ports](http://www.matthiaskauer.com/2015/08/command-line-accounting-a-look-at-the-various-ledger-ports/) 2015
- [Another Ledger user's perspective](https://groups.google.com/d/msg/beancount/QV4qgpFbtJ8/9fSgMw-XGC8J) 2015
- [Beancount: A Comparison of Beancount and Ledger](https://docs.google.com/document/d/1dW2vIjaXVJAf9hr7GlZVe3fJOkM-MtlVjvCO1ZpNLmg) 2014
- [ledger vs hledger vs beancount or how to choose the right cli client](https://groups.google.com/d/topic/ledger-cli/__yuMVjrOH0/discussion) 2014
- [hledger: hledger & Ledger](https://hledger.org/faq.html#how-is-hledger-different-from-ledger) 2014, 2019
- [Omari Norman: Why Penny](http://massysett.github.io/penny/why-penny.html) 2013
<!-- - [Fabrice Niessen: Why Ledger?](gone) 2010 -->

### presentations

- [Andreas Pauley: Purely Functional Personal Finance](https://pauley.org.za/functional-finance-hledger/) 2018
- [Ledger CLI Accounting for Geeks](http://blog.loadingdata.nl/accounting-for-geeks/) 2014
- [Hacking Your Finances for Fun and Profit](http://matthewturland.com/slides/ledger-stats/) 2013
- [Ledger and Text based Accounting](http://www.adamsinfoserv.com/AISTWiki/pub/AIS/Presentations/Ledger.pdf) 2009

### videos

- [hledger fan youtube channel](https://www.youtube.com/channel/UCZLxXTjOqLzq4z5Jy0AyWSQ) (short lessons) 2019
- [Quiliro Ordóñez: ledger-mode lightning talk](https://archive.org/details/ledger-mode_EmacsConf2019) 2019
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

## articles & blog posts

### in 2021

- [Zoran Zaric: Budgeting for annual expenses with Hledger](http://rantsideasstuff.com/posts/2021/01/31-budgeting-for-annual-expenses-with-hledger/) <!-- 2021/01/31 -->
- [Samuel Walladge: Tracking capital gains with hledger](https://www.swalladge.net/archives/2021/01/30/hledger-tracking-capital-gains/) <!-- 2021/01/30 -->

### in 2020

- [Duarte O.Carmo: Hacking on my finances](https://duarteocarmo.com/blog/hacking-on-my-finances.html) <!-- 2020/10/19 -->
- [Conversations in Code: Episode 3 / Introduction to Plain Text Accounting](https://www.reddit.com/r/plaintextaccounting/comments/ivrbdu/announcing_a_new_podcast_fossopensource_related/) <!-- 2020/9/19 --> [podcast]
- [Peter Hogg: Reconciling Ledger](https://pig-monkey.com/2020/08/reconciling-ledger/) <!-- 2020/8/6 -->
- [Peter Hogg: Receipts and Ledger](https://pig-monkey.com/2020/08/receipts-ledger/) <!-- 2020/8/5 -->
- [Peter Hogg: Tracking Cash with Ledger](https://pig-monkey.com/2020/08/ledger-cash/) <!-- 2020/8/4 -->
- [Peter Hogg: Organizing Ledger](https://pig-monkey.com/2020/08/organizing-ledger/) <!-- 2020/8/3 -->
- [Mari Donkers: KMyMoney to HLedger conversion](https://photonsphere.org/posts-output/2020-05-31-kmymoney2hledger) <!-- 2020/5/31 -->
- [Charles Hoffman: Plain Text Accounting](http://xbrl.squarespace.com/journal/2020/5/5/plain-text-accounting.html) <!-- 2020/5/5 -->
- [Charles Hoffman: Fat Free Accounting: Ledger](http://xbrl.squarespace.com/journal/2020/5/4/fat-free-accounting-ledger.html) <!-- 2020/5/4 -->
- [Lee Yingtong Li: Using selenium to scrape/import bank transactions for ledger-cli](https://yingtongli.me/blog/2020/04/29/hbs-scrape.html) <!-- 20200429 -->
- [Lee Yingtong Li: ledger-pyreport: Formal accounting reports for ledger-cli](https://yingtongli.me/blog/2020/03/31/ledger-pyreport.html) <!-- 2020/3/31 -->
- [Lee Yingtong Li: Incorrect accounting of unrealised gains in ledger-cli](https://yingtongli.me/blog/2020/03/31/ledger-gains.html) <!-- 2020/3/31 -->
- [Christian Egli: Quick and dirty PDF reports for Plain Text Accounting](https://egli.dev/posts/quick-and-dirty-pdf-reports-for-plain-text-accounting/) <!-- 2020/2/13 -->

### in 2019

- [Lee Yingtong Li: FIFO inventory with ledger-cli](https://yingtongli.me/blog/2019/12/11/ledger-fifo.html) <!-- 2019/12/11 -->
- [Justin Kaipada: Managing Ledger for Humans](https://www.kaipada.com/post/managing-ledger-for-humans/) <!-- 2019/11/25 -->
- [Amitai Burstein: Why We Chose Plain Text Accounting with Hledger](https://www.gizra.com/content/plain-text-accounting-hledger) <!-- 2019/11/21 -->
- [Budgeting with ledger-cli while tracking used points](https://fransiska.github.io/ledger/2019/10/24/ledger-budget-point) <!-- 2019/10/24 -->
- [Pete Keen: Automatic Insurance](https://www.petekeen.net/automatic-insurance) <!-- 2019/2/18 -->
- [Pete Keen: Automatic Investing](https://www.petekeen.net/automatic-investing) <!-- 2019/2/18 -->
- [Pete Keen: Automatic Cash Management](https://www.petekeen.net/automatic-cash-management) <!-- 2019/2/18 -->
- [Pete Keen: Automatic Finances](https://www.petekeen.net/automatic-finances) <!-- 2019/2/18 -->
- [John Sullivan: Answering questions with accounting: Reimbursements](https://blog.johncs.com/posts/accounting-reimbursements.htm) <!-- 2019/01/07 -->
<!-- MIA, awaiting repair: -->
<!-- - <s>S.M. Oliva: Accounting in Plain Text, Part 3</s>[](https://cvillefoss.blog/2019/03/25/accounting-in-plain-text-part-3/) 2019 <\!-- 3/25 -\-> -->
<!-- - <s>S.M. Oliva: Accounting in Plain Text, Part 2</s>[](https://cvillefoss.blog/2019/02/26/accounting-in-plain-text-part-2/) 2019 <\!-- 2/26 -\-> -->
<!-- - <s>S.M. Oliva: Accounting in Plain Text, Part 1.5</s>[](https://cvillefoss.blog/2019/02/19/accounting-in-plain-text-part-1-5) 2019 <\!-- 2/19 -\-> -->
<!-- - <s>S.M. Oliva: Accounting in Plain Text, Part 1</s>[](https://cvillefoss.blog/2019/02/12/accounting-in-plain-text-part-1) 2019 <\!-- 2/12 -\-> -->

### in 2018

- [Felix Crux: Tracking Accounts Jointly and Separately](https://felixcrux.com/blog/ledger-practices-tracking-accounts-jointly-and-separately) <!-- 2018-10-29) -->
- [Pepijn Looije: Real World Ledger part 1: Weighing Eggs in Baskets](https://p.epij.nl/ledger-cli/accounting/2018/08/23/real-world-ledger-part-1/) <!-- 2018/8/23 -->
- [Zoran Zaric: Depreciation in Personal Finance with Hledger](http://rantsideasstuff.com/posts/2018/07/08-depreciation-in-personal-finance-with-hledger/) <!-- 2018/7/4 -->
- [Zoran Zaric: Tracking Investments in Lots with Hledger](http://rantsideasstuff.com/posts/2018/07/01-tracking-investments-in-lots-with-hledger/) <!-- 2018/7/1 -->
- [Michael Walker: Currency Conversion](https://memo.barrucadu.co.uk/currency-conversion.html) <!-- 2018/5/31 -->
- [LWN: Counting beans - and more - with Beancount](https://lwn.net/SubscriberLink/751874/a38128abb72e45c5/) <!-- 2018/4/19 -->
- [Michael Walker: Personal Finance](https://memo.barrucadu.co.uk/personal-finance.html) <!-- 2018/1/7 -->
- [Siddhant Goel: Managing Personal Finances using Python](https://sgoel.dev/posts/managing-personal-finances-using-python/) <!-- 2018/9/16 -->

### in 2017

- [Michael Walker: I Need A Budget](https://www.barrucadu.co.uk/posts/etc/2017-12-16-i-need-a-budget.html) <!-- 2017/12/16 -->
- [Accounting for the simple minds with plain text accounting](https://dustri.org/b/accounting-for-the-simple-minds-with-plain-text-accounting.html) <!-- 2017/12/1 -->
- [S.M. Oliva: Inventory, Part I: Will It Probate?](https://clprobate.wordpress.com/2017/08/31/inventory-part-1-will-it-probate/) <!-- 2017/8/31 -->
- [S.M. Oliva: A Simple First Account](https://clprobate.wordpress.com/2017/07/30/a-simple-first-account/) <!-- 2017/7/30 -->
- [S.M. Oliva: The Basics of hledger](https://clprobate.wordpress.com/2017/07/30/the-basics-of-hledger) <!-- 2017/7/30 -->
- [S.M. Oliva: Introduction to Command Line Probate](https://clprobate.wordpress.com/2017/07/05/introduction-to-command-line-probate/) <!-- 2017/7/5 -->
- [LWN: Restarting the free accounting search](https://lwn.net/Articles/729088/) <!-- 2017/7/28 -->
- [Michael Walker: Visualise your finances with hledger, InfluxDB, and Grafana](https://www.barrucadu.co.uk/posts/etc/2017-05-18-visualise-your-finances-with-hledger-influxdb-grafana.html) <!-- 2017/5/18 -->
- [Brady Trainor: Hledger web](https://bradyt.com/2017/04/28/Hledger-web/) <!-- 2017/4/28 -->

### in 2016

- [Felix Crux: Accrual vs. Cash Basis Accounting](https://felixcrux.com/blog/ledger-practices-accrual-vs-cash-basis-accounting) <!-- 2016-11-30 -->
- [bsilvereagle: Envelope Budgeting with ledger](https://frdmtoplay.com/envelope-budgeting-with-ledger) <!-- 2016/10/28 -->
- [Felix Crux: Tracking Reimbursable Expenses](https://felixcrux.com/blog/ledger-practices-tracking-reimbursable-expenses) <!-- 2016-10-13 -->
- [Felix Crux: Separate Your Journals](https://felixcrux.com/blog/ledger-practices-separate-your-journals) <!-- 2016-09-28 -->
- [Felix Crux: Reporting Special Events Separately From Regular Spending](https://felixcrux.com/blog/ledger-practices-reporting-special-events-separately) <!-- 2016-09-23 -->
- [Felix Crux: Create a .ledgerrc](https://felixcrux.com/blog/ledger-practices-create-a-ledgerrc) <!-- 2016-09-18 -->
  ([Ledger Practices series](https://felixcrux.com/blog/ledger-practices))
- [Marcin Borkowski: Ledger – virtual postings aka envelopes](http://mbork.pl/2016-07-18_Ledger_–_virtual_postings_aka_envelopes) <!-- 2016/7/18 -->
- [Karan Ahuja: Hledger Improvements Wishlist.](http://www.karanahuja.in/2016-05-17-Hledger-Improvements-Wishlist/) <!-- 2016/5/17 -->
- [Alex Johnstone: Managing my personal finances with beancount](https://alexjj.com/blog/2016/managing-my-personal-finances-with-beancount/) <!-- 2016/2/27 -->

### in 2015

- [Pete Keen: Program Your Finances: Algorithmic Savings](https://www.petekeen.net/program-your-finances-algorithmic-savings) <!-- 2015/6/16 -->
- [Pete Keen: Program Your Finances: Envelope Budgeting](https://www.petekeen.net/program-your-finances-envelope-budgeting) <!-- 2015/4/7 -->
- [Stefano Rodighiero: hledger-dupes](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html) <!-- 2015/1/4 -->

### in 2014

- [Matthew Turland: Ledger basics and habits](http://matthewturland.com/2014/03/29/ledger-basics-and-habits/) <!-- 2014/3/29 -->

### in 2013

- [Simon Michael: What is hledger?](http://joyful.com/blog/2013-10-20-what-is-hledger.html) <!-- 2013/10/20 -->
- [Simon Michael: More on ledger](http://joyful.com/blog/2013-10-19-more-on-ledger.html) <!-- 2013/10/19 -->
- [Simon Michael: Introducing hledger!](http://joyful.com/blog/2013-10-18-introducing-hledger.html) <!-- 2013/10/18 -->

### in 2012

- [Joey Hess: hledger](http://joeyh.name/blog/entry/hledger) <!-- 2012/12/3 -->
- [Gene Goykhman: An Alternative to QuickBooks](http://goykhman.ca/gene/blog/2012/2012-09-23-an-alternative-to-quickbooks.html) <!-- 2012/9/23 -->
- [LWN: The accounting quest: Ledger](http://lwn.net/Articles/501681/) <!-- 2012/6/13 -->
- [Pete Keen: A Robust Reporting System for Ledger](https://www.petekeen.net/a-robust-reporting-system-for-ledger) <!-- 2012/1/1 -->

### in 2011

- [Pete Keen: Program your Finances: Automated Transactions](https://www.petekeen.net/program-your-finances-automated-transactions) <!-- 2011/12/18 -->
- [Sascha Welter: Doing my own accounting](http://betabug.ch/blogs/ch-athens/1221) <!-- 2011/12/5 -->
- [Clint Adams: Accounting at SFLC](http://www.softwarefreedom.org/blog/2011/sep/07/accounting-at-sflc/) <!-- 2011/9/7 -->
- [Pete Keen: Program your Finances: Vacation Tracking](https://www.petekeen.net/program-your-finances-vacation-tracking) <!-- 2011/8/4 -->
- [Pete Keen: Program your Finances: Reporting for Fun and Profit](https://www.petekeen.net/program-your-finances-reporting-for-fun-and-profit) <!-- 2011/7/9 -->

### in 2010

- [Pete Keen: Program your Finances: Command-line Accounting](https://www.petekeen.net/keeping-finances-with-ledger) <!-- 2010/12/31 estimate -->
- [Christine Spang: [h]ledger rocks my world](http://blog.spang.cc/posts/hledger_rocks_my_world/) <!-- 2010/7/5 -->
<!-- MIA: -->
<!-- - [Roman Cheplyaka: hledger](http://ro-che.blogspot.com/2010/02/hledger.html) 2010 -->
<!-- - [Fabrice Niessen on Ledger, hledger, beancount, CSV2Ledger](http://www.mygooglest.com/fni/ledger.html) 2010 -->

### in 2009

- [советы: Ledger — бухучёт в командной строке](http://s.arboreus.com/2009/05/personal-accounting-in-command-line.html) ([english](http://translate.google.com/translate?hl=en&sl=ru&u=http://s.arboreus.com/2009/05/personal-accounting-in-command-line.html)) <!-- 2009/5/15 -->

### in 2006

- [Joe Barr: Ledger, the bran muffin of accounting tools](https://www.linux.com/news/ledger-bran-muffin-accounting-tools) <!-- 2006/11/10 -->


## common tasks

### choosing accounts

- [sample chart of accounts for a freelancer](https://gist.github.com/simonmichael/9936299)
- [Beancount Cookbook: Account Naming Conventions](https://docs.google.com/document/d/1Tss0IEzEyAPuKSGeNsfNgb0BfiW2ZHyP5nCFBW1uWlk/view#heading=h.tu0f1kydrpgn)
- [Mint: Ways to Categorize Your Spending](https://www.mint.com/mint-categories)
- [Simplified version of double-entry bookkeeping for personal and business finance?](http://money.stackexchange.com/questions/47561/simplified-version-of-double-entry-bookkeeping-for-personal-and-business-finance)

### choosing cash vs accrual

- [Ledger Practices: Accrual vs. Cash Basis Accounting](https://felixcrux.com/blog/ledger-practices-accrual-vs-cash-basis-accounting)

### entering data

- [hledger Basics tutorial: Record a transaction with “hledger add”](https://hledger.org/basics-tutorial.html#record-a-transaction-with-hledger-add)
- ledger-mode:\
  `C-c C-a` add a transaction,\
  `C-c C-b` amount calculator,\
  `C-c C-c`/`C-c C-e` toggle cleared
- [Beancount: Command Line Accounting Cookbook](https://docs.google.com/document/d/1Tss0IEzEyAPuKSGeNsfNgb0BfiW2ZHyP5nCFBW1uWlk)
- [Accounting bookkeeping entries](https://github.com/simonmichael/hledger/wiki/more-docs#accounting)
- [ledger-envelope-generator.rb](https://github.com/simonmichael/hledger/issues/313)
- [Ledger Practices: Separate Your Journals](https://felixcrux.com/blog/ledger-practices-separate-your-journals)
- [UI tools](#ui-console)

### importing

- [Ledger: The convert command](http://www.ledger-cli.org/3.0/doc/ledger3.html#The-convert-command)
- [hledger: CSV format](https://hledger.org/csv.html)
- [hledger: Convert CSV files](https://hledger.org/convert-csv-files.html)
- [Beancount: Importing External Data in Beancount](https://docs.google.com/document/d/11EwQdujzEo2cxqaF5PgxCEZXWfKKQCYSMfdJowp_1S8)
- [Beancount: Prices in Beancount](https://docs.google.com/document/d/1thYRAMell_QT1Da1F_laprSs6BlROZjyK_h3V8qHW9c)
- [Payment matching done right](https://tomszilagyi.github.io/payment-matching/)
- ["Full-fledged hledger" tutorial](https://github.com/adept/full-fledged-hledger)
- ["Hledger Flow" tutorial/slideshow](https://github.com/apauley/hledger-flow)
- [import tools](#data-import)

### reconciling

- ledger-mode: `C-c C-r`
- [How to use ledger(1) to reconcile your chequebook with your bank statement](https://mumble.net/~campbell/2017/02/26/ledger/HOWTO-reconcile-cheques)
- [How to use ledger(1) to reconcile your payments with your payment processor](https://mumble.net/~campbell/2017/02/26/ledger/HOWTO-reconcile-payments)

### reporting

- [example queries for Beancount](http://aumayr.github.io/beancount-sql-queries/)
- [hledger Cookbook: Rewrite account names](https://github.com/simonmichael/hledger/wiki/Rewrite-account-names)
- [Report Scripts for Ledger CLI with Gnuplot](https://www.sundialdreams.com/report-scripts-for-ledger-cli-with-gnuplot/)
- [Full-fledged hledger tutorial](https://github.com/adept/full-fledged-hledger)
- [Ledger Practices: Reporting Special Events Separately From Regular Spending](https://felixcrux.com/blog/ledger-practices-reporting-special-events-separately)
- [Program your Finances: Reporting for Fun and Profit](https://www.petekeen.net/program-your-finances-reporting-for-fun-and-profit)
- [Pete Keen: A Robust Reporting System for Ledger](https://www.petekeen.net/a-robust-reporting-system-for-ledger) 2012<!-- /1/1 -->

### budgeting

*The purpose of a budget is to help thy purse to fatten.
It is to assist thee to have thy necessities, and insofar as attainable, thy other desires.
It is to enable thee to realise thy most cherished desires, by defending them from thy casual wishes.
Like a bright light in a dark cave, thy budget shows up the leaks from thy purse,
and enables thee to stop them and control thy expenditures for definite and gratifying purposes.
-- The Richest Man in Babylon*

**Periodic budgeting: setting per-period goals**

- [Ledger: Budgeting](http://www.ledger-cli.org/3.0/doc/ledger3.html#Budgeting)
- [hledger: Budget report](https://hledger.org/hledger.html#budget-report)
- [reddit: simple yearly budget example](https://www.reddit.com/r/plaintextaccounting/comments/e5sl1m/advice_on_projectionsforecasts/)
- [hledger: Budgeting and forecasting: Periodic budget](https://hledger.org/budgeting-and-forecasting.html#periodic-budget)

**Envelope budgeting: pre-allocating funds**

- [reddit: New blogpost: Budgeting for annual expenses with Hledger](https://www.reddit.com/r/plaintextaccounting/comments/l9aiup/new_blogpost_budgeting_for_annual_expenses_with/)
- [Michael Walker: I Need A Budget](https://www.barrucadu.co.uk/posts/etc/2017-12-16-i-need-a-budget.html)
- [Simon Michael: envelope budgeting example](https://gist.github.com/simonmichael/a1addcb652da4e78b183)
- [hledger: Budgeting and forecasting: Envelope budget](https://hledger.org/budgeting-and-forecasting.html#envelope-budget)

**Envelope budgeting with auto postings**

- [fransiska: Budgeting with ledger-cli while tracking used points](https://fransiska.github.io/ledger/2019/10/24/ledger-budget-point) <!-- 2019/10/24 -->
- [Mykola Orliuk: Budgeting with hledger](https://gist.github.com/ony/bbec599c0893e676b772559909b81de6) <!-- 2017/1/14 -->
- [bsilvereagle: Envelope Budgeting with ledger](https://frdmtoplay.com/envelope-budgeting-with-ledger) <!-- 2016/10/28 -->
- [Marcin Borkowski: Ledger – virtual postings aka envelopes](http://mbork.pl/2016-07-18_Ledger_–_virtual_postings_aka_envelopes) <!-- 2016/7/18 -->
- [Pete Keen: Program Your Finances: Envelope Budgeting](https://www.petekeen.net/program-your-finances-envelope-budgeting) <!-- 2015/4/7 -->

**Envelope budgeting with auto postings, org-mode and babel**

- [Org tutorials: Weaving a budget with Org & ledger](http://orgmode.org/worg/org-tutorials/weaving-a-budget.html)
- [Alan Schmitt: Using Org for Ledger Reports and Budget](http://alan.petitepomme.net/tips/ledger_and_org.html)

**More**

- [hledger: annotated example budget journals](https://github.com/simonmichael/hledger/tree/master/examples/budgeting)
- [hledger: Budgeting](https://hledger.org/budgeting.html)


### forecasting

- [Ledger: Forecasting](http://www.ledger-cli.org/3.0/doc/ledger3.html#Forecasting)
<!-- down 2017/4/28 - [Notes on Installing and Using ledger on NetBSD](http://atomicules.co.uk/2015/06/20/Notes-on-installing-and-using-Ledger-on-NetBSD.html) and forecasting -->

### invoicing

- [invoicing entries](https://gist.github.com/simonmichael/986a65106a9db1f8bd68)
- [Ledger Practices: Tracking Reimbursable Expenses](https://felixcrux.com/blog/ledger-practices-tracking-reimbursable-expenses)

### multiple currencies

- [Peter Selinger: Tutorial on multiple currency accounting](http://www.mscs.dal.ca/~selinger/accounting/tutorial.html)
- [ledger-currencies tutorial](https://github.com/mikekchar/ledger-currencies)
- [Understanding the valuation function and the market function](https://groups.google.com/d/msg/ledger-cli/dc6F-HvZOyE/5IuoxzMOBwAJ)

### trip expenses

- [Program your Finances: Vacation Tracking](https://www.petekeen.net/program-your-finances-vacation-tracking) 2011<!-- /8/4 -->

### shared expenses

- [Beancount: Sharing Expenses in Beancount](https://docs.google.com/document/d/1FRcJqUfeAMQO6KjG94w6rF7VajMGJaFplmF1Wu0rCHY)
- [Keeping (financial) score with Ledger](http://sachachua.com/blog/2014/11/keeping-financial-score-ledger/)
- [Program Your Finances: Automated Transactions](https://www.petekeen.net/program-your-finances-automated-transactions)
- [How to keep control of shared expenses inside marriage?](http://money.stackexchange.com/questions/7101/how-to-keep-control-of-shared-expenses-inside-marriage)
- [How to use ledger(1) to split shared expenses](https://mumble.net/~campbell/2017/02/26/ledger/HOWTO-sharedexpense)
- [Ledger Practices: Tracking Accounts Jointly and Separately](https://felixcrux.com/blog/ledger-practices-tracking-accounts-jointly-and-separately)

### taxes

- [How to use ledger(1) to track US income taxes](https://mumble.net/~campbell/2017/08/06/ledger/HOWTO-track-tax)
- [Another Ledger user's perspective](https://groups.google.com/d/msg/beancount/QV4qgpFbtJ8/9fSgMw-XGC8J) 2015

### time tracking

- [Ledger: Time Keeping](https://www.ledger-cli.org/3.0/doc/ledger3.html#Time-Keeping)
- [hledger: Timeclock files](https://hledger.org/timeclock.html)
- [hledger: Timedot files](https://hledger.org/timedot.html)
- [Timetracking and billing with (h)ledger](https://github.com/anarcat/ledger-timetracking)
- [hledger: Time planning](https://hledger.org/time-planning.html)
- [time tracking tools](#time-logging)
- [reddit: Ledger CLI time tracking and transaction account linking](https://www.reddit.com/r/plaintextaccounting/comments/e2sd0k/ledger_cli_time_tracking_and_transaction_account/)
- [arbeitszeit.py](https://github.com/haansn08/arbeitszeit.py)

### inventory tracking

- [Accounting Savvy for Business Owners ch. 8](http://www.amazon.com/Accounting-Savvy-Business-Owners-Essentials/dp/193292518X)

### investing

- [Beancount: Inventory Booking](https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4), [discussion](https://groups.google.com/forum/#!searchin/ledger-cli/inventory/ledger-cli/aQvbjTZa7HE/x3KNPteJWPsJ)
- [hledger: Track investments](https://hledger.org/track-investments.html)
- [hledger: Track investments 2](https://hledger.org/investments.html)

### non-profit accounting

- [Non-Profit Accounting With Ledger CLI, A Tutorial](https://github.com/conservancy/npo-ledger-cli/blob/master/npo-ledger-cli-tutorial.md)

### exporting

- [Ledger: The csv command](http://www.ledger-cli.org/3.0/doc/ledger3.html#The-csv-command)
- [hledger: Output format](https://hledger.org/hledger.html?highlight=budget#output-format)
- [Beancount: Exporting Your Portfolio](https://docs.google.com/document/d/1mNyE_ONuyEkF_I2l6V_AoAU5HJgI654AOBhHsnNPPqw)

### customising

- [Ledger Practices: Create a .ledgerrc](https://felixcrux.com/blog/ledger-practices-create-a-ledgerrc)

### API access

- [Ledger: Extending with Python](https://www.ledger-cli.org/3.0/doc/ledger3.html#Extending-with-Python)
- [Ledger Python 3 Support](https://groups.google.com/forum/#!topic/ledger-cli/C99w-79Jq8o) Python
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) Python
- [hledger-lib](http://hackage.haskell.org/package/hledger-lib),
  [hledger](http://hackage.haskell.org/package/hledger),
  [an example](http://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html)
- [hledger-web: JSON API](https://hledger.org/hledger-web.html#json-api)
- [node-hledger](https://github.com/rstacruz/node-hledger) JavaScript


</div> <!-- section -->

<div id="section6" style="text-align:center;">

<hr>
\(c) 2016-2019 [Simon Michael](http://joyful.com) & contributors |
Send updates via [github](https://github.com/plaintextaccounting/plaintextaccounting.github.io)
([latest changes](https://github.com/plaintextaccounting/plaintextaccounting.github.io/commits/master))

</div>

