% Investing and trading

Stocks, cryptocurrencies, etc.

Here are several methods of accounting for investments and trading in PTA:

1. Lot subaccounts (works in all double-entry accounting software). 
   Each lot is given an explicit subaccount, entries are created manually.
   Flexible.
   - https://forum.plaintextaccounting.org/t/repost-example-calculating-uk-capital-gains-with-ledger/227/2

2. Lot syntax (Beancount & Ledger).
   Entries use special lot syntax.
   - Beancount: https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4/edit#heading=h.katmw1lwm4yh
   - Ledger: https://ledger-cli.org/doc/ledger3.html#Buying-and-Selling-Stock

3. Entry-generating tools.
   - [hledger-lots](https://github.com/edkedk99/hledger-lots) detects lots from ordinary transactions, helps make buy/sell entries. Runs hledger.
   - [hledger-move](https://hledger.org/scripts.html#hledger-move) is another tool to help make trading (sell) entries. Works with hledger journals.
   - [docker-finance](https://gitea.com/EvergreenCrypto/docker-finance) ([discussion](https://forum.plaintextaccounting.org/t/docker-finance-modern-accounting-for-the-power-user/189)) helps make trading entries (& many other features). Runs hledger-flow.
   - Maybe some other tools at https://plaintextaccounting.org/#data-generation.

More:

- [Beancount: Inventory Booking](https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4) (2014), [discussion](https://groups.google.com/forum/#!searchin/ledger-cli/inventory/ledger-cli/aQvbjTZa7HE/x3KNPteJWPsJ)
- [Beancount: Calculating Portfolio Returns](http://furius.ca/beancount/doc/returns) (2020)
- [hledger Cookbook: Investing and trading](https://hledger.org/cookbook.html#investing-and-trading)
- [[Restricted stock units]]
- [Cryptocurrency](https://forum.plaintextaccounting.org/t/cryptocurrency/37) another discussion of lot subaccounts
- [Example: calculating UK capital gains with ledger](https://forum.plaintextaccounting.org/t/repost-example-calculating-uk-capital-gains-with-ledger/227) plus useful reference links