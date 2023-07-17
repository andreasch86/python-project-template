SHELL := /bin/bash

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clear-image: ## Remove containers used in tests
	@docker rmi python-project-template

format-code: ## Format your code
	@docker-compose -f bin/test.yml run --entrypoint "" --rm --no-deps test tox -e format

run-all: ## Run all tests for the project
	@docker-compose -f bin/test.yml run --entrypoint "" --rm --no-deps test tox

test: ## Run unit tests for the project
	@docker-compose -f bin/test.yml run --entrypoint "" --rm --no-deps test tox -e py39


notebook-build: ## Build notebook image
	@export HERE=$$(pwd) && docker-compose -f bin/notebook.yml build

notebook: notebook-build ## Launch a Jupyter Lab instance
	@export HERE=$$(pwd) && docker-compose -f bin/notebook.yml up
