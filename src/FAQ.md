% Plain Text Accounting FAQ

See also the [[Cookbook]], [[index#docs|Docs]], and [[index#faqs|app-specific FAQs]].
If you don't see what you need, ask for it in the [[index#news-discussion|chat]],
or [add it yourself](https://github.com/plaintextaccounting/plaintextaccounting/blob/master/src/FAQ.md).

### What's Plain Text Accounting ?

See [[What is Plain Text Accounting ?]]

### Which PTA app should I choose ?

Here are some old and outdated [comparisons](https://plaintextaccounting.org#comparisons)
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

### How big do journal files get ?

For individual accounting, somewhere between 500-1500 transactions and 100-400 Kb of journal file per year seems typical.

- https://www.reddit.com/r/plaintextaccounting/comments/ay8ec0/limits_on_ledger_cli_file_size/ (2019)
- https://www.reddit.com/r/plaintextaccounting/comments/dbjizl/how_big_is_your_ledgerjournal_file/ (2019)

### How should I choose account names ?

See below and [[Choosing accounts]].

### What are the three top level accounts ?

In english, they are **Assets** (things you own), **Liabilities** (things you owe), **Equity** (your/owners' investment or stake or "overall wealth").

### What are the five top level accounts ?

In practice, two more top level accounts are used, making five.
In english: **Assets**, **Liabilities**, **Equity**, **Revenues** (or **Income**), **Expenses**.
Sometimes abbreviated to single letters; hledger uses **A**, **L**, **E**, **R**, **X**.

Revenues and Expenses are essentially inflows and outflows during some period;
technically they are changes in Equity, reported separately for clarity.
Businesses usually merge Revenues and Expenses into their Equity balance at the end of each accounting period.

- [hledger: Accounting Basics](https://hledger.org/accounting.html#debits-and-credits)

### What is the accounting equation ?

A simple  formula that always holds true when bookkeeping is correct. 
You'll see it written in different ways, eg:

- Equity = Assets - Liabilities

- Assets + Liabilities + Equity = 0  (using PTA's sign convention)

- Equity = Assets - Liabilities

- Assets = Liabilities + Equity + Revenue − Expenses  (use this form when R and X haven't been merged into E)

You can check the accounting equation for your accounts by inspecting an ALE balance report
like [`hledger bse`](https://hledger.org/dev/hledger.html#balancesheetequity).
(In practice a balanced accounting equation isn't essential for personal accounting, and most people don't check it.)

- [Wikipedia](https://en.wikipedia.org/wiki/Accounting_equation)
- [Investopedia](https://www.investopedia.com/terms/a/accounting-equation.asp)

### What are balanced transactions ?

A transaction where the sum of inflows is equal to the sum of outflows
(or with the signed number convention described below: where all of the posted amounts sum to zero),
confirming that no money appeared or disappeared.

PTA apps and other double-entry bookkeeping software enforce balanced transactions to help prevent errors
(sometimes with [exceptions](https://hledger.org/dev/hledger.html#virtual-postings) for special circumstances).

Note, balanced transactions does not imply a balanced accounting equation.
Both of these can help detect errors, but balanced transactions is a higher priority.

### In english, should I call it Revenue or Income ?

"Revenue" is more often used in business, and more precise;
it implies "gross income", ie total proceeds before taxes and certain costs,
whereas "Income" implies "net income", ie profit after taxes and costs.
Eg the report showing profit is called "Income Statement" in the US.

"Income" is very commonly used in personal finance and more familiar to non-accountants.

So, use the one you prefer.

### What is Equity really ?

Equity is more abstract than the other top level accounts, can be described in different ways, and takes a bit longer to feel intuitive.
It is best understood with repeated exposure. 
Two useful rules of thumb:

- Equity represents "ownership" in business or "wealth" in personal finance.
- If something doesn't belong to the other four top level accounts, it's equity.

When multiple owners/investors have contributed funding to set up a business, each of them owns a portion of the business, which is tracked as equity.
And if the business is dissolved, they would each have their share returned to them (ideally).

In personal accounting, your finances are "the business" and you are the only investor.
When you start tracking your finances, whatever wealth you have accumulated up to this point is your initial "contribution to the business", ie your equity, which funds your starting balances.
Practically speaking, in personal accounting you'll never use equity except

- when setting up starting balances in a new file
- when converting between currencies (optional, if you want to be [really correct](https://hledger.org/dev/hledger.html#equity-conversion-postings))

### Where are debits and credits ?

Many plain text accounting tools use **signed numbers** in place of the traditional terms **debit** and **credit**.

Of course the debits and credits are still there.
But with this convention, 
when you see a positive amount being posted in an account, it is a debit (inflow),
and when you see a negative amount posted, it is a credit (outflow).

(Or possibly a contra-credit or contra-debit respectively. "Contra" means "opposite to the normal direction".)

(Be warned of the usual pitfall that banks and businesses use "debit" and "credit" from their point of view, ie reversed, when communicating with customers.)

Here's a mnemonic, if you need one:

```
          debit | credit
             to | from  
             in | out   
           plus | minus 
           left | right 
    short words | longer words
```

Newcomers to accounting find signed numbers much more intuitive and easier to learn than debit/credit terminology,
partly because they have less historical and didactic baggage.
(Some experienced accountants find otherwise.)

- [Hacker News: Double-entry bookkeeping as a directed graph](https://news.ycombinator.com/item?id=39988993)

### Why do some balances look negative ?

Because of the [signed number convention](#where-are-debits-and-credits), many PTA apps and examples show Equity, Liability, and Revenue account balances as negative numbers.
You can get used to reading these signed-number reports in a day or two.
Just remember: when equity increases (more wealth!) or liability increases (more debt!) or revenue increases (more income!), 
their balance is shown as a larger negative number (more negative).

Some PTA tools allow [flipping the minus signs](https://hledger.org/dev/hledger.html#incomestatement),
or showing [debits](https://ledger-cli.org/doc/ledger3.html#index-_002d_002ddc) and [credits](https://mandoc.bsd.lv/pta/man/pta.1.html#b) instead of signed numbers.

- [hledger FAQ: Why are my revenue (income), liability, and equity balances negative ?](https://hledger.org/faq.html#why-are-my-revenue-income-liability-and-equity-balances-negative-)
- [reddit: Is there any plain text accounting software which uses standard debits and credits?](https://www.reddit.com/r/plaintextaccounting/comments/18sbmsx/is_there_any_plain_text_accounting_software_which/)

### Should I categorise with account, payee, description, tags... ?

Accounts are the most standard, best supported mechanism, so typically you should use them for most categorising.
But it depends on the level of detail you need, your data entry process, your PTA app, and your preferences.
Eg:

- If you like economy of concepts and portability within/beyond PTA, and your app has good depth-limiting support:
  use accounts primarily, making them as deep and detailed as you need.
  Having a dedicated account for every payee might be going too far (or not..)
- If you like seeing simple accounts by default, without needing to limit depth:
  keep the account tree shallow, and note extra details in the payee/description field when needed.
- If you have multiple categorisation schemes that are independent/cross-cutting - 
  eg you have standard expense categories, but also clients or projects or trips they are associated with:
  use accounts for the primary scheme and tags for the others.

More:

- [Reddit: On ledger-cli, what is the difference between payee and account?](https://www.reddit.com/r/plaintextaccounting/comments/ybwi4a/on_ledgercli_what_is_the_difference_between_payee/)
- Some apps let you use tags/other fields as alternate account names:
  [Ledger: --pivot](https://ledger-cli.org/doc/ledger3.html#index-_002d_002dpivot-TAG-1),
  [hledger: Pivoting](https://hledger.org/dev/hledger.html#pivoting)

### Which account type are loans ?

If you are the lender, in your ledger it's an asset. Eg `assets:loans:PERSON` or `assets:receivable:BORROWER`.

If you are the borrower, in your ledger it's a liability. Eg `liabilities:debts:PERSON` or `liabilities:payable:LENDER`.

If the loan is terminated without being fully repaid, eg by being forgiven, 
in your ledger the remaining amount becomes an expense (if you were the lender) or revenue (if you were the borrower).

- [[Borrowing and Lending]]

### Which account type are pre-paid commuter passes, credits at a business, etc ?

If you would like to track them in detail, record them as pre-paid assets.
Eg `assets:prepaid:rail-card` or `assets:prepaid:yoga-studio`.
You can record them either in your base currency, or with a dedicated commodity symbol, like `CLASSES`.
As you use them, transfer/convert them to expenses.

If you don't need such detail you can record their full amount as an expense on the purchase date, and not track them further.

### How to track savings goals ?

Some ways people have tried:

- Keep imaginary subaccounts in your savings account. Document the goal in the subaccount name so it shows up in reports along with the balance. Simple.
- Treat it as a [[Budgeting]] problem. h/ledger's --budget goal report is probably the most useful way.
- Track it as an imaginary liability that you are paying off. Could add a bit of noise and confusion.
- Script/build a custom goals report for yourself.

More:

- https://www.reddit.com/r/plaintextaccounting/comments/1c2bvx2/how_to_track_goals_in_beancount/
- https://www.reddit.com/r/plaintextaccounting/search?q=goals&restrict_sr=on
