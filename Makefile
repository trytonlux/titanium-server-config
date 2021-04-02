.PHONY: help vm-init vm-build vm-destroy vm-ssh

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

vm-init: ## Initializes Terraform
	@terraform -chdir=vm init

vm-build: ## Create the VM
	@terraform -chdir=vm apply -auto-approve

vm-destroy: ## Destroy the VM
	@terraform -chdir=vm destroy -auto-approve

vm-ssh: ## SSH into the VM
	@ssh titanium-server.vm