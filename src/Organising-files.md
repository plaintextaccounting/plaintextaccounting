% Organising files

Most PTA apps support reading from multiple files at once,
by specifying them all on the command line or by having
files `include` other files. Should you use this feature ?

Just one file, and with transactions strictly ordered by date, is the simplest setup.
Especially while you are learning about PTA bookkeeping and your app's features.
It minimises choices and avoids having to learn how multiple files
interact with directives, balance assertions, balance assignments, etc.

As data grows, at some point you may want to split the journal into multiple files, eg because:

1. Reports have become noticeably/bothersomely slow.
   This might happen after months or years depending on your machine and your PTA app.

2. Editing, finding, organising entries in the big file has become bothersome. 
   This depends partly on your text editor's navigation features
   (eg Emacs users can fold sections of the journal, fold all entries to one line,
   filter the entries by a regexp and so on).

3. Reports are showing too much history, and you would like to see just recent data by default.

4. You would like to do some cleanup of old entries, without fear of affecting current reports.

Perhaps the easiest and first thing to split out is `P` price records.
You could put them all in a single prices file, but one file per currency/commodity is quite convenient.
Eg `eur.journal`, `jpy.journal`, `msft.journal` etc.

You might want to organise other directives, such as account or commodity declarations or account aliases, in their own files.
You'll need to check your PTA app's rules about how these directives affect other files, and how their sequence matters.
Eg in `hledger`, account and commodity declarations can be kept in a sub-file, but account aliases must be in a top-level or parent file.

Splitting files by account may be worth considering. 
It makes things more awkward when you need to transfer between accounts in different files.
But it can make sense where you have accounts with a lot of activity which don't interact much with the rest.

In the above cases, all of the files are still read together as a single file set,
and there is no reduction in data size or run time. For that, you must split by time.
This adds some complications, and isn't necessary for everyone, so we don't recommend it from the start.

But, most PTA users sooner or later will split files by time, and usually by year.
You might have an `all.journal` including all of the years, but also you can now choose
to read just one year or a subset of years when running reports, which is more efficient.
The new complication is how to arrange for correct account balances no matter which year file(s) you are processing.
You can read more about that in the links below, particularly hledger's `close` doc.

So, putting these things together, here is a common and relatively simple multi-file layout, 
with all files in the same directory for easy access:

```
2022.journal
2023.journal
2024.journal
all.journal
eur.journal
jpy.journal
msft.journal
...
```

And here is one with more files, 
including per-year declarations (allowing for an evolving chart of accounts, eg),
organised in per-year subdirectories:

```
2022/
 2022.journal
 2022-accounts.journal
 2022-commodities.journal
 2022-payees.journal
 2022-tags.journal
2023/
 2023.journal
 2023-accounts.journal
 2023-commodities.journal
 2023-payees.journal
 2023-tags.journal
2024/
 2024.journal
 2024-accounts.journal
 2024-commodities.journal
 2024-payees.journal
 2024-tags.journal
all.journal
eur.journal
jpy.journal
msft.journal
...
```

If you use a lot of CSV files or hledger CSV rules, you might want `csv/` or `rules/` subdirectories.

Or you might be using one of the third-party setups like hledger-flow, which define their own file layouts.

See also:

- https://ledger-cli.org/doc/ledger3.html#Archiving-Previous-Years
- https://hledger.org/hledger.html#close
- https://www.reddit.com/r/plaintextaccounting/comments/d69slp/how_do_you_manage_multiple_accounts_in/ (2019)
- https://www.reddit.com/r/plaintextaccounting/comments/fcx8ls/multifile_ledger_setup/ (2020)
- https://www.reddit.com/r/plaintextaccounting/comments/lhdy5c/how_to_handle_yearly_journals/ (2021)
- https://www.reddit.com/r/plaintextaccounting/comments/184fz8r/is_it_possible_to_get_balance_from_multiple/ (2023)
- https://groups.google.com/g/hledger/c/G0LLoV4PnBM/m/A2_5fXZQAgAJ (2023)
- https://www.reddit.com/r/plaintextaccounting/comments/18zxlbn/hledger_year_closing/ (2024)
- https://github.com/simonmichael/hledger/issues/2151
