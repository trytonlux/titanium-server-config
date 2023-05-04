@provision:
  ansible-playbook playbook.yaml

@containers:
  ansible-playbook playbook.yaml --tags containers

@check:
  ansible-playbook playbook.yaml --check
