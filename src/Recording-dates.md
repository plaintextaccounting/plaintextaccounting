% Recording dates

Here are notes on recurring questions about dates. See the [summary](#summary) for the short version.

## When does a transaction really happen ?
Transactions often have two dates of interest, or even more than two.

A common example: you record a purchase you made on friday (purchase date) but according to your bank the transaction happened on monday (clearing date).

Or: if you import bank data to your journal, your journal will have the bank dates. In some cases you might want to record the actual purchase date, for your own information.

## Which date(s) should I record ?
Recording "your dates" (dates the transaction was initiated) is usually more meaningful to you and easier to reconcile with your memory and life events.

Recording "bank dates" (clearing dates) makes reconciling with the bank easiest.

Recording both dates (in one of several ways) gives the complete picture, but is more effort.

You should decide which dates matter to you and how accurate you need to be.  Does a day or two disagreement between your journal and bank dates matter ? If it does, then you may want to put in the extra bookkeeping effort to record both. Here's a lazy strategy: don't bother making dates match perfectly, until you're having trouble reconciling; then make them more precise to help find the error.

## How to record multiple dates ?
Say you had a medical expense on Jan 1st, and it clears on Jan 8th. 
There are a number of ways to record the extra date:

### 1. Transaction date and note

Just add a note for your own information. Works with all tools one way or another. 
Eg in the description:
```journal
2022-01-01 doctor, cleared on the 8th
    assets:checking       -50
    expenses:health        50
```
or as a posting comment:
```journal
2022-01-01
    assets:checking       -50  ; cleared on the 8th
    expenses:health        50
```
or a custom tag:
```journal
; hledger
2022-01-01
    assets:checking       -50  ; cleared-date:2022-01-08
    expenses:health        50
```
```beancount
; beancount
2022-01-01 open Assets:Bank:Checking
2022-01-01 open Expenses:Health

2022-01-01 * "doctor"
  Assets:Bank:Checking                     -50 USD
    cleared-date: 2022-01-08
  Expenses:Health                           50 USD
```

Downsides:
- Not fully reportable/queryable. You can probably display it in certain reports,
  and maybe do limited queries on it, 
  but you can't use it to report accurate daily account balances.

### 2. Transaction date and posting date

With Ledger/hledger,
you can give an account's posting a different date from the overall transaction,
by writing it in the posting comment as follows:

Ledger:
```journal
2022-01-01
    assets:checking       -50  ; [2022-01-08]
    expenses:health        50
```
hledger: either the above or:
```hledger
2022-01-01
    assets:checking       -50  ; date:2022-01-08
    expenses:health        50
```

```cli
$ ledger reg expenses  # shows 1/1
$ ledger reg checking  # shows 1/8
```

Downsides:
- Between 2022-01-01 and 2022-01-08 above, money is "in limbo" and the accounting equation (A+L=E) will not be balanced.
- This is not part of traditional double entry bookkeeping.

### 3. Pending account and two transactions

The amount due to, but not yet received by, the doctor is tracked as a liability (a debt not yet settled). 
The pending balance is marked paid on the transaction clearing date. 
If money was flowing in the other direction, it could be tracked as an asset (an expected payment not yet received).
These are just examples, use a different account name like `equity:transfers` if it makes more sense to you.

```journal
; h/ledger

2022-01-01
    liabilities:doctor    -50 = -50  ; optional: balance assertions
    expenses:health        50

2022-01-08
    assets:checking       -50
    liabilities:doctor     50 = 0    ;
```

```beancount
; beancount

2022-01-01 open Assets:Checking
2022-01-01 open Liabilities:Doctor
2022-01-01 open Expenses:Health

2022-01-01 * "doctor" "payment made"
    Liabilities:Doctor    -50 USD
    Expenses:Health        50 USD

2022-01-08 * "doctor" "payment cleared"
    Assets:Checking       -50 USD
    Liabilities:Doctor     50 USD

```
Downsides:
- For routine transactions with small clearance delays, 
  recording and reporting these pending accounts is usually not worth the effort.

### 4. Two transaction dates

In Ledger/hledger, you can write two dates separated by `=`.
The date on the left is the primary date. 
The date on the right is called "effective date" (or "auxiliary date") by Ledger (and "secondary date" by hledger). 
Ledger uses the primary date by default, or the other date if run with the `--effective` (or `--aux-date`) flag
(`--date2` is the preferred flag in hledger).

```journal
2022-01-01=2022-01-08
    assets:checking       -50
    expenses:health        50
```
```cli
$ ledger reg expenses              # shows 1/1
$ ledger reg checking --effective  # shows 1/8
```
Downsides:
- The interpretation of these flags and dates is up to you. Others will interpret them differently.
- They split reports into two modes; you must remember to use the right flag.
- Can't handle more than two dates.
- This feature may or may not combine as you want with all other features (auto postings..).
- This is not part of traditional double entry bookkeeping.


## What if a transaction's dates fall in different files ?
If you split your journal file by year, you might make a purchase at year end that clears in the next year. 
This can complicate your end-of-year closing balances / start-of-year opening balances. 
Use a pending account in this situation.

```journal
; 2021.journal

2021-12-30
    liabilities:doctor    -50 = -50
    expenses:health        50

; The liability appears in year-end closing balances, if you record those:
2021-12-31
    liabilities:doctor     50 = 0
    equity:opening/closing balances
```
```journal
; 2022.journal

; The liability appears in next year's opening balances:
2022-01-01
    liabilities:doctor    -50 = -50
    equity:opening/closing balances

2022-01-08
    assets:checking       -50
    liabilities:doctor     50 = 0
```

## Summary

1. For routine transactions where the clearance delay and accurate daily balances don't matter, record the date you find most useful (yours or the bank's) as the transaction date. If the delay matters a little, you can note the other date in the description or a comment.

2. For accurate daily balances in both accounts, h/ledger users can record the later date with a special comment on the account posting that clears later. Eg: `; [POSTINGDATE]`

3. For important transactions that will take some time to settle, or transactions that straddle two files, record two transactions, transferring to and from a pending account (a temporary liability, asset, or equity).

4. h/ledger users who like the effective/secondary date feature can record two transaction dates separated by an equals sign, and select which one to use at report time. Either `YOURDATE=BANKDATE` (makes remembering what happened easiest), or `BANKDATE=YOURDATE` (makes reconciling with the bank easiest).

## See also

- https://www.ledger-cli.org/3.0/doc/ledger3.html#Effective-Dates
- https://hledger.org/hledger.html#secondary-dates
- https://hledger.org/hledger.html#posting-dates
- https://hledger.org/hledger.html#close-and-balance-assertions
