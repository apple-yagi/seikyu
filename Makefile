
.PHONY: nock
nock:
	curl "http://localhost:8787/__scheduled?cron=*+*+*+*+*"
