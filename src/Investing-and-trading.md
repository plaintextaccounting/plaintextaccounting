% Investing and trading

Stocks, cryptocurrencies, etc.

The main challenge of accounting for investments and trading in PTA is tracking lots and disposing (selling) them in the right order.
Here are several methods:

1. **Lot subaccounts** (works in all double-entry accounting software). 
   Each lot is given an explicit subaccount, entries are created manually.
   Flexible.
   - https://forum.plaintextaccounting.org/t/repost-example-calculating-uk-capital-gains-with-ledger/227/2

2. **Lot syntax** (Beancount & Ledger).
   The app has special syntax and support for lots.
   - Beancount: https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4/edit#heading=h.katmw1lwm4yh
   - Ledger: https://ledger-cli.org/doc/ledger3.html#Buying-and-Selling-Stock

3. **Lot entry-generating tools**.
   Add-on tools help generate lot-aware entries.
   - [lotter](https://src.d10.dev/lotter/doc/tip/README.md) detects lots from ordinary transactions, adds lot information to buy/sell entries. Runs ledger.
   - [hledger-lots](https://github.com/edkedk99/hledger-lots) detects lots from ordinary transactions, helps make buy/sell entries. Runs hledger.
   - [hledger-move](https://hledger.org/scripts.html#hledger-move) is a lower-level tool to help make trading (sell) entries. Works with hledger journals.
   - [docker-finance](https://gitea.com/EvergreenCrypto/docker-finance) 
      ([discussion](https://forum.plaintextaccounting.org/t/docker-finance-modern-accounting-for-the-power-user/189)) 
      does many things, possibly including making trading entries. Runs hledger-flow.

More:

- [Beancount: Inventory Booking](https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4) (2014), [discussion](https://groups.google.com/forum/#!searchin/ledger-cli/inventory/ledger-cli/aQvbjTZa7HE/x3KNPteJWPsJ)
- [Beancount: Calculating Portfolio Returns](http://furius.ca/beancount/doc/returns) (2020)
- [hledger Cookbook: Investing and trading](https://hledger.org/cookbook.html#investing-and-trading)
- [[Restricted stock units]]
- [Cryptocurrency](https://forum.plaintextaccounting.org/t/cryptocurrency/37) another discussion of lot subaccounts
- [Example: calculating UK capital gains with ledger](https://forum.plaintextaccounting.org/t/repost-example-calculating-uk-capital-gains-with-ledger/227) plus useful reference links