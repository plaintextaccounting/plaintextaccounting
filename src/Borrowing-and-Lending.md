% Borrowing and Lending

## Borrowing

```journal
2024-03-30 borrow from Helpful Harry
  liabilities:debts:hh  -100 = -100  ; optional balance assertion, added for clarity and checking
  assets:cash            100

2024-04-02 repay Harry
  assets:cash           -100
  liabilities:debts:hh   100 = 0     ; debt is fully repaid
```

## Lending

```journal
2020-01-01 lend to Trusty Tara
  assets:bank:checking  -100
  assets:loans:tt        100 = 100
  
2020-02-15 Tara payment
  assets:loans:tt        -50
  assets:bank:checking    50

2020-03-15 Tara payment
  assets:loans:tt        -50 = 0
  assets:bank:checking    50
```

[hledger: Borrowing and Lending](https://hledger.org/loans.html)

