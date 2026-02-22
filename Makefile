.PHONY: help diff apply sync destroy list status template install-deps validate

help: ## Show this help message
	@echo "Helmfile Commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

diff: ## Show what changes would be applied
	helmfile diff

apply: ## Deploy (with diff)
	helmfile apply

sync: ## Deploy (no diff)
	helmfile sync

destroy: ## Destroy all releases
	helmfile destroy

list: ## List all configured releases
	helmfile list

status: ## Show release status
	helmfile status

template: ## Generate manifests
	helmfile template
