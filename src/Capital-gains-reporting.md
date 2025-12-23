% Capital gains reporting

Here is a quick intro to capital gains and tax reporting for investments, in the context of plain text accounting, as of 2025. Note this information here is unvetted, just my current understanding; so do your own research / use professional advice when appropriate.

If you have traditional investments or cryptocurrencies, you will typically incur

- revenues (when you receive payments/gifts/airdrops/rewards)
- expenses (when you send payments/gifts/fees)
- capital gains or losses (when you spend/sell/exchange an asset at a different price than its original cost)

In most countries, these affect how much tax you owe, and they must be tracked in detail.
From these numbers (revenues, expenses, long term and short term capital gains), you can calculate the tax due or prepare a tax filing.

Revenues and expenses are relatively easy to track and report; but capital gains can be difficult, depending on your country's rules.

## Capital gains for investments
For traditional investments, capital gains are calculated by your investment broker, and provided to you as a report suitable for tax filing each year.

## Capital gains for cryptocurrencies
Here the calculations are similar, but the landscape is more complicated.
If you have only used a centralised exchange, that will often calculate gains for you, similar to an investment broker.
But if you have used self-custodied wallets, decentralised exchanges, or other defi apps, you will be responsible for calculating gains and taxes owed from these.

## Cryptocurrency tax calculators
Cryptocurrency tax calculator apps exist to meet this need. They

1. Import all of your cryptocurrency activities, manually or via APIs, to build up the full picture
2. Calculate the capital gains, according to your country's rules (if supported).
3. Some of them will go further and calculate the specific numbers for tax reporting in your country.

There are two kinds:

- Online cryptocurrency tax calculators.\
  Bitcoin.Tax, Cointracker, Coinledger, Koinly, Summ, TokenTax are some of these. While convenient, online calculators add rather serious privacy risk: when they are hacked or infiltrated, potentially your entire past, present and future cryptocurrency activities can be seen and analysed.

- Offline cryptocurrency tax calculators.\
  These tend to be less featureful but more private, so we focus on them here. Some of them are:

  - [BittyTax] - UK and US variants (can do wallet-based cost tracking by using multiple configs)
  - [rotki]    - freemium, featureful, does not support US yet (wallet-based cost tracking, <https://github.com/rotki/rotki/issues/2438>)
  - [RP2]      - does not support US yet (<https://github.com/eprbell/rp2/issues/135>)

[bittytax]: https://github.com/BittyTax/BittyTax
[rotki]: http://rotki.com
[rp2]: https://github.com/eprbell/rp2

## Some ways to calculate cryptocurrency gains

### Export from wallets to a cryptocurrency tax calculator
From each real-world cryptocurrency wallet,

- export its lifetime history of transactions as CSV
- transform this to the CSV format required by the tax calculator, and import it there
- and add any extra configuration required to help the calculator build a true picture of events

"Wallet" here has a broad meaning:

- a self-custodied wallet on a blockchain
- or the wallet on an exchange
- or each individual BIP 32 account within a multi-account wallet
- or other places where a balance is held, like a liquidity pool or smart contract

In this method, there's no accounting app involved; you move the (single entry) data directly from your wallets to the tax calculator, which reconstructs the higher level (double entry) transactions and calculates the gains/tax reports.
The tax calculator may be able to automate some or all of the exporting/transforming/importing; otherwise it must be done manually.

### Export from a PTA app to a cryptocurrency tax calculator
As above, but if you have a full record of your cryptocurrency transactions in a PTA app, you could export from there instead.

Ideally, you could export the double entry data directly to the tax calculator, which would be more robust; but none currently support this.
So instead you export the (single entry) history from each cryptocurrency wallet account, transform that into importable CSV, and let the tax calculator reconstruct the history from these.

### Use a PTA app's builtin or third party gains calculator
Ledger and Beancount have builtin syntax for selecting lots at disposal time, and reports which show the resulting capital gains.
Beancount has the most robust support, and there might be some third-party plugins which enhance it.
hledger doesn't have this feature built in, but there are some third-party calculators which can use its data.
(hledger-lots, lotter..)

If you are already using a PTA app (or if you can export to one), this might be more convenient than dealing with another app.
However the current PTA gains calculators might be too limited to handle some situations, eg inter-wallet transfers.

### Use a PTA app to calculate gains manually
Using subaccounts, you can keep track of each lot and its cost (across acquisitions, transfers, splits, merges and disposals);
and select the appropriate lot(s) and costs to dispose of, as required by local regulations;
and thereby calculate the proper gain/loss in each disposal.

This method is intuitive, educational, and robust; it can be a good way to get started. But above a certain volume of transactions it can become unmanageable.

## Country notes

General notes on local rules (again, unvetted best understanding):

### USA
In the USA, calculating cryptocurrency gains requires:
- tracking the acquisition date, cost, and wallet of every purchase/acquisition over your lifetime
- tracking these across transfers/splits/merges/disposals
- disposing them in a required order, such as:

  - FIFO - first in first out
  - LIFO - last in first out
  - HIFO - highest cost first out
  - LOFO - lowest cost first out
  - SpecId - specific identification of lots

- and thereby calculating the capital gains or losses.

Before tax year 2025, disposal order was determined with "universal cost tracking" -
by considering all your holdings of an asset across all wallets.

From tax year 2025, it must be determined with "per-wallet cost tracking" -
separately within each wallet (or in the case of multi-account wallets, within each wallet account).

The "Safe Harbor" rule allows you to (once) allocate pre-2025 lots to specific wallets, at your discretion.
This could help optimise taxes in some cases.

You can freely transfer amounts between your wallets/accounts; 
their original cost basis (acquisition date, acquisition cost) moves with them. 
These transfers are not considered taxable events and do not incur capital gains.

You are allowed to freely choose disposal orders within a year or within a wallet - eg SpecId when it minimises gains, FIFO otherwise. If not using FIFO, you are expected to be able to back this up with records showing that the decision was made at transaction time. Ie, you're not allowed to change the disposal order to optimise the outcome, after the fact. 

In tax year 2026, this flexibility with choosing disposal order might be reduced.

### UK
In the UK, you use each asset's average cost across all wallets.
