% Plain Text Accounting FAQ

See also the [[Cookbook]], [[index#docs|Docs]], and [[index#faqs|app-specific FAQs]].
If you don't see what you need, ask for it in the [[index#news-discussion|chat]],
or [add it yourself](https://github.com/plaintextaccounting/plaintextaccounting/blob/master/src/FAQ.md).

## Getting started

### What's Plain Text Accounting ?

See [[What is Plain Text Accounting ?]].

### Which PTA app should I choose ?

Here are some (mostly old) [comparisons](https://plaintextaccounting.org#comparisons)
Check out the projects' stats, and perhaps their chat rooms / mail lists.
Developer opinions are hard to find, but here are a few:

SM on why hledger over Ledger (2019): https://news.ycombinator.com/item?id=20022346

SM (2022): We all have opinions - ask for them in chat or search the reddit / mail lists / web.
Circa 2022 I hope it's fair to say, without my bias showing:

- Ledger, hledger and Beancount are the big three apps, with many users.
- The other apps are less used, though some may be quite capable.
- Ledger is the oldest and best known, with many features and long-standing quirks.
- hledger is a cleaned-up version of Ledger, 
  the most actively maintained, and the most user-friendly.
- Beancount has the most features for investing and trading, 
  and the most support (and need) for customisation, via Python.
- Ledger and hledger have flexible file formats and parse forgivingly by default, with optional strictness.
  Beancount has a more restricted file format and always parses strictly.
- It's generally relatively easy to migrate data from one to another, 
  eg using [data conversion tools](https://plaintextaccounting.org#data-importconversion)
  like ledger2beancount and beancount2ledger.

SM on new user experience (2023): https://fosstodon.org/@simonmic/110120922501551538

### How should I organise files ?

See [[Organising files]].

### How should I choose account names ?

See [[Choosing accounts]].

### Where are debits and credits ? Why are some balances negative ?

Many plain text accounting tools use negative and positive numbers in place of the traditional *credit* and *debit* terminology.
Of course the credits and debits are still there; in this system, whenever you see a negative amount being posted in an account, it is a credit, and when you see a positive amount posted, it is a debit.
This is just a different surface presentation, which most newcomers find more intuitive and easier to learn.

Because of this, PTA tools often show liability, equity, and revenue account balances as negative numbers.
So eg when a liability becomes larger (more debt!), the balance becomes a larger negative number (more negative).

Similarly, when equity or revenues increase, their numbers get more negative.
You'll get used to reading these kind of reports in a day or two.
Some PTA tools also give the option of flipping these negative signs, or showing traditional credit and debit terminology.

More discussion:

- [reddit: Is there any plain text accounting software which uses standard debits and credits?](https://www.reddit.com/r/plaintextaccounting/comments/18sbmsx/is_there_any_plain_text_accounting_software_which/)
- [hledger FAQ: Why are my revenue (income), liability, and equity balances negative ?](https://hledger.org/faq.html#why-are-my-revenue-income-liability-and-equity-balances-negative-)

## General usage

### How big is your ledger/journal file ?

For individual accounting, somewhere between 500-1500 transactions and 100-400 Kb of journal file per year seems typical.

- https://www.reddit.com/r/plaintextaccounting/comments/ay8ec0/limits_on_ledger_cli_file_size/ (2019)
- https://www.reddit.com/r/plaintextaccounting/comments/dbjizl/how_big_is_your_ledgerjournal_file/ (2019)

## Accounting situations

