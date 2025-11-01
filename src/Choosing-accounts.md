% Choosing accounts

Your chart of accounts is an important factor in the success of your accounting system.
Here are some rules of thumb when choosing account names:

- You don't need to try to pick the perfect set of accounts at the start.
  This is plain text accounting - account names can always be changed later with search and replace.

- Expect your chart of accounts to change, as your accounting know-how and accounting needs do.
  It's worth investing time to review and improve it periodically.

- If you are required to use some legally mandated chart of accounts, start with that.

- It's convenient to use the standard [[FAQ#what-are-the-five-top-level-accounts|five top level accounts]] -
  assets, liabilities, equity, revenues, expenses (in your preferred language).

- Under assets and liabilities, add account names representing each real world account that matters to you.
  Checking, savings, cash, credit card, debts, loans, investments etc.

- Group these under parent accounts to keep them organised, if you like:
  Eg assets:bank:foo-bank:checking, assets:investments:vanguard:cash-plus, etc.

- For expenses, start simple.
  These will be somewhat custom for you.
  Optionally, review some existing charts of accounts / lists of expense categories for inspiration (see below).
  Add more accounts/subaccounts as driven by your reporting needs.
  Detailed categories allow more precise reports, simple ones require less mental effort.

- Should you have deep hierarchical account names or shallow ones ?
  If your accounting app is good at summarising deep hierarchies, feel free to go as deep and detailed as you need.
  But don't make unnecessary work for yourself.
  Some hierarchy is natural for accounts and categories, and is used in most PTA examples;
  but if you prefer a flat list of account names, you can do that too.

- If using english account names, should it be "revenues" or "income" ?
  It doesn't matter ("revenues" is used more in business and is the more precise term; "income" is more familiar in personal finance).

- Should account name parts be capitalised ?
  As you prefer. All lower case reduces typing/spelling effort.

- Should multi-word account names use spaces, nospaces, hy-phens, CamelCase ?
  Spaced names look nice to humans, but tend to cause headaches in command lines and scripts, requiring extra work.

- For categorising, should you use accounts, tags, descriptions, or other fields?
  Use accounts primarily, as they are the best supported.
  For adhoc/infrequent categorising, some matchable text in the description can be enough.
  If you have cross-cutting categorising schemes, tags can be handy.
  More on this [in the FAQ](https://plaintextaccounting.org/FAQ#should-i-categorise-with-account-payee-description-tags...).

- Beancount account names are more restrictive than hledger's/Ledger's.
  If you might be exporting to Beancount in future (say, to use the Fava web UI), 
  limiting yourself to Beancount-friendly account names might be worthwhile.

See also:

- [Chart of accounts - How does yours look? (forum)](https://forum.plaintextaccounting.org/t/chart-of-accounts-how-does-yours-look/51)
- [Advice for accounts (reddit)](https://www.reddit.com/r/plaintextaccounting/comments/1oaipdn/advice_for_accounts/)
- [How fine-grained are your COAs? (reddit)](https://www.reddit.com/r/plaintextaccounting/comments/wk6pjo/how_finegrained_are_your_coas)
- [Ledger: Structuring your Accounts](https://ledger-cli.org/doc/ledger3.html#Structuring-your-Accounts)
- [hledger: Account names](https://hledger.org/hledger.html#account-names)
- [hledger: Beancount output](https://hledger.org/hledger.html#beancount-output) how hledger transforms account names for Beancount
- [Beancount Language Syntax: Accounts](https://beancount.github.io/docs/beancount_language_syntax.html#accounts)
- [Beancount Cookbook: Account Naming Conventions](https://docs.google.com/document/d/1Tss0IEzEyAPuKSGeNsfNgb0BfiW2ZHyP5nCFBW1uWlk/view#heading=h.tu0f1kydrpgn)
- [UN COICOP](https://unstats.un.org/unsd/classifications/unsdclassifications/COICOP_2018_-_pre-edited_white_cover_version_-_2018-12-26.pdf) -> VIII. Broad structure... - expense accounts
- [Chart of Accounts for Personal Accounting (the-solipsist)](https://gist.github.com/the-solipsist/c67e956c95af8f798e5631de896ff514)
- [Quicken blog: Budget categories](https://www.quicken.com/blog/budget-categories)
- [French/english chart of accounts](https://www.plancomptable.com/en/french-chart-of-accounts.htm)
