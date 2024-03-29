% Multiple currencies

## Paypal conversions, reimbursements

A complicated real-life example (try to avoid this). 
Here were several ways of recording a situation involving

- a business expense in a foreign currency, made with paypal
- paypal's bank transfer and currency conversion transactions
- reimbursement due from a client
- business and personal accounts tracked in the same journal
- reimbursement due from business to personal

### Short version

A pragmatic condensed version.
The foreign currency and paypal transactions are noted only as comments, and don't appear in reports.
The client reimbursement balance is reported as $ (appropriate in this case since they were billed in dollars).

```journal
2022-03-16 * mail-tester.com | for client
    ;  txnid:6J734837CW8252237, paypal outflow
    ;  txnid:6T5967442S085784Y, refill from checking
    ;  txnid:5U407731S97694332, convert from €
    ;  txnid:7GR54150TH923981E, convert to $
    JS:assets:receivable:cl:reimbursement         $5.74  ; for €5.00 mail-tester expense
    sm:assets:bank:wf:pchecking                 $ -5.74
    ; note business obligation to repay personal account
    JS:liabilities:payable:sm:reimbursement      $-5.74
    sm:assets:receivable:JS:reimbursement         $5.74
```

register
```
2022-03-16 mail-tester.com | for client             JS:assets:receivable:cl:reimbursement            $5.74         $5.74
                                                    sm:assets:bank:wf:pchecking                     $-5.74             0
                                                    JS:liabilities:payable:sm:reimbursement         $-5.74        $-5.74
                                                    sm:assets:receivable:JS:reimbursement            $5.74             0
```

balance -E
```
               $5.74  JS:assets:receivable:cl:reimbursement
              $-5.74  JS:liabilities:payable:sm:reimbursement
              $-5.74  sm:assets:bank:wf:pchecking
               $5.74  sm:assets:receivable:JS:reimbursement
--------------------
                   0  
```

### Compact version

The foreign currency was recorded, using @@ notation.
The client reimbursement balance is reported in the foreign currency, needing -B or similar to convert to $.
The paypal transactions are noted only as comments.

```journal
2022-03-16 * mail-tester.com | for client
    ; paypal purchase, drawn from checking
    ;  txnid:6J734837CW8252237, paypal outflow
    ;  txnid:6T5967442S085784Y, refill from checking
    ;  txnid:5U407731S97694332, convert from €
    ;  txnid:7GR54150TH923981E, convert to $
    JS:assets:receivable:cl:reimbursement         €5.00 @@ $5.74
    sm:assets:bank:wf:pchecking                  $-5.74
    ; note business obligation to repay personal account
    JS:liabilities:payable:sm:reimbursement      $-5.74
    sm:assets:receivable:JS:reimbursement         $5.74
```

register
```
2022-03-16 mail-tester.com | for client             JS:assets:receivable:cl:reimbursement            €5.00         €5.00
                                                    sm:assets:bank:wf:pchecking                     $-5.74        $-5.74
                                                                                                                   €5.00
                                                    JS:liabilities:payable:sm:reimbursement         $-5.74       $-11.48
                                                                                                                   €5.00
                                                    sm:assets:receivable:JS:reimbursement            $5.74        $-5.74
                                                                                                                   €5.00
```

balance -E
```
               €5.00  JS:assets:receivable:cl:reimbursement
              $-5.74  JS:liabilities:payable:sm:reimbursement
              $-5.74  sm:assets:bank:wf:pchecking
               $5.74  sm:assets:receivable:JS:reimbursement
--------------------
              $-5.74
               €5.00  
```
    

### Detailed version

A fully detailed version.
Equity is used for balanced currency conversions.
All transactions from paypal's CSV are included (generated by conversion rules).

```journal
2022-03-16 * mail-tester.com | for client
    ; txnid:6J734837CW8252237, itemid:, fromemail:, toemail:contact@woobeo.com, type:T0007, status:S
    sm:assets:online:paypal                      €-5.00 =* €-5.00
    JS:assets:receivable:cl:reimbursement         €5.00

2022-03-16 * T0300 for 6J734837CW8252237 Total price
    ; txnid:7GR54150TH923981E, itemid:, fromemail:, toemail:, type:T0300, status:S
    sm:assets:online:paypal                      $ 5.74 =* $ 5.74
    sm:assets:bank:wf:pchecking                 $ -5.74

2022-03-16 * T0200 for 6J734837CW8252237 Total price
    ; txnid:6T5967442S085784Y, itemid:, fromemail:, toemail:, type:T0200, status:S
    sm:assets:online:paypal                     $ -5.74 =* $ 0.00
    JS:equity:conversion                         $ 5.74

2022-03-16 * T0200 for 6J734837CW8252237 Total price
    ; txnid:5U407731S97694332, itemid:, fromemail:, toemail:, type:T0200, status:S
    JS:equity:conversion                         €-5.00
    sm:assets:online:paypal                       €5.00 =* €0.00

2022-03-16 * note business obligation to repay personal account
    JS:liabilities:payable:sm:reimbursement      $-5.74
    sm:assets:receivable:JS:reimbursement         $5.74

2022-03-16 * convert cl receivable from 6J734837CW8252237
    JS:assets:receivable:cl:reimbursement        €-5.00
    JS:equity:conversion                          €5.00
    JS:equity:conversion                         $-5.74
    JS:assets:receivable:cl:reimbursement         $5.74
```

register
```
2022-03-16 mail-tester.com | for client             sm:assets:online:paypal                         €-5.00        €-5.00
                                                    JS:assets:receivable:cl:reimbursement            €5.00             0
2022-03-16 T0300 for 6J734837CW8252237 Total price  sm:assets:online:paypal                         $ 5.74        $ 5.74
                                                    sm:assets:bank:wf:pchecking                    $ -5.74             0
2022-03-16 T0200 for 6J734837CW8252237 Total price  sm:assets:online:paypal                        $ -5.74       $ -5.74
                                                    JS:equity:conversion                            $ 5.74             0
2022-03-16 T0200 for 6J734837CW8252237 Total price  JS:equity:conversion                            €-5.00        €-5.00
                                                    sm:assets:online:paypal                          €5.00             0
2022-03-16 note business obligation to repay per..  JS:liabilities:payable:sm:reimbursement        $ -5.74       $ -5.74
                                                    sm:assets:receivable:JS:reimbursement           $ 5.74             0
2022-03-16 convert cl receivable from 6J734837CW..  JS:assets:receivable:cl:reimbursement           €-5.00        €-5.00
                                                    JS:equity:conversion                             €5.00             0
                                                    JS:equity:conversion                           $ -5.74       $ -5.74
                                                    JS:assets:receivable:cl:reimbursement           $ 5.74             0
```

balance -E
```
              $ 5.74  JS:assets:receivable:cl:reimbursement
                   0  JS:equity:conversion
             $ -5.74  JS:liabilities:payable:sm:reimbursement
             $ -5.74  sm:assets:bank:wf:pchecking
                   0  sm:assets:online:paypal
              $ 5.74  sm:assets:receivable:JS:reimbursement
--------------------
                   0  
```

## See also

- [Peter Selinger: Tutorial on multiple currency accounting](http://www.mscs.dal.ca/~selinger/accounting/tutorial.html)
- [ledger-currencies tutorial](https://github.com/mikekchar/ledger-currencies)
- [Understanding the valuation function and the market function](https://groups.google.com/d/msg/ledger-cli/dc6F-HvZOyE/5IuoxzMOBwAJ)
