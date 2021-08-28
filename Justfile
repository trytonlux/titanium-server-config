@_default:
    just --list

@fetch:
    vl fetch fedora-34

@vm state="up":
    vl {{state}}

ssh host="vm":
    #!/bin/sh
    if [ "{{host}}" == "vm" ]; then
        vl ssh titanium-server
    fi

@provision host="vm":
    ansible-playbook --limit {{host}} playbook.yaml
