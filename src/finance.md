% Finance

---
toc: false
...

Simon Michael operates the "plaintextaccounting" organisation (together with contributors and moderators),
providing plaintextaccounting.org and forum.plaintextaccounting.org,
managed matrix rooms/space and IRC channel, support, outreach etc.
Simon also acts as CFO and fiscal host.
For more background, see [PTA forum news, 2024-03-18](https://forum.plaintextaccounting.org/t/pta-forum-news-2024-03-18/207)
and [A trial of Discourse for Plain Text Accounting discussions](https://forum.plaintextaccounting.org/t/a-trial-of-discourse-for-plain-text-accounting-discussions/5).

I want this organisation to be solvent and self-sustaining,
so if you find this work useful, and you are in a position to help financially, your support is much appreciated!

**To help cover project costs like hosting:**\
Any surplus will be used as judged best by the CFO, eg to reimburse costs, or to fund PTA-related work.

- [![github](https://img.shields.io/badge/Support_PTA_via-Github-limegreen "Sponsor the project leader via Github")](https://github.com/sponsors/plaintextaccounting)
- <span id="paypal-pta-button"></span>
<!-- - [![liberapay](https://img.shields.io/badge/Support_PTA_via-Liberapay-limegreen "Sponsor the project leader via Liberapay")](https://liberapay.com/plaintextaccounting) -->

**To support Simon:**

- [![github](https://img.shields.io/badge/Support_Simon_via-Github-limegreen "Sponsor the project leader via Github")](https://github.com/sponsors/simonmichael)
  (I won't know this is for PTA work - feel free to tell me)
- <span id="paypal-sm-button"></span>
<!-- - [![liberapay](https://img.shields.io/badge/Support_PTA_via-Liberapay-limegreen "Sponsor the project leader via Liberapay")](https://liberapay.com/simonmichael) -->

**To support other PTA maintainers/moderators:**\
Contact them. As yet they don't have much to do.

**Fees:** See the [fee info at hledger.org](https://hledger.org/sponsor.html#fees).

<script src="https://www.paypalobjects.com/donate/sdk/donate-sdk.js" charset="UTF-8"></script>
<script>

PayPal.Donation.Button({
env:'production',
hosted_button_id:'JDD3EZEA8JV6S',
image: {
src:'https://img.shields.io/badge/Support_PTA_via-Paypal-limegreen',
alt:'Support PTA via Paypal',
title:'Support PTA via Paypal',
}
}).render('#paypal-pta-button');

PayPal.Donation.Button({
env:'production',
hosted_button_id:'YPRN7KXV8LAQJ',
image: {
src:'https://img.shields.io/badge/Support_Simon_via-Paypal-limegreen',
alt:'Support Simon via Paypal',
title:'Support Simon via Paypal',
}
}).render('#paypal-sm-button');

</script>

## Reports

*2025-02: needs update*

<!-- Everything below is regenerated by make finance-md -->

<style>
td { padding:0 0.5em; }
td:nth-child(1) { white-space:nowrap; }
tr:nth-child(even) td { background-color:#eee; }
</style><link rel="stylesheet" href="hledger.css"><table><tr><th colspan="2" style="text-align:left"><h2>Balance Sheet 2024-04-11</h2></th></tr><tr><th></th><th>2024-04-11</th></tr><tr><td colspan="2">&nbsp;</td></tr><tr><th colspan="2" style="text-align:left">Assets</th></tr><tr><th style="text-align:left">total</th><th class="amount coltotal" style="text-align:right">0</th></tr><tr><td colspan="2">&nbsp;</td></tr><tr><th colspan="2" style="text-align:left">Liabilities</th></tr><tr><td class="account" style="text-align:left">liabilities:sm</td><td class="amount" style="text-align:right">25 USD</td></tr><tr><th style="text-align:left">total</th><th class="amount coltotal" style="text-align:right">25 USD</th></tr><tr><td colspan="2">&nbsp;</td></tr><tr><th style="text-align:left">Net:</th><th class="amount coltotal" style="text-align:right">-25 USD</th></tr></table>

<style>
td { padding:0 0.5em; }
td:nth-child(1) { white-space:nowrap; }
tr:nth-child(even) td { background-color:#eee; }
</style><link rel="stylesheet" href="hledger.css"><table><tr><th colspan="2" style="text-align:left"><h2>Income Statement 2024-03-30..2024-04-11</h2></th></tr><tr><th></th><th>2024-03-30..2024-04-11</th></tr><tr><td colspan="2">&nbsp;</td></tr><tr><th colspan="2" style="text-align:left">Revenues</th></tr><tr><td class="account" style="text-align:left">revenues:github</td><td class="amount" style="text-align:right">25 USD</td></tr><tr><th style="text-align:left">total</th><th class="amount coltotal" style="text-align:right">25 USD</th></tr><tr><td colspan="2">&nbsp;</td></tr><tr><th colspan="2" style="text-align:left">Expenses</th></tr><tr><td class="account" style="text-align:left">expenses:hosting</td><td class="amount" style="text-align:right">50 USD</td></tr><tr><th style="text-align:left">total</th><th class="amount coltotal" style="text-align:right">50 USD</th></tr><tr><td colspan="2">&nbsp;</td></tr><tr><th style="text-align:left">Net:</th><th class="amount coltotal" style="text-align:right">-25 USD</th></tr></table>

## General Journal
(<a href="https://github.com/plaintextaccounting/plaintextaccounting/blob/master/finance/pta.journal">source</a>)
```hledger
2024-03-30 begin tracking finances of the plaintextaccounting org.

2024-03-30 Discourse | begin $50/mo hosting at Discourse, with an advance from SM
    ; discussion: https://forum.plaintextaccounting.org/t/-/5
    expenses:hosting          50 USD
    liabilities:sm           -50 USD

2024-04-11 sponsor1 | one-time donation, used immediately
    revenues:github         -25 USD
    liabilities:sm           25 USD

```
