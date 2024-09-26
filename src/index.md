% Plain Text Accounting (PTA)

---
toc: false
...


<!-- For editing tips, see ../README.md -->

<div style="float:right; width:30%; margin:0 1em; z-index:-1;">
<img src="images/pta-avatar.jpg" width=200 style="border-radius:50%;">
</div>

<div id="intro" style="font-size:larger;">

Welcome!
***Plain text accounting*** is a way of doing bookkeeping and accounting 
with plain text files and scriptable, command-line-friendly software, such as
Ledger, hledger, or Beancount.
This site collects the PTA community's tools, docs and practices. 
It is maintained by Simon&nbsp;Michael (hledger project leader, PTA fan)
and contributors like you. See also our [discussion forum and chat rooms](#news-discussion).

</div>

<div id="sitemap">
**Site map**\
**[[What is Plain Text Accounting ?]]**\
**[News & discussion](#news-discussion)**\
**[Videos](#videos)**\
**[Slides](#slides)**\
**[Docs](#docs):**
  [Accounting basics](#accounting-basics)
, [PTA app docs](#pta-app-docs)
, [comparisons](#comparisons)
, [intros](#intros)
, [cheatsheets](#cheatsheets)
, [cookbooks](#cookbooks)
, [FAQs](#faqs)
\
**[[FAQ]]**\
**[[Cookbook]]**\
**[Software](#software):**
  [PTA apps](#pta-apps)
, [Feature matrix](#feature-matrix)
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

This is a community-supported site; if you find it useful, why not contribute to the [github repo](https://github.com/plaintextaccounting/plaintextaccounting)
or help with [[finance]].
Thank you sponsors, including:

<div id="sponsors-container">
- [<img src="https://beanhub.io/images/beanhub-sponsor-logo.svg">A modern accounting book app based on Beancount and Git](https://beanhub.io)
</div>

## News & discussion

**Chat**
- [matrix room](https://matrix.to/#/#plaintextaccounting:matrix.org)
- [matrix space](https://matrix.to/#/#plaintextaccounting-space:matrix.org)
- [IRC channel](https://web.libera.chat/#plaintextaccounting)
- [project chats](#pta-apps)
\
**Blogs & articles**
- See the PTA forum's [News category](https://forum.plaintextaccounting.org/c/news/6) and [RSS feed](https://forum.plaintextaccounting.org/latest.rss?order=created)
- [[blogs|Older blogs & articles, 2006-2024]]
\
**PTA forum**
- [forum.plaintextaccounting.org](https://forum.plaintextaccounting.org)
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
- [LedgerTips 2014-2018](https://twitter.com/LedgerTips)
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
\
**plaintextaccounting.org site**
- [commits](https://github.com/plaintextaccounting/plaintextaccounting/commits/master)
- [contributors](https://github.com/plaintextaccounting/plaintextaccounting/graphs/contributors)
- [issues](https://github.com/plaintextaccounting/plaintextaccounting/issues?q=is%3Aissue+)
- [email the site admin](mailto:webmaster@plaintextaccounting.org)

## Videos

<https://www.youtube.com/results?search_query=plaintextaccounting>

- [Thanga Ayyanar: Ledger CLI](https://www.youtube.com/watch?v=PQKOiU_spHg) (in Tamil) 2024 <!-- 03-31 -->
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
- [Michael Lynch: An introduction to plaintext accounting](https://decks.mtlynch.io/plaintext-acccounting/) 2021
- [Andreas Pauley: Purely Functional Personal Finance](https://pauley.org.za/functional-finance-hledger/) 2018
<!-- gone - [Ledger CLI Accounting for Geeks](http://blog.loadingdata.nl/accounting-for-geeks/) 2014 -->
- [Matthew Turland: Hacking Your Finances for Fun and Profit](https://matthewturland.com/slides/ledger-stats/) 2013
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
- [[FAQ]]

### PTA app docs

- [Ledger](https://www.ledger-cli.org/docs.html)
- [hledger](https://hledger.org/)
- [Beancount](https://beancount.github.io/docs/)
- [Ledger in Go](https://howeyc.github.io/ledger/)
- [Tackler](https://tackler.e257.fi/docs/)
- [pta](https://mandoc.bsd.lv/pta/)

### Comparisons

- [PTA apps](#pta-apps) project stats
- [Feature matrix](#feature-matrix)
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
- [BeanHub Academy: the definitive guide to learning double-entry accounting with Beancount — the Zen of Balance](https://academy.beanhub.io)
- [Lazy Beancount: an opinionated guide on Beancount](https://lazy-beancount.xyz/)

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
- [PTA Forum](https://forum.plaintextaccounting.org)
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
th, td { border:none; padding-top:0; padding-bottom:0; border-bottom:thin solid #ddd; }
th:first-child, td:first-child { white-space:nowrap; }
</style>

<!--
Markdown table syntax: https://pandoc.org/README.html#tables
Active projects are sorted by committers then stars/activity. Inactive projects are sorted by start date then last release date.
-->
| Project            | Start  | Last release | Code                         | Committers | Stars | Mail list, size                  | Chat, size                                                                                           | Issues, % open               |
|--------------------|--------|:------------:|------------------------------|-----------:|------:|----------------------------------|------------------------------------------------------------------------------------------------------|------------------------------|
|                    | &nbsp; |              |                              |            |       |                                  |                                                                                                      |                              |
| **Popular**        |        |              |                              |            |       |                                  |                                                                                                      |                              |
| [Ledger]           | 2003   | 2023         | [C++][ledger-src]            |        226 |  4.9k | [ledger][ledger-mail]&nbsp;~900       | [IRC][#ledger:libera.chat]&nbsp;~60                                                                                 | [1.5k][ledger-issues]        |
| [hledger]          | 2007   | 2024         | [haskell][hledger-src]       |        171 |  2.9k | [hledger][hledger-mail]&nbsp;~250     | [matrix][#hledger:matrix.org]&nbsp;~200, [IRC][#hledger:libera.chat]&nbsp;~60                                       | [1.4k][hledger-issues]       |
| [Beancount]        | 2008   | 2023         | [python][beancount-src]      |         84 |  3.1k | [beancount][beancount-mail]&nbsp;~700 | [matrix][beancount-matrix]&nbsp;~10, [matrix&nbsp;(fava)][fava-matrix]&nbsp;~190, [IRC][#beancount:libera.chat]&nbsp;~30 | [0.5k][beancount-issues]     |
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
| [placc]            | 2024   |              | nim                          |          1 |       |                                  |                                                                                                      |                              |
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

[placc]: https://dolfi.dev/placc

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

### Feature matrix

A rough comparison of the big three PTA apps' features. Improvements welcome ([chat](https://matrix.to/#/#plaintextaccounting:matrix.org)).
Third-party things are parenthesised. Notable complementary tools likely to work with reasonable effort are mentioned.

|                          | Ledger                                                           | hledger                                                                                                                                                                              | Beancount
|--------------------------|------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------
| CLIs:                    | ledger                                                           | hledger                                                                                                                                                                              | beanquery
| TUIs:                    | (regdel)                                                         | hledger add, hledger-ui, (hledger-iadd), (puffin)                                                                                                                                    | (bean-add)
| GUIs:                    | (Prudent), (ledgerble), (ledgerhelpers: addtrans)                | (fruit-credits)                                                                                                                                                                      | 
| WUIs:                    | (ledgeraccounting), (paisa), (cashier), (ledgible), (ledger, howeyc), (ledger-web, vifon), (ledger-web, peterkeen), (ledger-pyreport), (ledger-analytics), (node-ledger-web)           | hledger-web, (ledgeraccounting), (paisa), (cashier)            | (fava), (paisa), (BeanHub)
| MUIs (Android):          | (cashier), (NanoLedger)                                          | (cashier), (MoLe), (NanoLedger)                                                                                                                                                      | (Beancount Mobile, stargately), (beancount-mobile, xuhcc)
| MUIs (IOS):              |                                                                  |                                                                                                                                                                                      | (Beancount Mobile, stargately)
| CLI help:                | general --help                                                   | general and command-specific --help, auto-paginated                                                                                                                                  | command-specific --help
| TLDR short help:         | ledger                                                           | hledger and all commands, also built-in as --tldr                                                                                                                                    | 
| User manual formats:     | web                                                              | web, info, man, built-in info/man/text                                                                                                                                               | web
| Input formats:           | journal (ledger), timeclock, csv                                 | journal (hledger), timeclock, csv, timedot, tsv, ssv, *sv                                                                                                                            | journal (beancount)
| Output formats:          | text, csv, xml                                                   | text, html, fods, csv, tsv, ssv, sql                                                                                                                                                 | text, ?
| Commands:                | cleared, convert, entry, emacs, equity, pricemap, select, source | activity, add, aregister, balancesheet, balancesheetequity, cashflow, check, close, codes, demo, descriptions, diff, files, help, import, incomestatement, notes, rewrite, roi, test | beancount: check, doctor, example, format; beanquery: balances, journal, print, select
| Add-on commands:         |                                                                  | bar, check-fancyassertions, edit, git, iadd, interest, lots, pijul, plot..                                                                                                           | 
| Config file:             | general options                                                  | general and command-specific options                                                                                                                                                 | ?
| Extensibility:           | built-in expression language, embedded python snippets           | add-on commands, haskell library                                                                                                                                                     | data-modifying plugins, python library
| APIs:                    | C++, python, (HTTP-JSON)                                         | haskell, HTTP-JSON                                                                                                                                                                   | python
| Data import support:     | built-in (convert command)                                       | built-in (*sv reader, import command)                                                                                                                                                | beangulp framework, (beancount_reds_importers framework), (beancount-import library)
| Data deduplication:      | checksum-based (requires unique CSV records)                     | date-based (requires date-ordered CSV records)                                                                                                                                       | ?
| Lot management:          | automated matching syntax, `--lots` report                       | manual                                                                                                                                                                               | automated matching syntax, ?
| Pivoting:                | on single tag                                                    | on one or more tags/other fields                                                                                                                                                     | ?
| Price fetching:          | (pricehist)                                                      | (pricehist)                                                                                                                                                                          | beanprice
| Querying:                | cli options, custom query expressions                            | cli options, custom query expressions                                                                                                                                                | SQL-like beancount query language
| REPL:                    | built-in                                                         | haskell GHCI                                                                                                                                                                         | beanquery, python
| Shell completions:       | bash (commands, flags, maybe accounts)                           | bash (commands, flags, flag values, query types, queryable journal data)                                                                                                             | 
| Validation:              | configurable                                                     | configurable                                                                                                                                                                         | always strict
| Active support channels: |                                                                  | chat, mail list, forum, reddit                                                                                                                                                       | mail list
|                          |                                                                  |                                                                                                                                                                                      | 
| Other:                   | automatic revaluation transactions (`--revalued`)                | account types awareness                                                                                                                                                              | ?
|                          | ?                                                                | standard financial reports                                                                                                                                                           | 
|                          |                                                                  | multi-period balance reports                                                                                                                                                         | 
|                          |                                                                  | customisable account display order                                                                                                                                                   | 
|                          |                                                                  | international number notations                                                                                                                                                       | 
|                          |                                                                  | commands summary                                                                                                                                                                     | 
|                          |                                                                  | built-in asciinema demos                                                                                                                                                             | 
|                          |                                                                  | regular releases                                                                                                                                                                     | 
|                          |                                                                  | documentation-first process                                                                                                                                                          | 
|                          |                                                                  | regression bounties                                                                                                                                                                  | 
|                          |                                                                  |                                                                                                                                                                                      | 

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
- [beancount-reds-importers](https://github.com/redstreet/beancount_reds_importers) Simple importers and tools for Beancount. A framework to allow you to easily write your own importers.
- [beancount-ynab](https://github.com/hoostus/beancount-ynab) Import YNAB4 (legacy desktop-based version) into beancount
- [beancount-ynab5](https://github.com/hoostus/beancount-ynab5) Import YNAB5 (cloud-based version) transactions into beancount 
- [beanhub-extract](https://github.com/LaunchPlatform/beanhub-extract) Simple Python library for extracting all kinds of bank export CSV files into standardized transaction data objects
- [beanhub-import](https://github.com/LaunchPlatform/beanhub-import) Declarative idempotent rule-based beancount transaction import engine in Python consumes data extracted by [beanhub-extract](https://github.com/LaunchPlatform/beanhub-extract)
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
- [gsheet-csv.hs](https://github.com/simonmichael/hledger/blob/master/bin/gsheet-csv.hs) a script to download Google sheets (haskell)
- [hledger-Excel](https://github.com/phobo3s/hledger-Excel) Excel spreadsheet to *ledger journal converter (visual basic for applications)
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
- [Tiller](https://www.tillerhq.com) service to download from mostly-US banks to google or microsoft spreadsheets (commercial but pretty good)
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
- [ledger-ts](https://github.com/hamsterbase/ledger-ts) typescript EDSL for generating beancount journals (typescript)
- [ledgerbil](https://github.com/scarpent/ledgerbil) schedule recurring txns, interactive reconcile, date sorting
- [LedgerScheduler](https://github.com/tazzben/LedgerScheduler) move entries from one file to another when they come due (python)
- [lotter](https://src.d10.dev/lotter) generate postings for capital gain/loss (go)
- [recurring](https://hub.darcs.net/simon/ledgertools/browse/recurring) generate recurring *ledger entries (python)
- [reorder-journal.sh](https://github.com/amitaibu/hledger-example/blob/master/reorder-journal.sh) sort hledger entries, preserving directives/comments at top of file (bash)
- [sassetti](https://github.com/jvasile/sassetti) adds lisp macros to ledger files (common lisp)

### Invoicing

- [kairos](https://kairosdotapp.github.io) ([repo](https://github.com/kairosdotapp/kairos)) generate invoices from hledger timedot files (go)

### Workflows

- [docker-finance](https://gitea.com/EvergreenCrypto/docker-finance) hledger/hledger-flow/docker-based system for tracking and reporting on traditional and cryptocurrency finances
- [Full-fledged hledger](https://github.com/adept/full-fledged-hledger) scripts and detailed tutorial for generating hledger journals from CSV files (haskell, shell)
- [hledger-flow](https://github.com/apauley/hledger-flow) command-line tool to generate hledger (or Ledger) journals from CSV files (haskell)
- [rtrledger](https://github.com/rotorkunstkultur/rtrledger) another hledger journals from CSV files system, designed for chaotic German freelancers (shell etc.)
- [Lazy Beancount](https://github.com/Evernight/lazy-beancount) Beancount packaged in Docker with additional plugins and tools

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

- [fruit-credits](https://codeberg.org/dz4k/fruit-credits) data entry/reporting GUI (Vala, GNOME)
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
- [beancount-txn-elisp](https://sr.ht/~trs-80/beancount-txn-elisp) a library to read/parse and write/insert individual Beancount transactions, implemented in Emacs Lisp
- [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms) a library provides data types and processors of custom beancount forms for inputting repeating similar entries easily
- [beanhub-web-react](https://github.com/LaunchPlatform/beanhub-web-react) react components for beancount entry input forms and [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms)
- [magicbeans](https://github.com/ericaltendorf/magicbeans/) Beancount extensions for cryptocurrency tax tracking and reporting 

### Utilities

- [beanhub-cli](https://github.com/LaunchPlatform/beanhub-cli) beancount command line tools come with features like formatter, [beanhub-import](https://github.com/LaunchPlatform/beancount-import) and a [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms) web app

### API

- [gledger](https://github.com/gledger/gledger) Go package to interface with Ledger (go)
- [hledger-lib](https://github.com/simonmichael/hledger/tree/master/hledger-lib) library for parsing and generating reports from *ledger files (haskell)
- [hledger-web](https://github.com/simonmichael/hledger/tree/master/hledger-web) the web app includes a JSON API server for *ledger files (haskell)
- [ledgerhelpers](https://github.com/Rudd-O/ledgerhelpers) extends Ledger's python library (python)
- [node-hledger](https://github.com/rstacruz/node-hledger) Node.js API for *ledger files (javascript)
- [BeanHub API](https://api.beanhub.io/redoc) proprietary SaaS API for operating on hosted beancount repositories and [beanhub-forms](https://github.com/LaunchPlatform/beanhub-forms)
