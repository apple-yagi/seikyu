
.PHONY: nock
nock:
	curl "http://localhost:8787/__scheduled?cron=*+*+*+*+*"

.PHONY: codegen-freee-api-client
codegen-freee-api-client:
	docker run --rm -v $(PWD)/src/client/freee:/freee openapitools/openapi-generator-cli:v7.0.1 generate \
		-i https://raw.githubusercontent.com/freee/freee-api-schema/master/iv/open-api-3/api-schema.yml \
		-g typescript-fetch \
		-o /freee \
		--additional-properties=typescriptThreePlus=true,stringEnums=true
