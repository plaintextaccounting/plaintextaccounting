% Splitting rent and utilities

Rent and Utilities can be split in different ways, in this case you
pay all the bills and 2 roommates pay their share to a specific bank
account. Furthermore, the roommates pay their share for the following
month which means that until you pay the bills, the money is in a
liability account. Bills can be monthly/quarterly/yearly, but you would
still like to have your roommates pay the same sum every month so they
can automate the process. You would like to know how much in debt or
in credit you are towards your roommates, so when a yearly bill (e.g
insurance) is due you already have the money stashed in a liability
account.

Take the following example:

 - 900 EUR/month Rent -> You pay 280 EUR, roommate A pays 300 EUR,
   roommate B pays 320 EUR (prices differ because room sizes differ)

 - 60 EUR/month Internet -> 20 EUR monthly contribution

 - 90 EUR/quarter Water -> 10 EUR monthly contribution

 - 122.40 EUR/year Insurance -> 3.40 EUR monthly contribution

The example takes place in June, meaning that a monthly internet bill
and a quarterly water bill is received. The yearly insurance bill is not
received, which means that 3.40 of the utilities that your roommates
pay you are stored in a liability account. This would be more apparent
if each utility would have its own Liability:Utilities sub-account, so
feel free to expand upon this snippet if you would like to track these
details.

## Receiving the share

```journal
2021-05-25 * "Roommate A" "Subletting Roommate A June"
    Liabilities:Subletting                        -300.00 EUR
    Liabilities:Utilities                          -33.40 EUR
    Assets:Bank:HouseCheckingAccount               333.40 EUR

2021-05-29 * "Roommate B" "Subletting Roommate B June"
    Liabilities:Subletting                        -320.00 EUR
    Liabilities:Utilities                          -33.40 EUR
    Assets:Bank:HouseCheckingAccount               353.40 EUR
```

## Paying Bills

```journal
2021-06-04 * "Landlord" "Rent June"
    Assets:Bank:HouseCheckingAccount              -900.00 EUR
    Liabilities:Subletting                         300.00 EUR
    Liabilities:Subletting                         320.00 EUR
    Expenses:Rent                                  280.00 EUR

2021-06-15 * "Internet Provider" "Internet June"
    Assets:Bank:HouseCheckingAccount              -60.00 EUR
    Liabilities:Utilities                          20.00 EUR
    Liabilities:Utilities                          20.00 EUR
    Expenses:Utilities:Internet                    20.00 EUR

2021-06-20 * "Water Company" "Water Q2"
    Assets:Bank:HouseCheckingAccount              -90.00 EUR
    Liabilities:Utilities                          30.00 EUR
    Liabilities:Utilities                          30.00 EUR
    Expenses:Utilities:Water                       30.00 EUR
```
