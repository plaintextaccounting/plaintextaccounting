
# make temporary journals to copy-paste or import from

TMPJOURNALS=\
	_plaintextaccounting-sponsorships.journal \
	_plaintextaccounting-sponsorships-anon.journal \
	_simonmichael-sponsorships.journal \
	_simonmichael-sponsorships-anon.journal \

tmp-journals: $(TMPJOURNALS)

clean:
	rm -f $(TMPJOURNALS)

_plaintextaccounting-sponsorships.journal: _github-sponsors.rules _plaintextaccounting-sponsorships-all-time.csv
	hledger --rules _github-sponsors.rules print -f _plaintextaccounting-sponsorships-all-time.csv > _plaintextaccounting-sponsorships.journal

_simonmichael-sponsorships.journal: _github-sponsors.rules _simonmichael-sponsorships-all-time.csv
	hledger --rules _github-sponsors.rules print -f _simonmichael-sponsorships-all-time.csv > _simonmichael-sponsorships.journal

_plaintextaccounting-sponsorships-anon.journal: github-sponsors.rules _plaintextaccounting-sponsorships-all-time.csv
	hledger --rules github-sponsors.rules print -f _plaintextaccounting-sponsorships-all-time.csv > _plaintextaccounting-sponsorships-anon.journal

_simonmichael-sponsorships-anon.journal: github-sponsors.rules _simonmichael-sponsorships-all-time.csv
	hledger --rules github-sponsors.rules print -f _simonmichael-sponsorships-all-time.csv > _simonmichael-sponsorships-anon.journal

# reports

LEDGER_FILE=pta.journal
HLREPORT=hledger -O html --title '' -c '$$1000.'
OUT=../src/finance.md

# check the journal
check:
	@hledger check -s ordereddates && echo ok

# update the reports in finance.md
reports: $(OUT)

$(OUT): pta.journal Makefile
	sed '/<!-- Everything below is regenerated/q' < $(OUT) > .tmpmd
	printf '\n### Balance sheet\n\n%s\n'                   "$$($(HLREPORT) bs -Y -e tomorrow)"                             >> .tmpmd
	printf '\n### Income statement\n\n%s\n'                "$$($(HLREPORT) is -YTAS -e tomorrow)"                          >> .tmpmd
	printf '\n### Revenue detail\n\n%s\n'                  "$$($(HLREPORT) bal revenue -YAT --pivot acct:tier --drop 1)"   >> .tmpmd
	# hacky css to hide some transaction columns
	printf '\n<style>\n#txns th:nth-child(1), #txns th:nth-child(3), #txns th:nth-child(4), #txns th:nth-child(5), #txns th:nth-child(9), #txns th:nth-child(13), #txns th:nth-child(14),\n#txns tr:has(>td[rowspan])>td:nth-child(1), #txns tr:has(>td[rowspan])>td:nth-child(3), #txns tr:has(>td[rowspan])>td:nth-child(4), #txns tr:has(>td[rowspan])>td:nth-child(5), #txns tr:has(>td[rowspan])>td:nth-child(9), #txns tr:has(>td[rowspan])>td:nth-child(13), #txns tr:has(>td[rowspan])>td:nth-child(14),\n#txns tr:not(:has(>td[rowspan]))>td:nth-child(2), #txns tr:not(:has(>td[rowspan]))>td:nth-child(6) { display: none; }\n</style>\n' >> .tmpmd
	printf '\n### Transactions\n\n<div id="txns"><small>\n%s\n</small></div>\n' "$$(hledger print -O html --explicit --round=soft -e tomorrow)" >> .tmpmd
	mv .tmpmd $(OUT)

# show a balance sheet with retained earnings and conversion equity added, satisfying the accounting equation
bse:
	@hledger bse --infer-equity --alias '/^(revenues|expenses)/=equity:retained' -t

# show revenue by sponsor tier
tiers:
	@hledger bal revenue -YAT --pivot acct:tier --title ''
