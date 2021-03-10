.PONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

up:
	@terraform init

plan: ## Show the Terraform plan
	@terraform plan

apply: ## Build the infrastructure
	@terraform apply

destroy: ## Destroy the infrastructure
	@terraform destroy
