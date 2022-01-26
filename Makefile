##@ General

help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' Makefile

list: ## list all categories and extensions
	@sh ./render/list
dups: ## list all duplicate extensions present in more categories
	@sh ./render/list-duplicates

json-categories: ## build the json dictionary for { category: [ extensions.. ], .. }
	@sh ./render/json-categories

json-extensions: ## build the json dictionary for { extension: [ category ], .. }
	@sh ./render/json-extensions

release: ## update the local render in pub/ for release
	@mkdir -p pub
	sh ./render/json-extensions | jq . > pub/extensions.json
	sh ./render/json-categories | jq . > pub/categories.json
