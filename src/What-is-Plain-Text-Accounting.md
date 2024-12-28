% What is Plain Text Accounting ?

## What is this

### What is accounting, and what can it do for me?

[Accounting](https://en.wikipedia.org/wiki/Accounting) is tracking the flow of valuable commodities, such as money or time.
It clarifies activity, priorities, obligations, opportunities.
It can [reduce stress](http://podcastle.org/2009/10/09/pc-miniature-38-accounting-for-dragons) and even be enjoyable.

### What is double-entry accounting?

[Double-entry bookkeeping](https://en.wikipedia.org/wiki/Double-entry_bookkeeping_system) 
is the standard method for keeping accounting records reliably.
For every movement of value (a [transaction](https://en.wikipedia.org/wiki/Financial_transaction)), both the source and destination are recorded,
and simple arithmetic invariants help prevent errors.
(For example, the sum of increases should equal the sum of decreases.)

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

### What is Plain Text Accounting?

In 2003, John Wiegley invented Ledger: 
a command-line reporting tool and a plain text data format for efficient double-entry-style accounting.
Ledger's ideas appealed to many software developers and technical folk.
In 2007 and 2008 it was joined by hledger and Beancount respectively,
and as of 2019 there are more than a dozen [Ledger-likes](#plain-text-accounting-apps),
many add-on tools and an active community.
The plaintextaccounting.org site was started in 2016 to help keep track of it all.

### What are some characteristics of Plain Text Accounting ?

Accounting data is valuable;
we want to know that it will be accessible for ever - even without software (you can keep paper copies).
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

### Who is using this, and how?
[Who's using Ledger?](https://github.com/ledger/ledger/wiki/Who's-using-ledger%3F) has some stories.

### Is it a good fit for me?
If you would like to use a GUI that provides lots of guidance, 
PTA tools currently don't meet that need.
Most current PTA users tend to be comfortable using the command line,
editing plain text, and perhaps using version control.

### What are the alternatives?
Traditional GUI-centric accounting software:  
[Free/open-source](https://en.wikipedia.org/wiki/Free_and_open-source_software): GNUCash, Grisbi, KMyMoney..  
Commercial: Quicken, Quickbooks, You Need A Budget, Actual Budget..

Online/cloud-based accounting software: Xero, FreeAgent..

Here is Wikipedia's [Comparison of accounting software](https://en.wikipedia.org/wiki/Comparison_of_accounting_software).
Also: 

- [spreadsheets](https://backchannel.com/a-spreadsheet-way-of-knowledge-8de60af7146e#.2hr7pi9pb)
- keeping accounts on paper
- using a bookkeeper/accountant.

### What are the advantages over other GUI-based free/open-source accounting software like GnuCash?

<!-- https://www.reddit.com/r/plaintextaccounting/comments/dboxgx/what_are_the_advantages_of_ledger_and_the_likes/ -->

Some key factors:

<!-- why stupid line breaks without nbsp ? why numbers instead of letters ? -->

a. The plain text, human readable, well supported data formats.

b. The division of concerns between creating and managing the data
   (your responsibility) and analysing it (the tool's responsibility).
   Ie "immutable data" + "referentially transparent reporting tools".

c. The command-line interface.

d. The ecosystem of related tools.

create synergies such as:

1. The data is more future proof. You can access it relatively easily
   with different software, newly-written software, or no software.

2. The command-line based UI, together with the plain text format,
   allows easy integration with other software, custom workflows and
   automation.

3. The user's responsibilities and mental model feel simpler, ie: "I
   just need to keep a list of transactions". Complex features and
   tools are not visible until you need them. Common actions can be
   easily scripted for daily use.

4. The data can be managed using the rich ecosystem of tools for
   managing text. This is appealing to folks familiar with such tools.

5. Most significantly, the data can be effectively version controlled,
   providing an audit trail, unlimited "undo", and collaboration.

6. Because the software (mostly) does not touch your data, and because
   version control would let you know and roll back if it did, you can have
   great confidence in the integrity of your data. 
   If the software misbehaves, your data is not at risk.
   It's safe and relaxing to try out new features or new software on your data.

7. The data/tool separation facilitates decentralised development,
   stimulating an ecosystem of more tools and integrations.

8. The free form DSL-style format provides great expressiveness for
   modelling and documenting real-world financial activities, without
   UI-imposed limitations.

### What are the advantages over commercial accounting software, like QuickBooks?

In addition to the advantages above, being Free or Open Source software helps ensure:
- No lockin - your data remains accessible, and there are no yearly fees.
- You can fix, enhance and port the software.
- The software is more portable, scriptable, and lightweight.

### What are the advantages over spreadsheets?

- Recording complex transactions (double entry, arbitrary splits) is harder in spreadsheets
- Spreadsheets get unwieldy as you accumulate a lot of transactions over a long period of time.
- Spreadsheets are so flexible that each one is unique; common community-wide format, documentation, error checking workflows etc. is not feasible
- The usual advantages of plain text mentioned above (longevity, readability, version control etc.)
  (There are also plain text spreadsheets, but they are probably less readable and/or less featureful.)

### Where can I read more discussion of this approach ?

- [The Surprising Ease of Plain Text Accounting](https://news.ycombinator.com/item?id=12119050)
- Articles linked below...
- ...

## Objections and concerns

### Isn't personal accounting a waste of time?

People have very different needs and practise personal accounting for many different reasons. There is of course a point of diminishing returns; tailor your accounting practices to your needs. Needs change over time. Some of us would benefit from doing more (or better) accounting, some less (I would guess this second group is smaller).
In [The Millionaire Next Door](https://en.wikipedia.org/wiki/The_Millionaire_Next_Door) (highly recommended), one research finding was that above-average wealth accumulators spend more time on financial planning, which for many of us requires accounting as a foundation. "Minimal time dedicated to financial planning is a leading indicator of a UAW [Under Accumulator of Wealth]".

### Must I edit text and type cryptic commands?

Not entirely!
"Plain Text Accounting" is a broad description, referring mainly to the data format.
We welcome optional [GUIs](index.md#ui-console), and they are coming.

### Do you really enter every little transaction?

Yes! Many folks in our community do it. Mahatma Gandhi reconciled to the penny every night. J.D. Rockefeller was famous for his ledgers.
It's not required. I started doing it as a temporary learning exercise, and still like it. It makes troubleshooting and reconciling easier.

### How is that possible?

Practice, and a process/toolset that suits you. Some folks import most of the data from their banks, so little manual data entry is required. A few prefer to manually enter everything, for the increased awareness and insight. "Manual" data entry is usually assisted in some way: interactive console tools (hledger add and similar), web-based tools (hledger-web and similar), GUI tools (ledgerhelpers), smart editors (eg emacs & ledger-mode), recurring transaction scripts. I currently use a mixture of bank CSV import and rapid copy/paste in emacs. I spend 15 minutes a day on average, and for me that's currently a good investment.

### How do I use the transaction data in my bank's web or mobile app?

If you can export it as CSV, you can import it and run queries against it. There are also some tools for converting OFX, QIF etc.

### So I've got a huge list of transactions recorded, duplicating my bank statements. How does that help?

Accounting is modelling flows of money (or other value). Such a model aggregates information from many sources, in one trusted place. With it you can efficiently generate reports, forecast things (cashflow!), answer questions, try experiments.
Some people need a very simple model, others benefit from a more detailed one, and we don't know up front what we might need in future. The most fundamental accounting data is a simple list of transactions (the journal). Once you have captured this, you can mine it for anything you may want later on.
Plain text accounting provides nice open data format(s), tools and practices for doing this, and could be a good foundation for more powerful tools.

### Isn't a command-line tool too limited for real-world accounting needs?

*"I am sure for a simple expense/budget ledger it will work OK, but when it comes to recurring journals, multiple reconciliation accounts, inter company transfers, control account tracing etc., give me a nice GUI any day..."*\
Understandable. The current plain text accounting tools provide a very generic double entry accounting system with which you can model such things, and script them.
There are a number of generic GUIs available (hledger has curses and web interfaces, and there are web/curses/GTK interfaces for Ledger and beancount). But there are not yet a lot of rich task-specific GUIs. There's no reason they can't be built, though.

### Isn't a plain text format too limited for large organizations?

*"it's pretty obvious that plain-text files don't scale to a multinational, with hundreds of accountants of various types all trying to work with the same files. Even with proper use of Git I bet that would get old fast. You would instead want a real database, with a schema, and some data validation and some programs/webpages to smooth out the data entry and querying and whatnot."*\
I'm not sure. Current plain text accounting tools can do some schema definition and data validation, and will do more in future. The plain text storage format is open, human-readable, future-proof (useful even without the software), scales smoothly from simple to complex needs, and taps a huge ecosystem of highly useful tooling, such as version control systems. And, despite the name, there's no reason these tools can't support other kinds of storage, such as a database.


### If this is double entry accounting, where are the debits and credits?

Most (not all) plain text accounting implementations use signed
amounts instead of debits and credits. This makes them "double entry
light" perhaps, but it has been a rather successful simplification,
intuitive to most newcomers.

### How do I communicate with my accountant?

Clean up text reports by hand,
print them as PDF,
export CSV reports to a spreadsheet..

### What if my accountant only uses QuickBooks?

You'll need a new accountant,
or a duplicate set of books in QuickBooks,
or to pioneer *ledger -> QuickBooks exporting.

### Can I use this to do my taxes?

You can use this to track and report the data needed for tax reporting.
Fill out and submit tax forms with another tool, or by hand.

