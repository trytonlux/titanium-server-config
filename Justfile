@_default:
    just --list

@vm:
    terraform -chdir=vm init
    terraform -chdir=vm apply --auto-approve

@vm-destroy:
    terraform -chdir=vm destroy --auto-approve

@vm-ssh:
    ssh admin@titanium-server.vm

@vm-provision:
    ansible-playbook --limit vm playbooks/vm.yaml