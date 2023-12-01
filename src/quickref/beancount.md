% Syntax quick reference: Beancount

<link href="quickref.css" rel="stylesheet">

  [Big 3](index.html)
| [Ledger](ledger.html)
| [hledger](hledger.html)
| **[Beancount](beancount.html)**

Brief (incomplete) syntax overview for Beancount's journal file format.
Last tested: 2016.
See also:
[Beancount manual](https://beancount.github.io/docs/beancount_language_syntax.html),
[[../index#cheatsheets|Cheatsheets]]

----

## Basic example

    ; a comment

    2016-01-01 open Assets:Checking
    2016-01-01 open Equity:Opening-Balances
    2016-01-01 open Expenses:Groceries

    2016-01-01 txn "set opening balance"
       Assets:Checking         500.00 USD
       Equity:Opening-Balances

    2016-01-05 txn "farmer's market"
       Expenses:Groceries     50 USD
       Assets:Checking

All referenced accounts must have an open directive.

## Comments

    ; comment

Any unrecognised line is also a comment

## Basic transactions

    DATE txn [["PAYEE"] "DESCRIPTION"]
       ACCOUNT    AMOUNT
       ACCOUNT    [AMOUNT]

DESCRIPTION must be in double quotes, can be multiline.
No need for two spaces between account and amount.

## Dates

    YYYY-MM-DD
    YYYY/MM/DD
    YYYY.MM.DD

Only YYYY-MM-DD with 8 digits is officially supported.

## Account names

    TOPACCT[:SUBACCT[:...]]

    Income:Salary
    Liabilities:CreditCard:CITI-1234
    Assets:House

Top level account must be one of Assets, Liabilities, Equity, Income, Expenses.
Each subaccount must be capitalised.
Letters, digits and hyphen are allowed (no spaces).

## Amounts

    QUANTITY COMMODITY

    10USD
    1000.0001 USD

COMMODITY is all capital letters, on the right, and required .
Decimal point is . (period).
Digit group separator , (comma) is allowed and ignored.

## More transaction features

    DATE [txn|FLAG] [["PAYEE"] "DESCRIPTION"]
       [FLAG] ACCOUNT       AMOUNT [PRICE]
       ...
       [FLAG] ACCOUNT       AMOUNT [PRICE]

The txn keyword may be replaced by a FLAG.
For just a payee, use `"PAYEE" ""`.

## Prices

`{LOTUNITPRICE[ / LOTDATE]}`
and/or one of
`@ UNITPRICE`,
`@@ TOTALPRICE`.

Lot prices are remembered and form distinct commodities, other prices are not.
If there is both a lot price and a regular price, the latter records a market price.

## Balance assertions

    DATE balance ACCOUNT AMOUNT

    2014-08-09 balance Assets:Cash 562.00 USD
    2014-08-09 balance Assets:Cash 210.00 CAD

Asserts the balance in this commodity,
in this account, including subaccounts,
at the start of this day.

## Balance assignments

## Directives

    [DATE] KEYWORD ARGS...
       [SUBDIRECTIVES]

    DATE balance
    DATE close
    DATE commodity
    DATE document
    DATE event
    DATE note
    DATE open
    DATE pad
    DATE price
    DATE txn
    include
    option
    plugin
    poptag
    pushtag

## account, open

    DATE open ACCOUNT [COMMODITY[,...]] [METHOD]

    2014-05-01 open Assets:Cash USD,CAD

Every account posted to needs an open directive with prior date.

## close

    DATE close ACCOUNT

## commodity

    DATE commodity COMMODITY
       [METADATA]

    1867-01-01 commodity CAD
       name: "Canadian Dollar"
       asset-class: "cash"

Attaches metadata to a commodity.

## market price

    DATE price COMMODITY AMOUNT

    2014-07-09 price USD  1.08 CAD

Also set by transaction prices.
