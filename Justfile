@_default:
    just --list

@fetch:
    vl fetch fedora-34

@vm:
    vl up

@vm-down:
    vl down

@vm-ssh:
    vl ssh titanium-server

@provision host="vm":
    ansible-playbook --limit {{host}} playbook.yaml
