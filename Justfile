@_default:
    just --list

@fetch:
    vl fetch fedora-34

@vm state="up":
    vl {{state}}

@vm-ssh:
    vl ssh titanium-server

@provision host="vm":
    ansible-playbook --limit {{host}} playbook.yaml
