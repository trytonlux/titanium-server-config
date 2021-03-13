.PHONY: help provision

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## Initializes Terraform
	@terraform -chdir=infrastructure init

plan: ## Plan out the infrastructure to build/change
	@terraform -chdir=infrastructure plan

apply: ## Build the infrastructure
	@terraform -chdir=infrastructure apply -auto-approve

destroy: ## Destroy the infrastructure
	@terraform -chdir=infrastructure destroy -auto-approve

ssh: ## SSH into the VM
	@ssh titanium-server.vm

provision: ## Run the Ansible playbook
	@cd provision; \
	ansible-playbook provision.yaml

deploy: ## Build and provision the VM
deploy: apply provision