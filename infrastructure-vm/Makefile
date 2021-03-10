.PONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

up:
	@terraform init

plan: ## Plan out the infrastructure to build/change
	@terraform plan

apply: ## Build the infrastructure
	@terraform apply -auto-approve

destroy: ## Destroy the infrastructure
	@terraform destroy -auto-approve

ssh: ## SSH into the VM
	@ssh fedora@titanium-server.vm

provision: ## Run the Ansible playbook
	@ansible-playbook provision.yaml