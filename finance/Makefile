
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

LEDGER_FILE=pta.journal

# check the journal
check:
	@hledger check -s ordereddates && echo ok

OUT=../src/finance.md
HLREPORT=hledger -O html --title '' -c '$$1000.'

# reports

# update the reports in finance.md
update:
	sed '/<!-- Everything below is regenerated/q' < $(OUT) > $(OUT).tmp
	{ \
	\
	printf "\n\n### Balance sheet\n\n" ; \
	$(HLREPORT) bs -Y -e tomorrow ; \
	\
	printf "\n\n### Income statement\n\n" ; \
	$(HLREPORT) is -YTAS -e tomorrow ; \
	\
	printf "\n\n### Revenue detail\n\n" ; \
	$(HLREPORT) bal revenue -YAT --pivot acct:tier --drop 1 ; \
	\
	printf "\n\n### Transactions\n\n" ; \
	hledger -O html --round=soft print -x -e tomorrow ; \
	\
	} >> $(OUT).tmp
	mv $(OUT).tmp $(OUT)

# show a balance sheet with retained earnings and conversion equity added, satisfying the accounting equation
bse:
	@hledger bse --infer-equity --alias '/^(revenues|expenses)/=equity:retained' -t

# show revenue by sponsor tier
tiers:
	@hledger bal revenue -YAT --pivot acct:tier --title ''

