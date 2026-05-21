
# Make temporary journals to copy-paste or import from.
# Files with a _ prefix are private and not committed.

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
	printf '\n### Balance sheet\n\n%s\n'                               "$$($(HLREPORT) bs -Y --drop 1)"                      >> .tmpmd
	printf '\n### Income statement\n\n%s\n'                            "$$($(HLREPORT) is -YTAS --pivot acct:tier --drop 1)" >> .tmpmd
	printf '\n### Running balance\n\n<div id="running">\n%s\n</div>\n' "$$($(HLREPORT) areg liabilities)"                    >> .tmpmd
	printf '\n### General journal\n\n<div id="txns">\n%s\n</div>\n'    "$$(hledger print -O html --explicit --round=soft)"   >> .tmpmd
	mv .tmpmd $(OUT)

# show a balance sheet demonstrating a balanced accounting equation
bse:
	@hledger bse --infer-equity --alias '/^(revenues|expenses)/=equity:retained' -t

# show revenue by sponsor tier
tiers:
	@hledger bal revenue -YAT --pivot acct:tier --title ''
