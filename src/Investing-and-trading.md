% Investing and trading

Stocks, cryptocurrencies, etc.

- [Beancount: Inventory Booking](https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4) (2014), [discussion](https://groups.google.com/forum/#!searchin/ledger-cli/inventory/ledger-cli/aQvbjTZa7HE/x3KNPteJWPsJ)
- [Beancount: Calculating Portfolio Returns](http://furius.ca/beancount/doc/returns) (2020)
- [hledger Cookbook: Investing and trading](https://hledger.org/cookbook.html#investing-and-trading)
- [[Restricted stock units]]

Several methods of accounting for investments and trading:

1. Lot subaccounts (all double-entry accounting software). 
   Each lot is given an explicit subaccount.
   Manual, flexible.
   - https://forum.plaintextaccounting.org/t/repost-example-calculating-uk-capital-gains-with-ledger/227/2

2. Lot syntax (Beancount & Ledger).
   Entries use special lot syntax.
   - Beancount: https://docs.google.com/document/d/1F8IJ_7fMHZ75XFPocMokLxVZczAhrBRBVN9uMhQFCZ4/edit#heading=h.katmw1lwm4yh
   - Ledger: https://ledger-cli.org/doc/ledger3.html#Buying-and-Selling-Stock

3. Auto-detected lots (hledger).
   An add-on tool detects lots from ordinary transactions, and helps generate buy/sell entries.
   - https://github.com/edkedk99/hledger-lots

