% Splitting the bill

You went to dinner with a few friends, and the restaurant owner prefers
a single bill for the table. Either you or one of your friends pays. Or
you're all throwing cash on a pile and use that.

Note: these examples assume a `Liabilities:Accounts Payable` /
`Assets:Accounts Receivable` split between money you owe and money
you're owed. They can be simplified by using `Liabilities:Debt` for both
(the sign indicating who ought to pay whom).

## A friend pays

```journal
2021-01-01 This Pizza Place | Fungi
    Expenses:Food:Pizza                         $15.00 ; you're expending money for a pizza
    Liabilities:Accounts Payable:Friend A      $-15.00 ; but friend A is paying

2021-01-02 Evening the odds
    Liabilities:Accounts Payable:Friend A       $15.00 ; pay back friend A
    Assets:Cash                                $-15.00 ; from your wallet
```

## You're paying

```journal
2021-01-01 This Pizza Place | Fungi
    Expenses:Food:Pizza                         $15.00 ; you're expending money for a pizza
    Assets:Accounts Receivable:Friend A         $15.00 ; you're also paying for friend A
    Assets:Accounts Receivable:Friend B         $15.00 ; and for friend B
    Assets:Cash                                $-45.00 ; from your wallet

2021-01-02 Evening the odds
    Assets:Cash                                 $15.00 ; to your wallet
    Assets:Accounts Receivable:Friend A        $-15.00 ; get payed back

2021-01-09 Evening the odds
    Assets:Checking                             $15.00 ; to your bank account
    Assets:Accounts Receivable:Friend B        $-15.00 ; they're always slow to pay back
```

## You payed less than you should've

```journal
2021-01-01 This Pizza Place
    Expenses:Food:Pizza                         $15.00 ; you're expending money for a pizza
    Assets:Cash                                $-10.00 ; from your wallet
    Liabilities:Accounts Payable:Pizza Outing   $-5.00 ; you're not yet sure who payed too much

2021-01-02 Evening the odds
    Liabilities:Accounts Payable:Pizza Outing    $5.00 ; friend A payed too much
    Assets:Checking                             $-5.00

; the latter could be repeated for multiple friends
```

## You payed more than you should've

```journal
2021-01-01 This Pizza Place
    Expenses:Food:Pizza                         $15.00 ; you're expending money for a pizza
    Assets:Accounts Receivable:Pizza Outing      $5.00 ; you're not yet sure who payed too little
    Assets:Cash                                $-20.00 ; from your wallet

2021-01-02 Evening the odds
    Assets:Checking                              $5.00
    Assets:Accounts Receivable:Pizza Outing     $-5.00 ; friend B payed too little

; the latter could be repeated for multiple friends
```

## You're managing the pile

Someone has to manage the pile of cash, and if your friends know you're
into PTA, it's likely to be you. This assumes everyone hands you their
contributions and you store this in your wallet.

```journal
2021-01-01 This Pizza Place
    ; Get this information from the bill
    Expenses:Food:Pizza                         $13.00 ; Fungi for you
    Assets:Accounts Receivable:Friend A         $12.00 ; Quattro Formaggi for friend A
    Assets:Accounts Receivable:Friend B         $11.00 ; Margherita for friend B
    Assets:Cash                                  $9.00 ; remainder after paying
    ; Note/remember this when receiving cash
    Assets:Cash                                $-20.00 ; your contribution
    Liabilities:Accounts Payable:Friend A      $-20.00 ; contribution by friend A
    Liabilities:Accounts Payable:Friend B       $-5.00 ; contribution by friend B
```

After, sum the amount for each friend. Here, friend A sums to $-8.00.
That's negative, so you owe them $8.00. Friend B sums to $6.00. That's
positive, so they owe you $6.00.

```journal
2021-01-02 Evening the odds
    Liabilities:Accounts Payable:Friend A       $20.00 ; back to zero
    Assets:Accounts Receivable:Friend A        $-12.00 ; back to zero
    Assets:Cash                                 $-8.00 ; from your wallet

2021-01-02 Evening the odds
    Assets:Cash                                  $6.00 ; from your wallet
    Liabilities:Accounts Payable:Friend B        $5.00 ; back to zero
    Assets:Accounts Receivable:Friend B        $-11.00 ; back to zero
```
