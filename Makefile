.PHONY: help init-vm deploy-vm destroy-vm ssh-vm

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init-vm: ## Initializes Terraform
	@terraform -chdir=vm init

deploy-vm: init-vm ## Create the VM
	@terraform -chdir=vm apply -auto-approve

destroy-vm: ## Destroy the VM
	@terraform -chdir=vm destroy -auto-approve

ssh-vm: ## SSH into the VM
	@ssh titanium-server.vm