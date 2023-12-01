% Getting started FAQ

### Which PTA app should I choose ?

Here are some [PTA app comparisons](https://plaintextaccounting.org#pta-app-comparisons)
(though most are fairly old).
Check out the projects' stats, and perhaps their chat rooms / mail lists.
Here are a few more opinions:

SM (2022): We all have opinions - ask for them in chat or search the reddit / mail lists / web.
Circa 2022 I hope it's fair to say, without my bias showing:

- Ledger, hledger and Beancount are the big three apps, with many users.
- The other apps are less used, though some may be quite capable.
- Ledger is the oldest and best known, with many features and long-standing quirks.
- hledger is a cleaned-up version of Ledger, 
  the most actively maintained, and the most user-friendly.
- Beancount has the most features for investing and trading, 
  and the most support (and need) for customisation, via Python.
- Ledger and hledger parse files flexibly and forgivingly by default, with optional strictness.
  Beancount's file format is more restricted and always strict.
- It's generally relatively easy to migrate data from one to another, 
  eg using [data conversion tools](https://plaintextaccounting.org#data-importconversion)
  like ledger2beancount and beancount2ledger.

SM on new user experience (2023): https://fosstodon.org/@simonmic/110120922501551538

### How to organise files ? Should I split the journal into many files ?

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

### How big is your ledger/journal file ?

For individual accounting, somewhere between 500-1500 transactions and 100-400 Kb of journal file per year seems typical.

https://www.reddit.com/r/plaintextaccounting/comments/dbjizl/how_big_is_your_ledgerjournal_file/
