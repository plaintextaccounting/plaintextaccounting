% Plain Text Accounting (PTA)

---
toc: false
...


<!-- For editing tips, see ../README.md -->

<div style="float:right; width:30%; margin:0 1em; z-index:-1;">
<img src="images/pta-avatar.jpg" width=200 style="border-radius:50%;">
</div>

<div id="intro" style="font-size:larger;">

***Plain text accounting*** is a way of doing bookkeeping and accounting 
with plain text files and scriptable, command-line-friendly software, such as
Ledger, hledger, or Beancount.

Welcome!
This site collects the PTA community's tools, docs and practices. 
It is maintained by Simon&nbsp;Michael (hledger project leader, PTA fan)
and contributors like you. 
We invite you to join the [chat](#news-discussion)
or help improve the [content](https://github.com/plaintextaccounting/plaintextaccounting).

</div>

<div id="sitemap">
**Site map**\
**[[What is Plain Text Accounting ?]]**\
**[News & discussion](#news-discussion)**\
**[Blogs & articles](#blogs-articles)**\
**[Videos](#videos)**\
**[Slides](#slides)**\
**[[FAQ]]**\
**[[Cookbook]]**
\
**[Docs](#docs):**
  [Accounting basics](#accounting-basics)
, [PTA app docs](#pta-app-docs)
, [comparisons](#comparisons)
, [intros](#intros)
, [cheatsheets](#cheatsheets)
, [cookbooks](#cookbooks)
, [FAQs](#faqs)
\
**[Software](#software):**
  [PTA apps](#pta-apps)
, [Editor plugins](#editor-plugins)
, [Data import/conversion](#data-importconversion)
, [Price fetching](#price-fetching)
, [Data generation](#data-generation)
, [Workflows](#workflows)
, [Formatting](#formatting)
, [Reporting](#reporting)
, [Time logging](#time-logging)
, [UI, console](#ui-console)
, [UI, curses](#ui-curses)
, [UI, GUI](#ui-gui)
, [UI, web](#ui-web)
, [UI, mobile](#ui-mobile)
, [Library](#library)
, [Utilities](#utilities)
, [API](#api)
</div>


## News & discussion

**Site updates**
- [commits](https://github.com/plaintextaccounting/plaintextaccounting/commits/master)
- [contributors](https://github.com/plaintextaccounting/plaintextaccounting/graphs/contributors)
- [issues](https://github.com/plaintextaccounting/plaintextaccounting/issues?q=is%3Aissue+)
\
**Plain Text Accounting forum**
- [forum.plaintextaccounting.org](https://forum.plaintextaccounting.org)
\
**Chat**
- [#plaintextaccounting on matrix](https://matrix.to/#/#plaintextaccounting:matrix.org)
- [matrix space](https://matrix.to/#/#plaintextaccounting-space:matrix.org)
- [#plaintextaccounting on IRC](https://web.libera.chat/#plaintextaccounting)
- [project chats](#pta-apps)
\
**Reddit**
- [/r/plaintextaccounting](https://www.reddit.com/r/plaintextaccounting/new)
\
**Lemmy**
- [lemmy.world/c/plaintextaccounting](https://lemmy.world/c/plaintextaccounting?sort=New)
\
**Hacker News**
- [stories](https://hn.algolia.com/?query=plain%20text%20accounting&sort=byDate&prefix=false&page=0&dateRange=all&type=story)
- [comments](https://hn.algolia.com/?query=plain%20text%20accounting&sort=byDate&prefix=false&page=0&dateRange=all&type=comment)
\
**Mastodon**
- [#plaintextaccounting](https://fosstodon.org/tags/plaintextaccounting)
- [#ledgercli](https://fosstodon.org/tags/ledgercli)
- [#hledger](https://fosstodon.org/tags/hledger)
- [#beancount](https://fosstodon.org/tags/beancount)
\
**Twitter**
- [#plaintextaccounting](https://twitter.com/hashtag/plaintextaccounting?f=live)
- [#ledgercli](https://twitter.com/hashtag/ledgercli?f=live)
- [#hledger](https://twitter.com/hashtag/hledger?f=live)
- [#beancount](https://twitter.com/hashtag/beancount?f=live)
- [\@LedgerTips](https://twitter.com/LedgerTips)
\
**Stack Exchange**
- [ledger-cli tag](https://money.stackexchange.com/questions/tagged/ledger-cli?tab=newest)
- [ledger-cli search](https://money.stackexchange.com/search?tab=newest&q=ledger-cli)
- [hledger tag](https://money.stackexchange.com/questions/tagged/hledger?tab=newest)
- [hledger search](https://money.stackexchange.com/search?tab=newest&q=hledger)
<!-- - [beancount](https://money.stackexchange.com/search?tab=newest&q=beancount) -->
\
**Project specific**
- [Project mail lists](#pta-apps)
- [This Week In Hledger](https://hledger.org/news.html)


## Blogs & articles

*A partial list, contributions welcome*

### 2024 {#2024}

- [Robert Nielsen: Don't make this planning mistake with hledger](https://hledgerfan.com/dont-make-this-planning-mistake-with-hledger/)  <!-- 2024-03-07 -->
- [Robert Nielsen: Needs, strategies and spending](https://hledgerfan.com/needs-strategies-and-spending/)  <!-- 2024-02-29 -->
- [Robert Nielsen: Creating a positive impact](https://hledgerfan.com/creating-a-positive-impact/)  <!-- 2024-02-22 -->
- [Robert Nielsen: Include was the key](https://hledgerfan.com/include-was-the-key/)  <!-- 2024-02-15 -->
- [Robert Nielsen: The code to generate random hledger transactions](https://hledgerfan.com/the-code-to-generate-random-hledger-transactions/)  <!-- 2024-02-08 -->
- [Robert Nielsen: Working program to generate fake hledger transactions](https://hledgerfan.com/working-program-to-generate-fake-hledger-transactions/) <!-- 2024-02-01 -->
- [Robert Nielsen: Creating phony hledger transactions](https://hledgerfan.com/creating-phony-hledger-transactions/)  <!-- 2024-01-25 -->
- [Robert Nielsen: First step in closing out 2023](https://hledgerfan.com/first-step-in-closing-out-2023/)  <!-- 2024-01-18 -->
- [Robert Nielsen: Why I installed Ledger](https://hledgerfan.com/why-i-installed-ledger/)  <!-- 2024-01-11 -->
- [Robert Nielsen: Better Emacs = better hledger](https://hledgerfan.com/better-emacs-better-hledger)  <!-- 2024-01-04 -->
- [Serge Wroclawski: Implementing Profit First with Plain Text Accounting](https://blog.emacsen.net/profit-first-plain-text-accounting.html) <!-- 2024-01-04 -->
- [Serge Wroclawski: I use Profit First, the Theory of Constraints, and Plain Text Accounting to help my small business](https://blog.emacsen.net/profit-first-constraints-plain-text-accounting.html) <!-- 2024-01-02 -->

### 2023 {#2023}

- [Tavis Ormandy: Ledger](https://lock.cmpxchg8b.com/ledger.html)  <!-- 2023-12-?? -->
- [Robert Nielsen: Fixing my mistake after accidentally adding pending transactions](https://hledgerfan.com/fixing-my-mistake-after-accidentally-adding-pending-transactions/) <!-- 2023-12-28 -->
- [Robert Nielsen: A better desc(ription)](https://hledgerfan.com/a-better-description/) <!-- 2023-12-21 -->
- [Robert Nielsen: Upgrading to hledger 1.32, a book on graphic design, and ledger-mode-clean-buffer](https://hledgerfan.com/upgrading-to-hledger-1-32-a-book-on-graphic-design-and-ledger-mode-clean-buffer/) <!-- 2023-12-07 -->
- [Ian Cross: Hacking on a Ledger](https://galagic.com/post/20231201155114/hacking-on-a-ledger/) <!-- 2023-12-01 -->
- [Robert Nielsen: Fewer errors in reconciling](https://hledgerfan.com/fewer-errors-in-reconciling/)  <!-- 2023-11-30 -->
- [Robert Nielsen: Using hledger for thanksgiving](https://hledgerfan.com/using-hledger-for-thanksgiving/)  <!-- 2023-11-23 -->
- [Jonathan Dowland: HLedger, regex matches and field assignments](https://jmtd.net/log/hledger/matchers/) <!-- 2023-11-17 -->
- [Robert Nielsen: Zooming out and in](https://hledgerfan.com/zooming-out-and-in/) <!-- 2023-11-16 -->
- [Knut Magnus Aasrud: You should track your finances in TOML](https://kmaasrud.com/blog/track-finances-in-toml.html) <!-- 2023-11-13 -->
- [Robert Nielsen: (Almost) everything you wanted to know about hledger transactions](https://hledgerfan.com/almost-everything-you-wanted-to-know-about-hledger-transactions/) <!-- 2023-11-09 -->
- [Robert Nielsen: Beginners corner: a basic hledger transaction](https://hledgerfan.com/beginners-corner-a-basic-hledger-transaction/) <!-- 2023-11-02 -->
- [Robert Nielsen: Why i created the hledger fan youtube channel](https://hledgerfan.com/why-i-created-the-hledger-fan-youtube-channel/) <!-- 2023-10-26 -->
- [Robert Nielsen: A not so capital idea for saving time](https://hledgerfan.com/a-not-so-capital-idea-for-saving-time/) <!-- 2023-10-19 -->
- [Robert Nielsen: The richest hledger user in Babylon (part 3)](https://hledgerfan.com/the-richest-hledger-user-in-babylon-part-3/) <!-- 2023-10-12 -->
- [Robert Nielsen: The richest hledger user in Babylon (part 2)](https://hledgerfan.com/the-richest-hledger-user-in-babylon-part-2/) <!-- 2023-10-05 -->
- [Robert Nielsen: The richest hledger user in Babylon](https://hledgerfan.com/the-richest-hledger-user-in-babylon/) <!-- 2023-09-28 -->
- [Robert Nielsen: Accounting before hledger](https://hledgerfan.com/accounting-before-hledger/) <!-- 2023-09-21 -->
- [Robert Nielsen: Atomic hledger habits](https://hledgerfan.com/atomic-hledger-habits/) <!-- 2023-09-14 -->
- [Robert Nielsen: Hledger 1.31 now available, using “not,” awk part 2, podcast of the week](https://hledgerfan.com/hledger-1-31-now-available-using-not-awk-part-2-podcast-of-the-week/) <!-- 2023-09-07 -->
- [Robert Nielsen: Trying my wings with awk](https://hledgerfan.com/trying-my-wings-with-awk/) <!-- 2023-08-31 -->
- [Robert Nielsen: Making changes with and without sed](https://hledgerfan.com/making-changes-with-and-without-sed/) <!-- 2023-08-24 -->
- [Robert Nielsen: Three ways to make changes to an hledger data file](https://hledgerfan.com/three-ways-to-make-changes-to-an-hledger-data-file/) <!-- 2023-08-17 -->
- [Robert Nielsen: Good intentions or good results?](https://hledgerfan.com/good-intentions-or-good-results/) <!-- 2023-08-10 -->
- [Robert Nielsen: Why use hledger?](https://hledgerfan.com/why-use-hledger/) <!-- 2023-08-03 -->
- [Robert Nielsen: hledger book of the month](https://hledgerfan.com/hledger-book-of-the-month/) <!-- 2023-07-27 -->
- [Robert Nielsen: Moving forward by going backward](https://hledgerfan.com/moving-forward-by-going-backward/) <!-- 2023-07-20 -->
- [Robert Nielsen: Invisible windows](https://hledgerfan.com/invisible-windows/) <!-- 2023-07-19 -->
- [Robert Nielsen: Really review, really](https://hledgerfan.com/really-review-really/) <!-- 2023-07-06 -->
- [Robert Nielsen: Helping others see how useful hledger can be](https://hledgerfan.com/helping-others-see-how-useful-hledger-can-be/) <!-- 2023-06-29 -->
- [Robert Nielsen: Blog entries prior to june 2023 site update](https://hledgerfan.com/hello-world/) <!-- 2023-06-26 -->
- [Beancount.io: Tracking real estate in Beancount](https://beancount.io/page/2023-06-09-tracking-real-estate) <!-- 2023-06-09 -->
- [Jonathan Dowland: Separate hledgers](https://jmtd.net/log/hledger/separate/) <!-- 2023-04-24 -->
- [Josh Cunningham: Scratching an Itch: Command Line Budgeting](https://www.joshcanhelp.com/budget-cli/) <!-- 2023-03-22 -->
- [Jonathan Dowland: date warping in HLedger](https://jmtd.net/log/date_warping/) <!-- 2023-03-06 -->
- [Jonathan Dowland: HLedger, 1 year on](https://jmtd.net/log/hledger_1yr/) <!-- 2023-02-10 -->

### 2022 {#2022}

- [Jonathan Dowland: eventual consistency](https://jmtd.net/log/eventual_consistency/) <!-- 2022-11-22 -->
- [Jonathan Dowland: dues (or blues)](https://jmtd.net/log/hledger/dues/) <!-- 2022-08-17 -->
- [Jonathan Dowland: hledger](https://jmtd.net/log/hledger/) <!-- 2022-04-14 -->

### 2021 {#2021}

- [Jonathan Dowland: hledger footguns](https://jmtd.net/log/hledger_footguns/) <!-- 2021-11-20 -->
- [Arsen Arsenović: Keeping track of finances from many places](https://www.aarsen.me/posts/2021-08-13-personal-finances-with-hledger.html) <!-- 2021-08-15 -->
- [Zoran Zaric: Budgeting for annual expenses with Hledger](http://rantsideasstuff.com/posts/2021/01/31-budgeting-for-annual-expenses-with-hledger/) <!-- 2021/01/31 -->
<!-- - [Samuel Walladge: Tracking capital gains with hledger](https://www.swalladge.net/archives/2021/01/30/hledger-tracking-capital-gains/) <\!-- 2021/01/30 -\-> -->
- [Duarte O.Carmo: Hacking on my finances (Part 2: Beancount on Beanstalk)](https://duarteocarmo.com/blog/hacking-on-my-finances-part-2-beancount-on-beanstalk.html) <!-- 2021/01/15 -->

### 2020 {#2020}

- [Duarte O.Carmo: Hacking on my finances](https://duarteocarmo.com/blog/hacking-on-my-finances.html) <!-- 2020/10/19 -->
- [Conversations in Code: Episode 3 / Introduction to Plain Text Accounting](https://www.reddit.com/r/plaintextaccounting/comments/ivrbdu/announcing_a_new_podcast_fossopensource_related/) <!-- 2020/9/19 --> [podcast]
- [Peter Hogg: Reconciling Ledger](https://pig-monkey.com/2020/08/reconciling-ledger/) <!-- 2020/8/6 -->
- [Peter Hogg: Receipts and Ledger](https://pig-monkey.com/2020/08/receipts-ledger/) <!-- 2020/8/5 -->
- [Peter Hogg: Tracking Cash with Ledger](https://pig-monkey.com/2020/08/ledger-cash/) <!-- 2020/8/4 -->
- [Peter Hogg: Organizing Ledger](https://pig-monkey.com/2020/08/organizing-ledger/) <!-- 2020/8/3 -->
- [Mari Donkers: KMyMoney to HLedger conversion](https://photonsphere.org/posts-output/2020-05-31-kmymoney2hledger) <!-- 2020/5/31 -->
- [Charles Hoffman: Plain Text Accounting](https://xbrl.squarespace.com/journal/2020/5/5/plain-text-accounting.html) <!-- 2020/5/5 -->
- [Charles Hoffman: Fat Free Accounting: Ledger](https://xbrl.squarespace.com/journal/2020/5/4/fat-free-accounting-ledger.html) <!-- 2020/5/4 -->
- [Lee Yingtong Li: Using selenium to scrape/import bank transactions for ledger-cli](https://yingtongli.me/blog/2020/04/29/hbs-scrape.html) <!-- 20200429 -->
- [Lee Yingtong Li: ledger-pyreport: Formal accounting reports for ledger-cli](https://yingtongli.me/blog/2020/03/31/ledger-pyreport.html) <!-- 2020/3/31 -->
- [Lee Yingtong Li: Incorrect accounting of unrealised gains in ledger-cli](https://yingtongli.me/blog/2020/03/31/ledger-gains.html) <!-- 2020/3/31 -->
- [Christian Egli: Quick and dirty PDF reports for Plain Text Accounting](https://egli.dev/posts/quick-and-dirty-pdf-reports-for-plain-text-accounting/) <!-- 2020/2/13 -->

### 2019 {#2019}

- [Lee Yingtong Li: FIFO inventory with ledger-cli](https://yingtongli.me/blog/2019/12/11/ledger-fifo.html) <!-- 2019/12/11 -->
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

### 2018 {#2018}

- [Felix Crux: Tracking Accounts Jointly and Separately](https://felixcrux.com/blog/ledger-practices-tracking-accounts-jointly-and-separately) <!-- 2018-10-29) -->
- [Pepijn Looije: Real World Ledger part 1: Weighing Eggs in Baskets](https://p.epij.nl/ledger-cli/accounting/2018/08/23/real-world-ledger-part-1/) <!-- 2018/8/23 -->
- [Zoran Zaric: Depreciation in Personal Finance with Hledger](http://rantsideasstuff.com/posts/2018/07/08-depreciation-in-personal-finance-with-hledger/) <!-- 2018/7/4 -->
- [Zoran Zaric: Tracking Investments in Lots with Hledger](http://rantsideasstuff.com/posts/2018/07/01-tracking-investments-in-lots-with-hledger/) <!-- 2018/7/1 -->
- [Michael Walker: Currency Conversion](https://memo.barrucadu.co.uk/currency-conversion.html) <!-- 2018/5/31 -->
- [LWN: Counting beans - and more - with Beancount](https://lwn.net/SubscriberLink/751874/a38128abb72e45c5/) <!-- 2018/4/19 -->
- [Michael Walker: Personal Finance](https://memo.barrucadu.co.uk/personal-finance.html) <!-- 2018/1/7 -->
- [Siddhant Goel: Managing Personal Finances using Python](https://sgoel.dev/posts/managing-personal-finances-using-python/) <!-- 2018/9/16 -->

### 2017 {#2017}

- [Michael Walker: I Need A Budget](https://www.barrucadu.co.uk/posts/etc/2017-12-16-i-need-a-budget.html) <!-- 2017/12/16 -->
- [Accounting for the simple minds with plain text accounting](https://dustri.org/b/accounting-for-the-simple-minds-with-plain-text-accounting.html) <!-- 2017/12/1 -->
- [S.M. Oliva: Inventory, Part I: Will It Probate?](https://clprobate.wordpress.com/2017/08/31/inventory-part-1-will-it-probate/) <!-- 2017/8/31 -->
- [S.M. Oliva: A Simple First Account](https://clprobate.wordpress.com/2017/07/30/a-simple-first-account/) <!-- 2017/7/30 -->
- [S.M. Oliva: The Basics of hledger](https://clprobate.wordpress.com/2017/07/30/the-basics-of-hledger) <!-- 2017/7/30 -->
- [S.M. Oliva: Introduction to Command Line Probate](https://clprobate.wordpress.com/2017/07/05/introduction-to-command-line-probate/) <!-- 2017/7/5 -->
- [LWN: Restarting the free accounting search](https://lwn.net/Articles/729088/) <!-- 2017/7/28 -->
- [Michael Walker: Visualise your finances with hledger, InfluxDB, and Grafana](https://www.barrucadu.co.uk/posts/etc/2017-05-18-visualise-your-finances-with-hledger-influxdb-grafana.html) <!-- 2017/5/18 -->

### 2016 {#2016}

- [Felix Crux: Accrual vs. Cash Basis Accounting](https://felixcrux.com/blog/ledger-practices-accrual-vs-cash-basis-accounting) <!-- 2016-11-30 -->
- [bsilvereagle: Envelope Budgeting with ledger](https://frdmtoplay.com/envelope-budgeting-with-ledger) <!-- 2016/10/28 -->
- [Felix Crux: Tracking Reimbursable Expenses](https://felixcrux.com/blog/ledger-practices-tracking-reimbursable-expenses) <!-- 2016-10-13 -->
- [Felix Crux: Separate Your Journals](https://felixcrux.com/blog/ledger-practices-separate-your-journals) <!-- 2016-09-28 -->
- [Felix Crux: Reporting Special Events Separately From Regular Spending](https://felixcrux.com/blog/ledger-practices-reporting-special-events-separately) <!-- 2016-09-23 -->
- [Felix Crux: Create a .ledgerrc](https://felixcrux.com/blog/ledger-practices-create-a-ledgerrc) <!-- 2016-09-18 -->
  ([Ledger Practices series](https://felixcrux.com/blog/ledger-practices))
- [Marcin Borkowski: Ledger – virtual postings aka envelopes](https://mbork.pl/2016-07-18_Ledger_–_virtual_postings_aka_envelopes) <!-- 2016/7/18 -->
<!-- gone - [Karan Ahuja: Hledger Improvements Wishlist.](http://www.karanahuja.in/2016-05-17-Hledger-Improvements-Wishlist/) <\!-- 2016/5/17 -\-> -->
- [Alex Johnstone: Managing my personal finances with beancount](https://alexjj.com/posts/2016/managing-my-personal-finances-with-beancount/) <!-- 2016/2/27 -->

### 2015 {#2015}

- [Pete Keen: Program Your Finances: Algorithmic Savings](https://www.petekeen.net/program-your-finances-algorithmic-savings) <!-- 2015/6/16 -->
- [Pete Keen: Program Your Finances: Envelope Budgeting](https://www.petekeen.net/program-your-finances-envelope-budgeting) <!-- 2015/4/7 -->
- [Stefano Rodighiero: hledger-dupes](https://stefanorodighiero.net/posts/2015-01-04-hledger-find-duplicate-accounts.html) <!-- 2015/1/4 -->

### 2014 {#2014}

- [Matthew Turland: Ledger basics and habits](http://matthewturland.com/2014/03/29/ledger-basics-and-habits/) <!-- 2014/3/29 -->

### 2013 {#2013}

- [Simon Michael: What is hledger?](http://joyful.com/blog/2013-10-20-what-is-hledger.html) <!-- 2013/10/20 -->
- [Simon Michael: More on ledger](http://joyful.com/blog/2013-10-19-more-on-ledger.html) <!-- 2013/10/19 -->
- [Simon Michael: Introducing hledger!](http://joyful.com/blog/2013-10-18-introducing-hledger.html) <!-- 2013/10/18 -->

### 2012 {#2012}

- [Joey Hess: hledger](http://joeyh.name/blog/entry/hledger) <!-- 2012/12/3 -->
- [Gene Goykhman: An Alternative to QuickBooks](http://goykhman.ca/gene/blog/2012/2012-09-23-an-alternative-to-quickbooks.html) <!-- 2012/9/23 -->
- [LWN: The accounting quest: Ledger](http://lwn.net/Articles/501681/) <!-- 2012/6/13 -->
- [Pete Keen: A Robust Reporting System for Ledger](https://www.petekeen.net/a-robust-reporting-system-for-ledger) <!-- 2012/1/1 -->

### 2011 {#2011}

- [Pete Keen: Program your Finances: Automated Transactions](https://www.petekeen.net/program-your-finances-automated-transactions) <!-- 2011/12/18 -->
- [Clint Adams: Accounting at SFLC](http://www.softwarefreedom.org/blog/2011/sep/07/accounting-at-sflc/) <!-- 2011/9/7 -->
- [Pete Keen: Program your Finances: Vacation Tracking](https://www.petekeen.net/program-your-finances-vacation-tracking) <!-- 2011/8/4 -->
- [Pete Keen: Program your Finances: Reporting for Fun and Profit](https://www.petekeen.net/program-your-finances-reporting-for-fun-and-profit) <!-- 2011/7/9 -->

### 2010 {#2010}

- [Pete Keen: Program your Finances: Command-line Accounting](https://www.petekeen.net/keeping-finances-with-ledger) <!-- 2010/12/31 estimate -->
- [Christine Spang: [h]ledger rocks my world](http://blog.spang.cc/posts/hledger_rocks_my_world/) <!-- 2010/7/5 -->
<!-- MIA: -->
<!-- - [Roman Cheplyaka: hledger](http://ro-che.blogspot.com/2010/02/hledger.html) 2010 -->
<!-- - [Fabrice Niessen on Ledger, hledger, beancount, CSV2Ledger](http://www.mygooglest.com/fni/ledger.html) 2010 -->

### 2009 {#2009}

- [советы: Ledger — бухучёт в командной строке](http://s.arboreus.com/2009/05/personal-accounting-in-command-line.html) ([english](http://translate.google.com/translate?hl=en&sl=ru&u=http://s.arboreus.com/2009/05/personal-accounting-in-command-line.html)) <!-- 2009/5/15 -->

### 2006 {#2006}

- [Joe Barr: Ledger, the bran muffin of accounting tools](https://www.linux.com/news/ledger-bran-muffin-accounting-tools) <!-- 2006/11/10 -->


## Videos

- [Edwin Espinoza: Ledger CLI, Personal finance in the command line](https://www.youtube.com/watch?v=EWjoblLoD3k) 2023 <!-- 04-23 -->
- [Prakash Joshi Pax: How to Use Obsidian to Track Your Expenses](https://www.youtube.com/watch?v=UPyy52MfC3Q) 2022 <!-- 12-23 -->
- [Peter Berger: Plain Text Accounting: An Opinionated View](https://www.youtube.com/watch?v=ZDF7xVtKLu0&t=1s) 2022 <!-- 09-02 -->
- [Glenn Ramsey: Plain text accounting for fun and profit](https://youtube.com/watch?v=lazZwTmAEHs) 2022  <!-- 08-26 -->
- [季路LJ: Beancount |简略记账说明](https://www.youtube.com/watch?v=tmkR6umON4A) 2021 <!-- 06-17 -->
- [Robert Nielsen: hledger fan channel](https://www.youtube.com/channel/UCZLxXTjOqLzq4z5Jy0AyWSQ) short hledger beginner lessons, 2019-2021 <!-- 2019-05-27..2021-04-03
- [Simon Michael: Inside hledger: an architectural tour and how-to](https://www.youtube.com/watch?v=6PKmZSHxu0c) 2021 <!-- 05-01 -->
- [Brian Ryall: Managing Your Finances Using Python](https://www.youtube.com/watch?v=mFzctYkktXQ) 2020 <!-- 07-25 -->
- [Steve Anderson: Plain Text Accounting: How to do Signed Number Accounting](https://www.youtube.com/watch?v=FLbe3X3FiT8) 2019 <!-- 12-21 -->
- [Quiliro Ordóñez: ledger-mode lightning talk](https://archive.org/details/ledger-mode_EmacsConf2019) 2019 <!-- 11-02 -->
- [Dickson S. Guedes: Cuide de suas FINANÇAS pessoais ou profissionais usando TEXTO](https://www.youtube.com/watch?v=HmbZh8lWnmE&list=PLqkknzu_rt6mxltdQ4XBS9AEuL8c-JLUH) 2019 <!-- 10-02 -->
- [John Nduli: Plain Text Accounting](https://www.youtube.com/watch?v=GpcD1iH-ZJg) 2019 <!-- 09-22 -->
- [Jean Louis: GNU Emacs database accounting and rant on text ledgers](https://www.youtube.com/watch?v=ixbUQ2wikM0) 2019 <!-- 08-09 -->
- [Cindy Zimmerman: Triple Entry Accounting, Ledger-cli, The blocktree hash tree - Guld Ledger File Format](https://www.youtube.com/watch?v=C0ie2v_FiNU) 2018 <!-- 04-26 -->
- [Colin Dean: Plaintext Accounting with the ledger ecosystem](https://www.youtube.com/watch?v=FJtaM43PgXQ) 2017 <!-- 10-01 -->
- [Colin Dean: Plain Text Accounting](https://www.youtube.com/watch?v=8r5Cp66k4PA) 2017 <!-- 07-12 -->
- [Simon Michael: Hands-on with hledger](https://www.youtube.com/watch?v=H_CdGzLbc7A) 2016 <!-- 09-02 -->
- [Chris Vollick: hledger, an open source accounting tool](https://www.youtube.com/watch?v=-WahFvxhCRc) 2016 <!-- 04-28 -->
- [Austin Walker: Conquering Your Finances with Emacs and Ledger](https://www.youtube.com/watch?v=cjoCNRpLanY) 2016 <!-- 02-18 -->
- [Simon Michael, Randal Schwartz, Simon Phipps: FLOSS Weekly 375: hledger](https://www.youtube.com/watch?v=Xjl-wVJcYpE)
  ([3m overview](https://www.youtube.com/watch?v=qS2UcDV_lbs),
  [show notes](https://twit.tv/shows/floss-weekly/episodes/375))
   2016 <!-- 02-16 -->
- [John Wiegley, Randal Schwartz, Aaron Newcomb: FLOSS Weekly 150: Ledger](https://www.youtube.com/watch?v=TDqrrH-gTt0)
  ([show notes](https://twit.tv/shows/floss-weekly/episodes/150))
  2011

## Slides

- [Simon Michael: Inside hledger: an architectural tour and how-to](https://rawcdn.githack.com/simonmichael/hledger/4013a81af8dd2804c73ecac18fb3e7e4745a4275/doc/haskellerz/haskellerz.slidy.html) 2021
- [Michael Lynch](https://decks.mtlynch.io/plaintext-acccounting/) 2021
- [Andreas Pauley: Purely Functional Personal Finance](https://pauley.org.za/functional-finance-hledger/) 2018
<!-- gone - [Ledger CLI Accounting for Geeks](http://blog.loadingdata.nl/accounting-for-geeks/) 2014 -->
- [Hacking Your Finances for Fun and Profit](https://matthewturland.com/slides/ledger-stats/) 2013
<!-- gone - [Ledger and Text based Accounting](http://www.adamsinfoserv.com/AISTWiki/pub/AIS/Presentations/Ledger.pdf) 2009 -->

## Docs

**[Accounting basics](#accounting-basics)
, [PTA app docs](#pta-app-docs)
, [Comparisons](#comparisons)
, [Intros](#intros)
, [Cheatsheets](#cheatsheets)
, [Cookbooks](#cookbooks)
, [FAQs](#faqs)
**

### Accounting basics

- [hledger: Accounting basics](https://hledger.org/accounting.html)
- [hledger: Accounting links](https://hledger.org/accounting.html#accounting-links)
- [Beancount: The Double-Entry Counting Method](https://docs.google.com/document/d/100tGcA4blh6KSXPRGCZpUlyxaRUwFHEvnz_k9DyZFn4)
- [Accounting for Computer Scientists](https://martin.kleppmann.com/2011/03/07/accounting-for-computer-scientists.html)
- [Accounting for Dragons](https://podcastle.org/2009/10/09/pc-miniature-38-accounting-for-dragons)

### PTA app docs

- [Ledger](https://www.ledger-cli.org/docs.html)
- [hledger](https://hledger.org/)
- [Beancount](https://beancount.github.io/docs/)
- [Ledger in Go](https://howeyc.github.io/ledger/)
- [Tackler](https://tackler.e257.fi/docs/)
- [pta](https://mandoc.bsd.lv/pta/)

### Comparisons

- [PTA apps](#pta-apps) project stats
- [[FAQ#which-pta-app-should-i-choose|FAQ: Which PTA app should I choose ?]]
- [hledger and Ledger](https://hledger.org/ledger.html),
  [hledger and Beancount](https://hledger.org/beancount.html),
  [hledger and other software](https://hledger.org/cookbook.html#other-software) 2014, 2019, 2022, 2023..
- [Matthias Kauer: Command Line Accounting – A look at the various ledger ports](http://www.matthiaskauer.com/2015/08/command-line-accounting-a-look-at-the-various-ledger-ports/) 2015
- [beancount mail list: Another Ledger user's perspective](https://groups.google.com/d/msg/beancount/QV4qgpFbtJ8/9fSgMw-XGC8J) 2015
- [Beancount: A Comparison of Beancount and Ledger](https://docs.google.com/document/d/1dW2vIjaXVJAf9hr7GlZVe3fJOkM-MtlVjvCO1ZpNLmg) 2014
- [ledger list: ledger vs hledger vs beancount or how to choose the right cli client](https://groups.google.com/d/topic/ledger-cli/__yuMVjrOH0/discussion) 2014
<!-- gone - [Omari Norman: Why Penny](http://massysett.github.io/penny/why-penny.html) 2013 -->
<!-- gone - [Fabrice Niessen: Why Ledger?] 2010 -->

### Intros

- [[What is Plain Text Accounting?]]
- [Getting Started With Ledger](https://rolfschr.github.io/gswl-book/latest.html)
- [hledger: Get Started](https://hledger.org/start.html)
- [Getting Started with Beancount](https://beancount.github.io/docs/getting_started_with_beancount.html)
- [Tackler: Quickstart](https://tackler.e257.fi/docs/quickstart/)
- [[Don't Sink Your First Attempts at Plaintext Accounting]]
- [Program your Finances: Command-line Accounting](https://www.petekeen.net/keeping-finances-with-ledger)
- [Plain Text Accounting Workshop](https://github.com/colindean/plaintextaccounting_workshop)
- [[Cookbook.html#getting-started|Cookbook: Getting started]]

### Cheatsheets

- [Syntax Quick Reference](quickref/)
- [Ledger CLI cheatsheet](https://devhints.io/ledger)
- [Beancount Syntax Cheat Sheet](https://beancount.github.io/docs/beancount_cheat_sheet.html)
- [Beginners corner: a basic hledger transaction](https://hledgerfan.com/beginners-corner-a-basic-hledger-transaction/)
- [(Almost) everything you wanted to know about hledger transactions](https://hledgerfan.com/almost-everything-you-wanted-to-know-about-hledger-transactions/)
- [hledger: Journal cheatsheet](https://hledger.org/hledger.html#journal-cheatsheet)
- [hledger: CSV rules cheatsheet](https://hledger.org/hledger.html#csv-rules-cheatsheet)

### Cookbooks

- [[Cookbook]] the Plain Text Accounting Cookbook; more docs, examples...
- [Beancount cookbook](https://beancount.github.io/docs/command_line_accounting_cookbook.html)
- [hledger cookbook](https://hledger.org/cookbook.html)
- [Ledger wiki](https://github.com/ledger/ledger/wiki)
- [Reddit: plaintextaccounting](https://www.reddit.com/r/plaintextaccounting/new)

### FAQs

- [[FAQ]] the Plain Text Accounting FAQ
- [hledger FAQ](https://hledger.org/faq.html)
- [Ledger FAQ](https://github.com/ledger/ledger/wiki/FAQ)

## Software

**[PTA apps](#pta-apps)
, [Editor plugins](#editor-plugins)
, [Data import/conversion](#data-importconversion)
, [Price fetching](#price-fetching)
, [Data generation](#data-generation)
, [Workflows](#workflows)
, [Formatting](#formatting)
, [Reporting](#reporting)
, [Time logging](#time-logging)
, [UI, console](#ui-console)
, [UI, curses](#ui-curses)
, [UI, GUI](#ui-gui)
, [UI, web](#ui-web)
, [UI, mobile](#ui-mobile)
, [Library](#library)
, [Utilities](#utilities)
, [API](#api)
**

<a name="ledger-likes"></a>
<a name="tools"></a>

### PTA apps

To do Plain Text Accounting, try one (or more) of the apps below.
Generally it's possible to migrate data between them.

<style>
th, td { border:none; padding-top:0; padding-bottom:0; border-bottom:thin solid #ddd; white-space:nowrap; }
</style>
<!--
Table syntax: https://pandoc.org/README.html#tables
Active projects are sorted by committers then stars/activity,
inactive projects are sorted by start date then last release date.

Commit activity (from https://hledger.org/reporting-version-control-stats.html)

           || 2003  2004  2005  2006  2007  2008  2009  2010  2011  2012  2013  2014  2015  2016  2017  2018  2019  2020  2021  2022  2023    Total 
===========++=======================================================================================================================================
 ledger    ||   50   327     0     0     0  1248  1462   437   153   706   708   578   367   115    55    78   130    90    42    55   162     6763 
 hledger   ||    0     0     0     0   150   407   610   606   529   350   365   567   542   732   892  1155  1089  1313  1131   832   773    12043 
 beancount ||    0     0     0     0     0   190    86    15    25    18   433  1484  1160   686   240   393   189   773   299   112    57     6160 
-----------++---------------------------------------------------------------------------------------------------------------------------------------
           ||   50   327     0     0   150  1845  2158  1058   707  1074  1506  2629  2069  1533  1187  1626  1408  2176  1472   999   992    24966 

| Project   | Commits/day (2000s) | Commits/day (2010s) | Commits/day (2020s) |
|-----------|---------------------|---------------------|---------------------|
| Ledger    | 1.4                 | 0.9                 | 0.2                 |
| hledger   | 1.1                 | 1.9                 | 2.8                 |
| Beancount | 0.5                 | 1.3                 | 0.9                 |

| Project   | Commits/mo (2000s)  | Commits/mo (2010s)  | Commits/mo (2020s)  |
|-----------|---------------------|---------------------|---------------------|
| Ledger    | 41                  | 28                  |  7                  |
| hledger   | 32                  | 57                  | 84                  |
| Beancount | 13                  | 40                  | 27                  |

-->



| Project            | Start  | Last release | Code                         | Committers | Stars | Mail list, size                  | Chat, size                                                                                           | Issues, % open               |
|--------------------|--------|:------------:|------------------------------|-----------:|------:|----------------------------------|------------------------------------------------------------------------------------------------------|------------------------------|
|                    | &nbsp; |              |                              |            |       |                                  |                                                                                                      |                              |
| **Popular**        |        |              |                              |            |       |                                  |                                                                                                      |                              |
| [Ledger]           | 2003   | 2023         | [C++][ledger-src]            |        226 |  4.9k | [ledger][ledger-mail] ~900       | [IRC][#ledger:libera.chat] ~60                                                                       | [1.5k][ledger-issues]    47% |
| [hledger]          | 2007   | 2023         | [haskell][hledger-src]       |        167 |  2.6k | [hledger][hledger-mail] ~200     | [matrix][#hledger:matrix.org] ~100, [IRC][#hledger:libera.chat] ~70                                  | [1.3k][hledger-issues]   31% |
| [Beancount]        | 2008   | 2023         | [python][beancount-src]      |         84 |  3.1k | [beancount][beancount-mail] ~700 | [matrix][beancount-matrix] ~10, [matrix (fava)][fava-matrix] ~190, [IRC][#beancount:libera.chat] ~30 | [0.5k][beancount-issues] 63% |
|                    | &nbsp; |              |                              |            |       |                                  |                                                                                                      |                              |
| **Small userbase** |        |              |                              |            |       |                                  |                                                                                                      |                              |
| [Ledger (Go)]      | 2013   | 2023         | [go][ledger-go-src]          |         11 |   409 |                                  |                                                                                                      |                              |
| Abandon            | 2013   | 2020         | [scala][abandon-src]         |         11 |   178 |                                  | [matrix][abandon-matrix]                                                                             |                              |
| knut               | 2020   | 2022         | [go][knut-src]               |          3 |    49 |                                  |                                                                                                      |                              |
| [zhang]            | 2023   | 2023         | [rust/ts][zhang-src]         |          1 |   105 |                                  |                                                                                                      |                              |
| [ledg]             | 2021   | 2021         | [javascript][ledg]           |          1 |    37 |                                  |                                                                                                      |                              |
| Goledger           | 2019   | 2020         | [go][goledger-mescanne-src]  |          1 |    25 |                                  |                                                                                                      |                              |
| blossom            | 2020   |              | [F#][blossom-src]            |          1 |    25 |                                  |                                                                                                      |                              |
| awk-pta            | 2022   |              | [awk][awk-pta-src]           |          1 |    15 |                                  |                                                                                                      |                              |
| [Tackler]          | 2017   | 2022         | [scala][tackler-src]         |          1 |     9 |                                  | [matrix][#tackler:matrix.org]                                                                        |                              |
| coin               | 2019   |              | [go][coin-src]               |          1 |     7 |                                  |                                                                                                      |                              |
| budget-cli         | 2023   | 2023         | [typescript][budget-cli]     |          1 |     2 |                                  |                                                                                                      |                              |
| mynt               | 2023   |              | [rust][mynt-src]             |          1 |       |                                  |                                                                                                      |                              |
|                    | &nbsp; |              |                              |            |       |                                  |                                                                                                      |                              |
| **Inactive**       |        |              |                              |            |       |                                  |                                                                                                      |                              |
| bankroll           | 2020   | 2020         | [rust][bankroll-src]         |          1 |     1 |                                  |                                                                                                      |                              |
| [pta]              | 2020   | 2020         | [perl][pta-src]              |          1 |       |                                  |                                                                                                      |                              |
| acc                | 2020   |              | [rust][acc-src]              |          1 |     1 |                                  |                                                                                                      |                              |
| rust\_ledger       | 2019   | 2021         | [rust][rust_ledger-src]      |          4 |    90 |                                  |                                                                                                      |                              |
| [beans]            | 2019   | 2019         | [haskell][beans-src]         |          2 |    24 |                                  |                                                                                                      |                              |
| Transity           | 2018   | 2020         | [purescript][transity-src]   |          8 |   571 |                                  | [matrix][transity-matrix]                                                                            |                              |
| [Prudent]          | 2018   |              | js, [addons][prudent-src]    |          1 |       |                                  | [\@PrudentLedger][prudent-chat]                                                                      |                              |
| .Net Ledger        | 2017   | 2021         | [C#][nledger-src]            |          1 |   164 |                                  | [matrix][nledger-matrix]                                                                             |                              |
| [monescript]       | 2017   | 2018         | [javascript][monescript-src] |          1 |    12 |                                  |                                                                                                      |                              |
| Go Ledger          | 2016   |              | [go][go-ledger-abourget-src] |          3 |    37 |                                  |                                                                                                      |                              |
| uledger            | 2015   |              | [python][uledger-src]        |          1 |    17 |                                  |                                                                                                      |                              |
| pacioli            | 2013   |              | [python][pacioli-src]        |          1 |    31 |                                  |                                                                                                      |                              |
| ledger.pl          | 2013   |              | [perl][ledger.pl-src]        |          1 |     6 |                                  |                                                                                                      |                              |
| Penny              | 2012   | 2014         | haskell                      |            |       |                                  |                                                                                                      |                              |
| UMM                | 2009   | 2010         | [haskell][UMM-hackage]       |            |       |                                  |                                                                                                      |                              |
| sm-Ledger          | 2007   |              | [squeak][smalltalk-src]      |            |       |                                  |                                                                                                      |                              |
| cl-ledger          | 2007   |              | [lisp][cl-ledger-src]        |          4 |    66 |                                  |                                                                                                      |                              |

[plaintextaccounting.org]: https://plaintextaccounting.org
[/r/plaintextaccounting]: https://www.reddit.com/r/plaintextaccounting
[#plaintextaccounting:libera.chat]: https://web.libera.chat/#plaintextaccounting
[#plaintextaccounting:matrix.org]: https://matrix.to/#/#plaintextaccounting:matrix.org

[abandon-src]: https://github.com/hrj/abandon
[abandon-matrix]: https://matrix.to/#/#hrj_abandon:gitter.im

[acc-src]: https://github.com/rudolfschmidt/acc
[awk-pta-src]: https://github.com/filiphanes/awk-pta
[mynt-src]: https://git.sr.ht/~kmaasrud/mynt

[Beancount]: https://github.com/beancount/
[Beancount2]: https://beancount.github.io
[beancount-src]: https://github.com/beancount/beancount/
[beancount-issues]: https://github.com/beancount/beancount/issues
[beancount-mail]: https://groups.google.com/forum/#!forum/beancount
[#beancount:libera.chat]: https://web.libera.chat/#beancount
[beancount-matrix]: https://matrix.to/#/#beancount:matrix.org
[fava-matrix]: https://matrix.to/#/#beancount_fava:gitter.im

[beans]: https://sboehler.github.io/beans
[beans-src]: https://github.com/sboehler/beans

[blossom-src]: https://github.com/blossom-hub/blossom
[budget-cli]: https://github.com/joshcanhelp/budget-cli

[cl-ledger-src]: https://github.com/ledger/cl-ledger

[coin-src]: https://github.com/mkobetic/coin

[Ledger (Go)]: https://howeyc.github.io/ledger/
[ledger-go-src]: https://github.com/howeyc/ledger

[goledger-mescanne-src]: https://github.com/mescanne/goledger

[go-ledger-abourget-src]: https://github.com/abourget/ledger

[hledger]: https://hledger.org
[hledger-src]: https://github.com/simonmichael/hledger
[hledger-code]: https://code.hledger.org
[hledger-issues]: https://github.com/simonmichael/hledger/issues
[hledger-mail]: https://mail.hledger.org/
[#hledger:matrix.org]: https://matrix.to/#/#hledger:matrix.org
[#hledger:libera.chat]: https://web.libera.chat/#hledger

[knut-src]: https://github.com/sboehler/knut

[Ledger]: https://www.ledger-cli.org
[ledger-src]: https://github.com/ledger/ledger
[ledger-issues]: https://github.com/ledger/ledger/issues
[#ledger:libera.chat]: https://web.libera.chat/#ledger
[ledger-mail]: https://list.ledger-cli.org/

[ledger.pl-src]: https://github.com/dimonf/ledger.pl

[monescript]: https://monescript.github.io/
[monescript-src]: https://github.com/monescript/monescript

[nledger-src]: https://github.com/dmitry-merzlyakov/nledger
[nledger-matrix]: https://matrix.to/#/#nledger_Lobby:gitter.im

[pacioli-src]: https://github.com/mdipierro/pacioli

[pta]: https://mandoc.bsd.lv/pta
[pta-src]: https://cvsweb.bsd.lv/pta/

[prudent]: https://prudent.me
[prudent-src]: https://github.com/PrudentMe
[prudent-chat]: https://twitter.com/PrudentLedger

[rust_ledger-src]: https://github.com/ebcrowder/rust_ledger

[bankroll-src]: https://gitlab.com/dantuck/bankroll

[smalltalk-src]: https://gist.github.com/simonmichael/bb611dba654ccb1573e1

[Tackler]: https://tackler.e257.fi
[tackler-src]: https://gitlab.com/e257/accounting/tackler
[#tackler:matrix.org]: https://matrix.to/#/#tackler:matrix.org

[transity-src]: https://github.com/feramhq/transity
[transity-demo]: https://www.feram.io/transity
[transity-matrix]: https://matrix.to/#/#feramhq_transity:gitter.im

[uledger-src]: https://github.com/danpat/uledger

[UMM-hackage]: https://hackage.haskell.org/package/UMM

[ledg]: https://github.com/SitanHuang/ledg

[zhang-src]: https://github.com/zhang-accounting/zhang
[zhang]: https://zhang-accounting.github.io/zhang

<!-- [compare at openhub](https://www.openhub.net/p/_compare?project_0=Ledger&project_1=hledger&project_2=beancount) -->

### Editor plugins

**Atom**
- [language-ledger](https://atom.io/packages/language-ledger)
- [ledger](https://atom.io/packages/ledger)
\
**Emacs**
- [beancount-mode](https://github.com/beancount/beancount-mode)
- [hledger-mode](https://github.com/narendraj9/hledger-mode)
- [ledger-mode](https://ledger-cli.org/doc/ledger-mode.html) (good for hledger also)
\
**IntelliJ**
- [Ledger CLI](https://plugins.jetbrains.com/plugin/15405-ledger-cli)
\
**Nano**
- [scopatz/nanorc](https://github.com/scopatz/nanorc/blob/master/ledger.nanorc)
\
**Sublime**
- [sublime-ledger-syntax](https://github.com/moeffju/sublime-ledger-syntax)
\
**TextMate**
- [Ledger.tmbundle](https://github.com/lifepillar/Ledger.tmbundle)
\
**VIM**
- [vim-ledger](https://github.com/ledger/vim-ledger)
- [vim-beancount](https://github.com/nathangrigg/vim-beancount)
- [hledger-vim](https://github.com/anekos/hledger-vim)
- [cmp-beancount](https://github.com/crispgm/cmp-beancount)
\
**VS Code**
- [hledger-vscode](https://github.com/mhansen/hledger-vscode)
- [ledger](https://marketplace.visualstudio.com/items?itemName=mariosangiorgio.ledger)
- [vscode-beancount](https://marketplace.visualstudio.com/items?itemName=Lencerf.beancount)

- [hledger: Editor configuration](https://hledger.org/editors.html)

### Data import/conversion

- [Ledger](https://www.ledger-cli.org/3.0/doc/ledger3.html#Comma-Separated-Values-files) and [hledger](https://hledger.org/csv.html) have CSV conversion built in. Also:
- bean-identify, bean-extract, bean-file - Beancount built-in tools
- [banks2ledger](https://github.com/tomszilagyi/banks2ledger) - CSV to *ledger converter
- [beancount-import](https://github.com/jbms/beancount-import) web app/framework for converting various formats to beancount (python)
- [beancount-ynab](https://github.com/hoostus/beancount-ynab) Import YNAB4 (legacy desktop-based version) into beancount
- [beancount-ynab5](https://github.com/hoostus/beancount-ynab5) Import YNAB5 (cloud-based version) transactions into beancount 
- [buchhaltung](https://hackage.haskell.org/package/buchhaltung) CSV/FinTS/HBCI/OFX to *ledger conversion/deduplication (haskell)
- [Costflow](https://docs.costflow.io) convert one line message to beancount/*ledger format
- [csv2beancount](https://github.com/PaNaVTEC/csv2beancount) CSV to beancount converter (clojure)
- [CSV2Ledger](https://launchpad.net/csv2ledger) CSV to *ledger converter (perl)
- [double-entry-generator](https://github.com/deb-sig/double-entry-generator) Rule-based double-entry bookkeeping importer (from Alipay/WeChat/Huobi etc. to Beancount)
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
- [invoice2data](https://github.com/invoice-x/invoice2data) extract data from PDF invoices (python)
- [jali](https://git.darmstadt.ccc.de/jali/jali) downloader/importer to *ledger (python)
- [kmymoney2hledger](https://github.com/maridonkers/kmymoney2hledger) KMyMoney to *ledger converter (clojure)
- [kmymoney2ledgers](https://github.com/isabekov/kmymoney2ledgers) KMyMoney to *ledger/beancount converter (python)
- [kmymoney2ledgers.awk](https://github.com/isabekov/kmymoney2ledgers.awk) KMyMoney to *ledger/beancount converter (Awk)
- [ldgclip](https://gitlab.com/IanTwenty/ldgclip) import bank transactions via the clipboard with one click (bash/awk)
- [Ledger in Go](https://github.com/howeyc/ledger) has limport, a CSV to *ledger converter
- [ledger-autosync](https://gitlab.com/egh/ledger-autosync) OFX download, OFX to *ledger conversion, deduplication
- [ledger-guesser](https://github.com/j3k0/ledger-guesser) neural network for generating entries like past ones, can be used with ledger-autosync (javascript)
- [ledger-myexpenses](https://github.com/ony/ledger-myexpenses) MyExpenses android app sqlite db to *ledger conversion (python, 2017)
- [ledgermyexpenses](https://gitlab.com/IanTwenty/ledgermyexpenses) sync MyExpenses android app to/from Ledger (bash, 2023)
- [ledger-to-beancount](https://github.com/glasserc/ledger-to-beancount/) yet another simple ledger to beancount converter (python)
- [ledger-tutorials](https://github.com/tlvince/ledger-tutorials) convert Pete Keen's tutorials to ebook format
- [ledger2beancount.py](https://gist.github.com/travisdahlke/71152286b0a8826249fe) *ledger to beancount converter
- [ledger2beancount](https://github.com/beancount/ledger2beancount)/[beancount2ledger](https://github.com/beancount/beancount2ledger) the best converter between h/ledger and beancount formats (perl).
- [moneymoney-ledger](https://github.com/lukasbestle/moneymoney-ledger) MoneyMoney export extension for *ledger
- [outofit](https://github.com/rcaputo/outofit) QuickBooks to *ledger converter
- [piecash](https://github.com/sdementen/piecash) GNUCash SQL to *ledger converter (python)
- [plaid2qif](https://github.com/ebridges/plaid2qif) Download transactions from plaid as QIF or CSV files
- [plaid2text](https://github.com/madhat2r/plaid2text) Plaid API to *ledger/beancount download/conversion
- [qb2ledger](https://gist.github.com/genegoykhman/3765100) QuickBooks General Journal CSV to *ledger converter
- [QIFtoLedger](https://github.com/Kolomona/QIFtoLedger) (Bank of America's) QIF to *ledger converter
- [reckon](https://github.com/cantino/reckon) smart interactive/non-interactive CSV to *ledger converter
- [slc](https://github.com/marvinpinto/slc) generates Ledger accounting entries, works with generic CSV files as well as the Stripe API
- [smart_importer](https://github.com/johannesjh/smart_importer) library for building smarter CSV to beancount/Fava converters
- [total_recall](https://github.com/eval/total_recall) CSV to *ledger converter
- [ynab-to-ledger](https://github.com/vermiceli/ynab-to-ledger) You Need A Budget (YNAB) to *ledger converter. Handles multiple currencies, multiple number formats, reconciliation, memos, transfers, and split transactions
- [ynab_to_ledger](https://github.com/pgr0ss/ynab_to_ledger) You Need A Budget to *ledger converter

### Price fetching

- [bean-price](https://docs.google.com/document/d/1thYRAMell_QT1Da1F_laprSs6BlROZjyK_h3V8qHW9c) Beancount's price fetching tool (python)
- [hledger-stockquotes](https://github.com/prikhi/hledger-stockquotes) download market prices for your hledger commodities (haskell)
- [ledger-get-prices](https://github.com/nathankot/ledger-get-prices) download market prices (ruby)
- [LedgerStockUpdate](https://github.com/adchari/LedgerStockUpdate) update a Ledger price database (go)
- [market-prices](https://github.com/barrucadu/hledger-scripts#market-prices) download market prices from several sources (python)
- [market-prices.hs](https://gist.github.com/maralorn/a288329af50955dff353e5529f377488) small, easy to adapt script to scrape market data from the internet (Haskell)
- [pricehist](https://gitlab.com/chrisberkhout/pricehist) fetch and format historical price data, with support for multiple sources and output formats (python)
- [the-solipsist/scripts](https://github.com/the-solipsist/scripts/) download prices for your hledger commodities, including indian commodities (bash)

### Data generation

- [beancount-extract-price](https://github.com/Mayeu/beancount-scripts) generate prices transactions based on your beancount ledger (python)
- [DepreciateForLedger](https://github.com/tazzben/DepreciateForLedger) generate *ledger depreciation transactions (python)
- [hledger-interest](https://hackage.haskell.org/package/hledger-interest) generate *ledger interest entries (haskell)
- [ledgerbil](https://github.com/scarpent/ledgerbil) schedule recurring txns, interactive reconcile, date sorting
- [LedgerScheduler](https://github.com/tazzben/LedgerScheduler) move entries from one file to another when they come due (python)
- [lotter](https://src.d10.dev/lotter) generate postings for capital gain/loss (go)
- [recurring](https://hub.darcs.net/simon/ledgertools/browse/recurring) generate recurring *ledger entries (python)
- [reorder-journal.sh](https://github.com/amitaibu/hledger-example/blob/master/reorder-journal.sh) sort hledger entries, preserving directives/comments at top of file (bash)
- [sassetti](https://github.com/jvasile/sassetti) adds lisp macros to ledger files (common lisp)

### Workflows

- [docker-finance](https://gitea.com/EvergreenCrypto/docker-finance) hledger/hledger-flow/docker-based system for tracking and reporting on traditional and cryptocurrency finances
- [Full-fledged hledger](https://github.com/adept/full-fledged-hledger) scripts and detailed tutorial for generating hledger journals from CSV files (haskell, shell)
- [hledger-flow](https://github.com/apauley/hledger-flow) command-line tool to generate hledger (or Ledger) journals from CSV files (haskell)
- [rtrledger](https://github.com/rotorkunstkultur/rtrledger) another hledger journals from CSV files system, designed for chaotic German freelancers (shell etc.)

### Formatting

- [beancount-black](https://github.com/LaunchPlatform/beancount-black) opinionated beancount file formatter
- [beancount-black web app](https://app.beanhub.io/tools/beancount-formatter) opinionated beancount file formatter as a web-based app

### Reporting

- [budget_report](https://github.com/sulemankm/budget_report) budget reporting with beancount (python)
- [gainstrack](https://github.com/glorat/gainstrack) personal wealth analysis app with beancount export (scala/typescript)
- [hledger-diff](https://hackage.haskell.org/package/hledger-diff) report differing transactions between two journals (haskell)
- [hledger-irr](https://hackage.haskell.org/package/hledger-irr) calculate an account's internal rate of return (superseded by [roi](https://hledger.org/hledger.html#roi)) (haskell)
- [hledger-sankey](https://github.com/adept/hledger-sankey) Script + HTML files to plot income next to expense money flows from an hledger ledger file (shell + javascript)
- [hledger-tools](https://github.com/rmuratov/hledger-tools) generating charts from hledger (typescript)
- [hledger-vega](https://github.com/xitian9/hledger-vega) makes configurable [vega-lite](https://vega.github.io/vega-lite/) charts from hledger (shell)
- [hreports](https://pypi.org/project/hreports) customise hledger reports with templates and PDF output (python)
- [ledger-plot](https://github.com/Tagirijus/ledger-plot) interactive tool for making GNUplot charts from Ledger (python)
- [ledger-plots](https://github.com/esovetkin/ledger-plots) R package & script to make charts from Ledger (R)
- [r-ledger](https://github.com/trevorld/r-ledger) an R package for reading and reporting on ledger/hledger/beancount files (R)
- [TaxingLots](https://framagit.org/jkepler/TaxingLots) calculates capital gains for a ledger journal (python)

### Time logging

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
- [hledger-ui](https://hackage.haskell.org/package/hledger-ui) TUI for *ledger browsing (haskell, [video](https://asciinema.org/a/29665))
- [ledger-add](https://github.com/Tagirijus/ledger-add) TUI for *ledger transaction entry (python)
- [puffin](https://github.com/siddhantac/puffin) TUI for hledger browsing (go)
- [regdel](https://github.com/guillaumechereau/regdel) TUI for browsing Ledger files (python)

### UI, GUI

- [ledgerble](https://github.com/sbridges/ledgerble) reporting GUI with charts & adjustable reports (Javascript)
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) misc. GUI tools + helper library (Python, GTK)
- [Prudent][prudent] integrated journal editing/importing/reporting GUI for Ledger (Javascript, mac only, closed source)

### UI, web

- [fava](https://github.com/beancount/fava) web UI for beancount browsing (python, [demo](https://fava.pythonanywhere.com/))
- [hledger-web](https://hackage.haskell.org/package/hledger-web) web UI for *ledger browsing, data entry 
  (haskell, 
   [demo](https://demo.hledger.org), 
   [Sandstorm app](https://apps.sandstorm.io/app/8x12h6p0x0nrzk73hfq6zh2jxtgyzzcty7qsatkg7jfg2mzw5n90))
- [Paisa](https://paisa.fyi) web UI or desktop app for ledger, hledger and beancount (go, javascript, [demo](https://demo.paisa.fyi))
- [Ledger in Go](https://github.com/howeyc/ledger) web UI for browsing ledger transactions, reports, and porfolios
- [Ledger Web](https://github.com/peterkeen/Ledger-Web) ledger HTML reporting system (ruby, postgres)
- [Ledger Web](https://vifon.github.io/ledger-web) web UI/API for ledger browsing, data entry (python)
- [ledger-analytics](https://github.com/kendricktan/ledger-analytics) web UI for ledger data analytics (javascript)
- [ledger-dashboard](https://github.com/Ikke/ledger-dashboard) web UI for ledger browsing, data entry (python)
- [ledger-pyreport](https://yingtongli.me/git/ledger-pyreport/about/) web UI for standard accounting statements and unrealised gains (python)
- [ledgeraccounting](https://github.com/thecount2a/ledgeraccounting) web UI for hledger: data entry, basic reports and budgets (javascript)
- [ledgible](https://github.com/lipidity/ledgible) web UI for ledger browsing, data entry (python)
- [n4s](https://github.com/n4s-linux/n4s-gratis-regnskab/) danish-language ERP system (php)
- [node-ledger-web](https://github.com/slashdotdash/node-ledger-web) web UI for ledger browsing (javascript)
- [WealthPulse](https://github.com/readysetmark/WealthPulse) web UI for ledger browsing, price fetching (F#)
- [BeanHub](https://beanhub.io) web UI for beancount browsing, data entry with a Git repository (proprietary SaaS; some components open source)

### UI, mobile

- [Beancount](https://beancount.io) mobile app (Android, IOS)
- [beancount-mobile](https://github.com/xuhcc/beancount-mobile) data entry app (Android)
- [NanoLedger](https://f-droid.org/en/packages/be.chvp.nanoledger) data entry app supporting the ledger and hledger syntax (Android)
- [cashier](https://gitlab.com/alensiljak/cashier) mobile or desktop client for ledger and hledger-web (Android/Desktop, javascript, [app](https://cashier.alensiljak.eu.org/))
- [cone](https://f-droid.org/en/packages/info.tangential.cone/) data entry app for the h/ledger format (Android, [dart](https://github.com/bradyt/cone))
- [MoLe](https://fossdroid.com/a/mole.html) mobile client for hledger-web (Android, [java](https://git.ktnx.net/?p=mobile-ledger.git))
- [hledger.org: Mobile apps](https://hledger.org/mobile.html)


### Library

- [beancount-parser](https://github.com/LaunchPlatform/beancount-parser) standalone [Lark-based](https://github.com/lark-parser/lark) beancount syntax parser (not relying on the beancount library)
- [beancount-parser](https://docs.rs/beancount-parser/latest/beancount_parser/) a Beancount parser in Rust using [nom](https://docs.rs/nom/latest/nom/)
- [beancount-parser-lima](https://docs.rs/beancount-parser-lima/latest/beancount_parser_lima/) another Beancount parser in Rust using [Logos](https://docs.rs/logos/latest/logos/) and [Chumsky](https://docs.rs/chumsky/latest/chumsky/)
- [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms) a library provides data types and processors of custom beancount forms for inputting repeating similar entries easily
- [beanhub-web-react](https://github.com/LaunchPlatform/beanhub-web-react) react components for beancount entry input forms and [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms)
- [magicbeans](https://github.com/ericaltendorf/magicbeans/) Beancount extensions for cryptocurrency tax tracking and reporting 

### Utilities

- [beanhub-cli](https://github.com/LaunchPlatform/beanhub-cli) beancount command line tools come with features like formatter and a [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms) web app

### API

- [gledger](https://github.com/gledger/gledger) Go package to interface with Ledger (go)
- [hledger-lib](https://github.com/simonmichael/hledger/tree/master/hledger-lib) library for parsing and generating reports from *ledger files (haskell)
- [hledger-web](https://github.com/simonmichael/hledger/tree/master/hledger-web) the web app includes a JSON API server for *ledger files (haskell)
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) extends Ledger's python library (python)
- [node-hledger](https://github.com/rstacruz/node-hledger) Node.js API for *ledger files (javascript)
- [BeanHub API](https://api.beanhub.io/redoc) proprietary SaaS API for operating on hosted beancount repositories and [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms)
