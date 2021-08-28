@_default:
    just --list

@vm:
    vl up

@vm-down:
    vl down

@provision host="vm":
    ansible-playbook --limit {{host}} playbook.yaml
