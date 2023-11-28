% Mortgages

Buying a car or a house? You're probably getting a loan.

## Ledger / HLedger

### Paying some principal

```journal
2021-01-01 Real estate agency | Buying the house
    Assets:House:Acquisition             $100,000.00 ; your house is an asset
    Assets:Checking                      $-10,000.00 ; paying part of the house directly
    Liabilities:Accounts Payable:A Bank  $-90,000.00 ; getting a loan for the remainder

2021-02-01 A Bank | Monthly payment
    Expenses:House:Mortgage                  $100.00 ; part of the payment is interest
    Liabilities:Accounts Payable:A Bank      $400.00 ; part of the payment reduces the debt
    Assets:Checking                         $-500.00

; repeat above transaction every month, possibly with varying ratio/sum
```

### Interest-only loan

```journal
2021-01-01 Real estate agency | Buying the house
    Assets:House:Acquisition             $100,000.00 ; your house is an asset
    Assets:Checking                      $-10,000.00 ; paying part of the house directly
    Liabilities:Accounts Payable:A Bank  $-90,000.00 ; getting a loan for the remainder

2021-02-01 A Bank | Monthly payment
    Expenses:House:Mortgage                  $500.00 ; all of the payment is interest
    Assets:Checking                         $-500.00

; repeat above transaction every month, possibly with varying payment
```

### Tracking a property's value

```journal
2019/01/01 Buy House
    Assets:House                                      $500,000.00
    Liabilities:Mortgage

2019/02/01 Mortgage Payment
    Liabilities:Mortgage                                $1,000.00
    Expenses:Interest:Real Estate                         $833.33
    Assets:Cash                                         $-1833.33

2019/03/01 Mortgage Payment
    Liabilities:Mortgage                                $1,002.00
    Expenses:Interest:Real Estate                         $831.33
    Assets:Cash                                         $-1833.33

; Adjust the house's value based on current price estimates
2019/03/15 Zillow Price Estimate
    Assets:House                                                  = $505,000.00
    Equity:Unrealized Gains
```
## Beancount

Using beancount we can track the prices and house using the pricing and inventory management.

### Initial Setup

``` journal
* Options
option "title" "House Example"
option "operating_currency" "USD"
option "render_commas" "TRUE"

* Plugins

plugin "beancount.plugins.auto"
plugin "beancount.plugins.unrealized" "Unrealised"
```

### Declare Useful Commodities
``` journal
* Commodities and Currencies

2020-01-01 commodity USD
2020-01-01 commodity H123
  address: "123 Any Street, Beverley Hills,  90210"
  ; we record that we have a house with this commodity

```

### Buy House

``` journal

2020-01-01 * "Opening" "Get some money"
  Assets:Bank                     30,000 USD
  Equity:Opening-Balances

2020-01-01 open Liabilities:Mortgage:H123 USD
  ; open mortgage account
  rate: "2.5%"
  term: "25y fixed"
  payments: 807.51 USD
  ; these notes are just to remind outselves.

2020-01-01 * "Buy House"
  Assets:House:H123                    1 H123 { 200,000.USD, 2020-01-01 }
  ; buy one H123 at 200k USD on this date (inventory)
  Liabilities:Mortgage:H123  -180,000.00 USD ; Take on the mortgage
  Expenses:Fees                   499.95 USD ; Mortgage setup fee
  Expenses:Legal                   2,500 USD ; Pay the lawyers
  Assets:Bank                 -20,000.00 USD ; deposit on house
  Assets:Bank                  -2,999.95 USD ; Bank mortgage arrangement fees
```

### Mortgage Payments
```journal
2020-02-01 * "Mortgage"
  Assets:Bank                    -807.51 USD ; payment
  Expenses:Interest:H123          375.00 USD ; interest
  Liabilities:Mortgage:H123       432.51 USD ; principle

2020-03-01 * "Mortgage"
  Assets:Bank                    -807.51 USD
  Expenses:Interest:H123          374.10 USD
  Liabilities:Mortgage:H123

2020-04-01 * "Mortgage"
  Assets:Bank                    -807.51 USD
  Expenses:Interest:H123          372.29 USD
  Liabilities:Mortgage:H123

```

### Adjust House Price

```journal
2021-01-01 price H123         220,000.00 USD
  note: "Market value increases" ; bean-report holdings will show this increase.


```

### Check Holdings

```text
$ bean-report house.bean holdings

Account                          Units  Currency  Cost Currency  Average Cost       Price   Book Value  Market Value
-------------------------  -----------  --------  -------------  ------------  ----------  -----------  ------------
Assets:Bank                   4,577.52       USD            USD                               4,577.52      4,577.52
Assets:House:H123                 1.00      H123            USD    200,000.00  220,000.00   200,000.00    220,000.00
Liabilities:Mortgage:H123  -178,698.86       USD            USD                            -178,698.86   -178,698.86
-------------------------  -----------  --------  -------------  ------------  ----------  -----------  ------------
```
