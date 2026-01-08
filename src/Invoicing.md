% Invoicing

Businesses send invoices to clients to request payment. You may want to track, eg:

- how much is due to be invoiced
- how much has been invoiced but not yet paid
- how much has been invoiced and paid.

How to record invoices and payments varies depending on whether the business
uses the Accrual or Cash accounting method.

## Accrual accounting

Revenue is recorded (and taxed) in the period when the corresponding goods/services
are provided - not at the time of payment, which usually happens after some delay.
The expected payment is tracked as a receivable, which is a type of asset.

A good time to record revenue is when the receivable is created (by sending the invoice).
So:

```journal
2020-02-01 * (202001ab) AB Inc. | invoice for work done in january
    revenues:consulting:ab     $-1000
    assets:receivable:ab        $1000

2020-02-15 * AB Inc. | receive full payment for 202001ab
    assets:receivable:ab       $-1000 ;= $0  ; optional: when paid in full, assert that
    assets:checking             $1000
```

## Cash accounting

Revenue is recorded when money is actually received:

```journal
2020-02-15 * AB Inc. | receive full payment
    revenues:consulting:ab     $-1000
    assets:checking             $1000
```

## Tracking invoices with cash accounting

Invoices are strictly speaking not part of cash accounting.
But if you want to track them, you could use equity to balance the transactions, as follows:

```journal
2020-02-01 * (202001ab) AB Inc. | invoice for work done in january
    assets:receivable:ab        $1000
    equity:receivable          $-1000

2020-02-15 * AB Inc. | receive full payment for 202001ab
    equity:receivable           $1000
    assets:receivable:ab       $-1000 = $0
    revenues:consulting:ab     $-1000
    assets:checking             $1000
```

Or use unbalanced postings (use a special top level account to avoid unbalancing the accounting equation, if you care about that):

```
2020-02-01 * AB Inc. | invoice for work done in january
    (invoices:receivable:ab:202001ab)        $1000

2020-02-15 * AB Inc. | receive full payment for 202001ab
    (invoices:receivable:ab:202001ab)  $-1000 = $0
    revenues:consulting:ab             $-1000
    assets:checking                     $1000
```

## Estimated tax

If you're a freelancer in the US, eg, you may be responsible for 
paying estimated income taxes. Here's the above transaction,
with additional postings to track and save for tax owed:

```journal
2020-02-15 * AB Inc. | receive full payment for 202001ab and save estimated tax
    equity:receivable           $1000
    assets:receivable:ab       $-1000 ;= $0
    revenues:consulting:ab     $-1000
    equity:payable:us:2020       $150  ; estimate new tax owed, eg 15% 
    liabilities:tax:us:2020     $-150
    assets:checking:tax:us:2020  $150  ; save that amount (in a virtual subaccount)
    assets:checking              $850
```

## Cash accounting, invoices, reimbursed expenses, and estimated tax

Another example:
```
2025-11-10 * AB Inc. | some expense
    assets:bank:wf:bchecking                 $-50
    assets:receivable:ab:202511ab             $50

2025-11-14 * AB Inc. | another expense
    assets:bank:wf:bchecking                 $-40
    assets:receivable:ab:202511ab             $40

2025-12-05 * AB Inc. | invoice
    equity:unrecognisedrevenue             $-1000
    assets:receivable:ab:202511ab           $1000
    ; + $90 reimbursements, already recorded

2025-12-12 * AB Inc. | payment for 202511ab invoiced on 2025-12-05
    ; receive payment
    assets:receivable:ab:202511ab         $ -1090 = $0
    assets:bank:wf:bchecking               $ 1090
    ; recognise revenue
    revenues:ab                           $ -1000
    equity:unrecognisedrevenue             $ 1000 = $0
    ; estimate income tax
    liabilities:tax:2025:us                $ -250  ; 25% of revenue (eg)
    expenses:tax:2025:us                    $ 250
    liabilities:tax:2025:hi                 $ -60  ;  6% of revenue (eg)
    expenses:tax:2025:hi                     $ 60
```

## See also
- [invoicing entries](https://gist.github.com/simonmichael/986a65106a9db1f8bd68)
- [Ledger Practices: Tracking Reimbursable Expenses](https://felixcrux.com/blog/ledger-practices-tracking-reimbursable-expenses)
- https://en.wikipedia.org/wiki/Basis_of_accounting
- https://plaintextaccounting.org/#invoicing
- https://github.com/simonmichael/hledger/tree/master/examples/invoicing
- https://github.com/kairosdotapp/kairos
- https://forum.plaintextaccounting.org/t/tx-for-sending-invoice-with-vat/459

<!-- mockup for badges that could be added by a lint tool. These would cover all examples on the page. -->
Examples tested on 2022-01-09 with:
![](https://img.shields.io/badge/hledger-1.24.1-brightgreen.svg)
![](https://img.shields.io/badge/ledger-3.2.1-brightgreen.svg)
