.DEFAULT_GOAL := help

.PHONY: test_run
test_run: ## Run test run
	mkdir -p /tmp/test_run/teststore
	@echo "Running tests in test_run directory..."
	copier copy --trust --overwrite \
		--data project_name=teststore \
		--data "secret_key=$$(openssl rand -hex 32)" \
        . /tmp/test_run/teststore


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'