% Don't Sink Your First Attempts at Plaintext Accounting

*I wrote the article below to help newcomers to plaintext accounting. ... Enjoy! --Robert Nielsen, 2017/04/19*

Plain text accounting programs such as Ledger and Hledger are powerful, helpful tools, but your own user errors can take the wind out of your sails when you would rather be breezing through your accounting. Here, then, are several mistakes—ones that I have personally tested—that you will want to avoid in order to enjoy the benefits of plaintext accounting without unnecessary pain. 

## Preliminary assumptions:

- You have Ledger or Hledger already installed and running on your PC, and you are ready, or have already begun, to start entering your data. 

- You understand that there are normally three lines of text for each transaction, and you know basically what’s supposed to go in each line.

## Formatting Can Be Critical

The following two formatting errors will cause your work to come to a screeching halt. Here’s how to avoid them.

First, as you enter transactions, make sure that the second and third (and any additional) lines in a transaction are indented by at least one space. In other words, do this:

```journal
2017/01/15 Acme 
  Expenses:Household   $20.00 ;roadrunner trap
  Liabilities:CreditCard
```

Not this:

```journal
2017/01/15 Acme
Expenses:Household   $20.00 ;roadrunner trap
Liabilities:CreditCard
```

The above two transactions look very similar to the human eye, but the second one doesn’t work.

Another formatting issue that’s easy to miss, is that you need at least two spaces between the category ”Expenses:Household,” below) and the amount of the transaction (“$20.00”):

```journal
2017/01/15 Acme
  Expenses:Household  $20.00
  Liabilities:CreditCard
```

Contrast this with the wrong way:

```journal
2017/01/15 Acme
  Expenses:Household $20.00
  Liabilities:CreditCard
```

As it’s very hard to see the number of spaces in the critical parts, I have written them out in the two transactions below.

Correct:

```journal
2017/01/15 Acme
  Expenses:Household[space][space]$20.00
  Liabilities:CreditCard
```

Wrong:

```journal
2017/01/15 Acme
  Expenses:Household[space]$20.00
  Liabilities:CreditCard
```

Again, it’s easy for us humans to miss the difference between one space and two, but your plaintext accounting program will notice.

## Use Currency Symbols Consistently

Here’s another error that’s easy to make and easy to overlook – omitting a currency symbol. For example:

```journal
2017/01/15 Acme
  Expenses:Household   20.00
  Liabilities:CreditCard
```

If you have been working with US dollars, it’s very easy to think that the above 20.00 refers to $20.00, but Ledger and Hledger will process this amount as something other than US dollars. 

## Using a Comma When You Need a Period

Another mistake to avoid is inadvertently typing a comma where a decimal in required. Let’s say, for example, that you are recording the purchase of a yacht for slightly more than $1.2 million. Here is the error:

```journal
2017/01/16 Mega Yacht Company
   Expenses:Leisure   $1,245,449,72
   Assets:Bank:Checking
```

The correct way to write this is:

```journal
2017/01/16 Mega Yacht Company
   Expenses:Leisure   $1,245,449.72
   Assets:Bank:Checking
```

If you are using Emacs, erroneously using a comma instead of a decimal point as shown above can manifest itself as a confusing error message about no transactions that need to be cleared.

Finally, the above examples assume you are using a numbering system that separates thousands with commas and integers from fractions with periods. There are systems that separate thousands with periods and that use commas to separate integers and fractions. From my reading of the documentation, both Ledger and Hledger can work with either system, but the point remains not to use a comma when you mean to use a period and vice versa.

## Summary

- Indent the second and following lines of each transaction. The first line of the transaction needs to be flush left.

- Use two spaces after the transaction category and before the currency symbol (assuming that you are working with currency).

- Use the currency symbol before every amount that’s currency.

- Don’t use a comma when you need to write a decimal point.

So, avoid the above mistakes and enjoy some clear sailing with plaintext accounting.
