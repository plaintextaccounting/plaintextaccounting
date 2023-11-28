% Time tracking

You can track time in the usual journal format. Eg with h/ledger, using non-balanced postings for convenience:

```journal
# a.journal
2022-01-01
   (time:work)   2h
   (time:rest)   1.5h
   (time:play)   2.5h
```

Strict version, disallowing undeclared accounts/commodities:

```journal
# b.journal
commodity h
account time:work
account time:rest
account time:play

2022-01-01
   (time:work)   2h
   (time:rest)   1.5h
   (time:play)   2.5h
```
```cli
$ ledger -f b.journal --pedantic bal
```
```cli
$ hledger -f b.journal -s bal
```

With beancount (always strict):

```beancount
# a.beancount
2000-01-01 open Equity:Time
2000-01-01 open Expenses:Time:Work
2000-01-01 open Expenses:Time:Rest
2000-01-01 open Expenses:Time:Play

2022-01-01 txn
   Expenses:Time:Work   2 HRS
   Expenses:Time:Rest   1.5 HRS
   Expenses:Time:Play   2.5 HRS
   Equity:Time
```
```cli
$ bean-report a.beancount bal
```

Or, there is timeclock format (ledger, hledger), which tracks clock-in/clock-out times:

```timeclock
# a.timeclock (hledger), or can be inlined in your main journal (ledger)
i 2009/03/27 09:00:00 projects:a
o 2009/03/27 17:00:34
i 2009/03/31 22:21:45 personal:reading:online
o 2009/04/01 02:00:34
i 2009/04/02 09:00:00 projects:b
o 2009/04/02 17:00:34
```

Or timedot format (hledger), for approximate/visual time logging (each dot is a quarter hour):

```timedot
# a.timedot

2016/2/1
fos:haskell   ....
biz:research  .
inc:client1   .... .... .... .... .... ....

2016-02-01
biz:research  .... ..
fos:hledger   .... .... ....
fos:ledger    0.25
fos:haskell   .5
inc:client1   2
```

CSV (SSV, TSV) is the most compact format. Here's a one-line-per-day TSV setup with hledger:

```tsv
# a.tsv
2022-01-01	2	1.5	2.5
2022-01-02	0	3	0
```
```rules
# a.tsv.rules
skip 1
fields date, work, rest, play
amount1  %work h
amount2  %rest h
amount3  %play h
account1 (time:work)
account2 (time:rest)
account3 (time:play)
```
```cli
$ hledger -f a.tsv bal -D
```

## See also

- [Ledger: Time Keeping](https://www.ledger-cli.org/3.0/doc/ledger3.html#Time-Keeping)
- [hledger: Timeclock format](https://hledger.org/hledger.html#timeclock-format)
- [hledger: Timedot format](https://hledger.org/hledger.html#timedot-format)
- [Timetracking and billing with (h)ledger](https://github.com/anarcat/ledger-timetracking)
- [hledger: Converting time to money](https://hledger.org/time-to-money.html)
- [hledger: Time planning](https://hledger.org/time-planning.html)
- [time tracking tools](#time-logging)
- [reddit: Ledger CLI time tracking and transaction account linking](https://www.reddit.com/r/plaintextaccounting/comments/e2sd0k/ledger_cli_time_tracking_and_transaction_account/)
- [arbeitszeit.py](https://github.com/haansn08/arbeitszeit.py)

