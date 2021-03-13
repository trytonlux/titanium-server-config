.PHONY: help provision

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init:
	@cd infrastructure; \
	terraform init

plan: ## Plan out the infrastructure to build/change
	@cd infrastructure; \
	terraform plan

apply: ## Build the infrastructure
	@cd infrastructure; \
	terraform apply -auto-approve

destroy: ## Destroy the infrastructure
	@cd infrastructure; \
	terraform destroy -auto-approve

ssh: ## SSH into the VM
	@ssh arch@titanium-server.vm

provision: ## Run the Ansible playbook
	@cd provision; \
	ansible-playbook provision.yaml

deploy: ## Build and provision the VM
deploy: apply provision