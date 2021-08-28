@_default:
    just --list

@vm:
    vl up

@vm-down:
    vl down

@vm-ssh:
    vl ssh titanium-server

@provision host="vm":
    ansible-playbook --limit {{host}} playbook.yaml
