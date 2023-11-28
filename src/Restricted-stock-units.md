% Restricted stock units

> The term restricted stock unit (RSU) refers to a form of compensation issued by an employer to an employee in the form of company shares
>
> -- Investopedia

```
; On the date RSUs are received, they are placed into an asset account and balanced against Income
2021-12-26 Google | Stock RSU
    Assets:Investment:Equity:Shares:Unvested:GOOG-RSU:20211226      200 GOOG
    Income:Salary:RSU:Unvested                                     -200 GOOG

; When they vest, the quantity in income needs to be translated to the actual price the 
; stocks were vested at. The remain in terms of the commodity but now moved to a vested asset account
2024-12-26 Google | Stock RSU Vests
    Assets:Investment:Equity:Shares:GOOG:20241226                   200 GOOG
    Assets:Investment:Equity:Shares:Unvested:GOOG-RSU:20211226     -200 GOOG
    Income:Salary:RSU:Unvested                                      200 GOOG
    Equity:Trading:RSU:US02079K1079-USD:US02079K1079               -200 GOOG
    Equity:Trading:RSU:US02079K1079-USD:USD                         4000.00 USD
    Income:Salary:RSU:Vested                                       -4000.00 USD

; Like any other stock sale, money is received into an asset account, balanced against income, 
; but also needs to be removed from the vested account
2025-06-01 Google | Stock RSU Sale
    Assets:Cash:USD                                             5000.00 USD
    Income:Capital:Short:US02079K1079                          -1000.00 USD
    Equity:Trading:RSU:US02079K1079-USD:USD                    -4000.00 USD
    Equity:Trading:RSU:US02079K1079-USD:US02079K1079            200 GOOG
    Assets:Investment:Equity:Shares:GOOG:20241226              -200 GOOG

```

## Resources 

[Investopedia Definition](https://www.investopedia.com/terms/r/restricted-stock-unit.asp)

[Stock Vesting in Beancount](https://beancount.github.io/docs/stock_vesting_in_beancount.html)
