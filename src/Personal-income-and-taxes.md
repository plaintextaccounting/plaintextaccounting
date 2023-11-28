% Personal income and taxes

Some increasingly complex/increasingly "correct" examples of managing
your income and personal taxes.

## Minimal

This variant notes only actual transfers from and to your bank account.
Once a year a final tax payment is made.

```journal
; repeat this every month, or whenever you get paid
2022-01-01 Your Company
    Assets:Checking                   $1,500.00
    Income:Your Company              $-1,500.00

2022-08-31 Tax
    Expenses:Tax                        $200.00
    Assets:Checking                    $-200.00
```

This method can also be used when tax is withheld on your wages, in
which case this tracks net income only. The taxes should then go to /
come from an equity account rather than an expense.

## Tracking gross salary and withholding on wages

Part of your income is withheld by your employer as a deposit on all
taxes to be paid. As this money is technically expended (even though
at the time it is not known to what exactly, and there is a chance of
receiving a refund) it is put into an Expense account, not an Asset
account. Once the final tax bill is received, the already paid amount
can be redistributed into any relevant `Expenses:Taxes` account, or
partially refunded.

```journal
2022-01-01 Your Company
    Income:Your Company              $-2,000.00 ; gross income
    Expenses:Taxes:Withholding Tax      $400.00
    Equity:Paycheck Differences        $-100.00 ; most jobs will try to give untaxed benefits. As we do not care about it this is dumped in an Equity account
    Assets:Checking                   $1,500.00 ; net income

2022-08-31 Tax
    Expenses:Taxes:Withholding Tax                     $-4,800.00 ; total amount of taxes already withheld
    Expenses:Taxes:Income Tax                           $4,500.00 ; 
    Expenses:Taxes:__________                             $200.00 ; 
    Assets:Account Receivable:Tax Benefits               $-100.00 ; any tax benefits accumulated in other places e.g. retirement plans or subsidised renovations
    Assets:Checking                                       $200.00 ; difference is refunded
```

## Tracking your entire paycheck

If you want to take it a step further, you can track the entirety of
your paychecks, benefits included. Untaxed benefits are simply added
on top. You might want to do this if you want to be able to compare
different job offers based on their entire compensation package instead
of just net salary.

```journal
2021-12-30 Salary December 2021
    Income:Salary:Gross                               $-2,000.00 ; gross income
    Expenses:Salary:Social Security                      $300.00
    Expenses:Taxes:Withholding Tax                       $400.00 
    Income:Salary:Untaxed                               $-200.00 ; Untaxed benefits e.g. Work From Home compensation
    Assets:Accounts Receivable:Salary                  $1,500.00 ; net income

2022-01-03 Salary deposit December 2021
    Assets:Accounts Receivable:Salary                 -$1,500.00 
    Assets:Checking                                    $1,500.00

2022-07-15 Tax
    Expenses:Taxes:Withholding Tax                     $-4,800.00 ; total amount of taxes already withheld
    Expenses:Taxes:Income Tax                           $4,500.00 ; 
    Expenses:Taxes:__________                             $200.00 ; 
    Assets:Account Receivable:Tax Benefits               $-100.00 ; any tax benefits accumulated in other places e.g. retirement plans or subsidised renovations
    Assets:Accounts Receivable:Refunds                    $200.00 ; difference is refunded

2022-08-31 Tax refund
    Assets:Accounts Receivable:Refunds                   -$200.00 
    Assets:Checking     
```

## Tracking Meal Vouchers

Meal vouchers are tax-favorable ways to boost your income, the value
is not added to your checking account but to a separate payment card.
Furthermore the company _and_ the employee pay a share of this benefit.
A small amount is deducted from the paycheck, the company adds a
multiple of the employee contribution on top (untaxed) and the final
amount is deposited on the payment card.

```journal
2021-12-30 Salary December 2021
    Income:Salary:Gross                               $-2,000.00 ; gross income
    Expenses:Salary:Social Security                      $300.00
    Expenses:Salary:Withholding Tax                      $400.00 
    Income:Your Company:Untaxed                         $-200.00 ; Untaxed benefits e.g. Work From Home compensation

    Expenses:Salary:Meal Voucher Contribution             $20.00
    Income:Salary:Meal Voucher:Employee Contribution     $-20.00
    Income:Salary:Meal Voucher:Employer Contribution    $-120.00

    Assets:Accounts Receivable:Salary                  $1,500.00 ; net income
    Assets:Accounts Receivable:Meal Voucher              $140.00

2022-01-03 Salary deposit December 2021
    Assets:Accounts Receivable:Salary                 -$1,200.00 
    Assets:Checking                                    $1,200.00

2022-01-10 Meal Voucher deposit December 2021
    Assets:Accounts Receivable:Meal Voucher             -$140.00 
    Assets:Meal Voucher                                  $140.00 
 
2022-07-15 Tax
    Expenses:Taxes:Withholding Tax                     $-4,800.00 ; total amount of taxes already withheld
    Expenses:Taxes:Income Tax                           $4,500.00 ; 
    Expenses:Taxes:__________                             $200.00 ; 
    Assets:Account Receivable:Tax Benefits               $-100.00 ; any tax benefits accumulated in other places e.g. retirement plans or subsidised renovations
    Assets:Accounts Receivable:Refunds                    $200.00 ; difference is refunded

2022-08-31 Tax refund
    Assets:Accounts Receivable:Refunds                   -$200.00 
    Assets:Checking    
```
