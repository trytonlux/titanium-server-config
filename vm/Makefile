.PHONY: help init build destroy ssh provision

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## Initializes Terraform
	@terraform init

build: init ## Create the VM
	@terraform apply -auto-approve

destroy: ## Destroy the VM
	@terraform destroy -auto-approve

ssh: ## SSH into the VM
	@ssh titanium-server.vm

provision: ## Run Ansible against the VM
	@cd .. && \
	ansible-playbook --limit vm playbook.yaml