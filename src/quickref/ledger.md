% Syntax quick reference: Ledger

<link href="quickref.css" rel="stylesheet">

  [Big 3](index.html)
| **[Ledger](ledger.html)**
| [hledger](hledger.html)
| [Beancount](beancount.html)

Brief (incomplete) syntax overview for Ledger's journal file format.
Last tested: 2016.
See also:
[Ledger manual](https://www.ledger-cli.org/doc/ledger3.html#Journal-Format),
[[../index#cheatsheets|Cheatsheets]]

----

## Basic example

    ; a comment

    2016/1/1 set opening balance
       assets:checking       $500.00
       equity:opening balances

    2016/1/5 farmer's market
       expenses:groceries     $50.00
       Assets:checking

Comments, directives, and/or transactions in any order.

## Comments

    ; comment
    # comment
    % comment
    | comment
    * comment and org-mode outline node

Non-comment lines may end with a comment.
Indented comments are attached to the preceding transaction or posting.

## Basic transactions

    DATE [DESCRIPTION]
       ACCOUNT    AMOUNT
       ACCOUNT    [AMOUNT]

A transaction contains any number of indented postings (usually two), whose amounts must sum to zero.
At least two spaces required between account and amount.
One amount may be omitted.

## Dates

    YYYY-MM-DD
    YYYY/MM/DD
    YYYY.MM.DD
    MM-DD
    MM/DD
    MM.DD

Other formats allowed if specified with `--input-date-format`.

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

COMMODITY is a symbol, word or phrase; if it contains spaces or numbers, it must be in double quotes.
It can be on the left or right, with or without a separating space.
QUANTITY is a number with 0 or more decimal places.
Decimal point is . (period).
Digits can be grouped into thousands by , (comma).
Amount styles influence the standard display style for each commodity.

## More transaction features

    DATE [FLAG] [(CODE)] DESCRIPTION
       [FLAG] ACCOUNT  AMOUNT [PRICE] [=BAL]
       ...
       [FLAG] ACCOUNT  [AMOUNT [PRICE] [=BAL]]

FLAG (aka STATE) is empty, ! or * meaning uncleared, pending or cleared
CODE is any string, in parentheses
DESCRIPTION can be a payee name, narration, or both

## Prices

One of
`@ UNITPRICE`,
`@@ TOTALPRICE`
and/or one of
`{LOTUNITPRICE}`,
`{=FIXEDLOTUNITPRICE}`
and/or
`[LOTDATE]`.

A UNITPRICE or TOTALPRICE also records a market price on this date.
A LOTDATE is written in square brackets.

## Balance assertions

`= AMOUNT` after posting amount & price.

    2016-03-10
       Expenses:Food      $20
       Assets:Cash       $-20 = $80

Asserts the balance in this commodity,
in this account, excluding subaccounts,
at this point in the parse order.

## Balance assignments

`= AMOUNT` with no preceding/inferred posting amount.

    2012-03-10 Adjustment
       Assets:Cash            = $50
       Expenses:Misc 

Sets the posting amount so as to make the balance assertion true. (The other amountless posting allows the transaction to balance).

## Directives

    KEYWORD ARGS...
       [SUBDIRECTIVES]

    account 

    alias
    apply
    assert
    bucket
    capture
    check
    comment
    commodity
    define
    end
    expr
    fixed
    include
    P 

    payee
    tag
    test
    year

    Timeclock directives:
    i
    o
    b
    h

## account, open

    account ACCOUNT 
       [SUBDIRECTIVES]

    account Revenues:Salary
    account Expenses:Food:Chicken
       note chicken food expenses
       alias food
       payee ^(KFC|Popeyes)$
       check commodity == "$"
       assert commodity == "$"
       eval print("Hello!")
       default

Gives more error checking with --strict  or --pedantic.
Optional subdirectives do more stuff.

## close

## commodity

    commodity COMMODITY

    commodity EUR
    commodity $
      note American Dollars
      format $1,000.00
      nomarket
      default

Gives more error checking with --strict  or --pedantic.
Optional subdirectives do more stuff.

## market price

    P DATE TIME COMMODITY UNITPRICE

    P 2004/06/21 02:18:02 AAPL $32.91
    P 2004/06/21 02:18:02 AU $400.00

Used by -V and -X.
Also set by transaction prices.
