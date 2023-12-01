% Syntax quick reference: hledger

<link href="quickref.css" rel="stylesheet">

  [Big 3](index.html)
| [Ledger](ledger.html)
| **[hledger](hledger.html)**
| [Beancount](beancount.html)

Brief (incomplete) syntax overview for hledger's journal file format.
Last tested: 2016.
See also:
[hledger manual](https://hledger.org/hledger.html#journal),
[[../index#cheatsheets|Cheatsheets]]

----

## Basic example

    ; a comment

    2016/1/1 set opening balance
       assets:checking       $500.00
       equity:opening balances

    2016/1/5 farmer's market
       expenses:groceries     $50.00
       assets:checking

## Comments

    ; comment
    # comment
    * comment and org-mode outline node

## Basic transactions

    DATE [DESCRIPTION]
       ACCOUNT    AMOUNT
       ACCOUNT    [AMOUNT]

Non-comment lines may end with a comment.
Indented comments are attached to the preceding transaction or posting.

## Dates

    YYYY-MM-DD
    YYYY/MM/DD
    YYYY.MM.DD
    MM-DD
    MM/DD
    MM.DD

## Account names

    TOPACCT[:SUBACCT[:...]]

    Revenues:Salary
    liabilities:credit card:CITI 1234
    other assets:house

Account names begin with a letter.
May contain single spaces.
May contain subaccounts separated by : (colon).

## Amounts

One of
`COMMODITY QUANTITY`,
`QUANTITY COMMODITY`,
`QUANTITY`.

    10
    $10.00
    1,000.0001 USD
    10 "prepaid classes"
    1.000.000,01
    12,34,567.89

Decimal point is .  or , (period or comma).
Digit group separator is ,  or . (the one not used for decimal point).
Any digit grouping can be used, not just thousands.

## More transaction features

    DATE [FLAG] [(CODE)] DESCRIPTION
       [FLAG] ACCOUNT  AMOUNT [PRICE] [=BAL]
       ...
       [FLAG] ACCOUNT  AMOUNT [PRICE] [=BAL]

## Prices

One of
`@ FIXEDUNITPRICE`
`@@ FIXEDTOTALPRICE`
and/or
`{=FIXEDLOTUNITPRICE}`.

These do not record market prices.
The lot price syntax is ignored.

## Balance assertions

`= AMOUNT` after posting amount & price.

Asserts the balance in this commodity,
in this account, excluding subaccounts,
on this day. Same day events are processed in parse order.

## Balance assignments

## Directives

    KEYWORD ARGS...

    account (alias for apply)
    alias
    apply
    comment
    D
    end
    include

## account, open

## close

## commodity

## market price

    P DATE [TIME] COMMODITY UNITPRICE

    P 2015/8/9 GBP $1.55

Used by -V.
A time is ignored.
