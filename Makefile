# Magic Makefile Help
.PHONY: help
help:
	@cat $(MAKEFILE_LIST) | grep -e "^[a-zA-Z_\-]*: *.*## *" | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

APP_NAME = anime-db

build: ## Build the container without caching
	docker build --no-cache -t $(APP_NAME) .

run: build ## Run container
	docker run -i -t --rm --name="$(APP_NAME)" $(APP_NAME) $(task)

stop: ## Stop the container
	docker kill $(APP_NAME) || true
