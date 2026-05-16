journals: plaintextaccounting-sponsorships.journal simonmichael-sponsorships.journal

plaintextaccounting-sponsorships.journal: github-pta.rules plaintextaccounting-sponsorships-all-time.csv
	hledger --rules github-pta.rules print -f plaintextaccounting-sponsorships-all-time.csv > plaintextaccounting-sponsorships.journal

simonmichael-sponsorships.journal: github-pta.rules simonmichael-sponsorships-all-time.csv
	hledger --rules github-pta.rules print -f simonmichael-sponsorships-all-time.csv > simonmichael-sponsorships.journal

