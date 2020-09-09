# Ansible Titanium Server

Playbook for Titanium-Server.

# Dependencies

```
ansible-galaxy install --roles-path=roles -r roles/requirements.yaml
```

# Running

Create inventory file:

```
cp inventory.yaml.example inventory.yaml
```

Replace `<Remote-IP>` with IP of server.

Run the playbook:

```
ansible-playbook server.yaml
```