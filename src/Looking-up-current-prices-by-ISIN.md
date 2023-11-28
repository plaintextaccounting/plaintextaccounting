% Looking up current prices by ISIN

Copied from a [post on beancount mailing list](https://groups.google.com/g/beancount/c/zSqZOM0a7Jk), addressing the question: Can the ISIN be used as the commodity symbol for all mutual funds, ETFs, stocks, and bonds, and to automate downloading of prices via an API?

It's not that simple (though there is a script for this, that is linked to at the end).  

A single ISIN can translate into multiple ticker symbols in multiple exchanges.  An ISIN only identifies the security but not the exchange.  The same security might be traded in multiple exchanges across different countries valued in different currencies and at slightly different prices (the price differences wouldn't be too large, else there'd be opportunities for arbitrage).  (And while there is a standard code for exchanges (called MIC, or market identification code), I don't know of many who actually use that.)

At one point, I was looking at converting ISIN into ticker symbols from the exchange I wanted information from, and then doing the look-up, but I realized that if you need to be specifying the exchange, one might as well directly get information from the exchange if it provides it.  That's what I ended up doing with small scripts like, which get information from the primary source:
https://github.com/the-solipsist/scripts/blob/master/ledger_get-indian-stock-prices_bse.sh
https://github.com/the-solipsist/scripts/blob/master/ledger_get-indian-mf-prices.sh
and so on.

There are tools (such as OpenFIGI) to get ticker symbols from ISIN.  So you could convert from ISIN into the ticker and then use sources like Alphavantage or Yahoo Finance.  The tool pricehist supports both, and can output to beancount format:
https://gitlab.com/chrisberkhout/pricehist

And there are also sources (such as Morningstar's API) which given an ISIN and an exchange, can provide you data.  Here's a Github project that makes use of Morningstar's API with ISIN:
https://github.com/LunaticMuch/msdownloader
