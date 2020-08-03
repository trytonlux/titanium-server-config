# Ansible Titanium Server

Playbook for Titanium-Server.

# Running

Copy and create the inventory file. Then edit the new inventory file, uncommenting the appropriate line.

```
cp inventory.example inventory
```

Run the playbook, giving the sudo password on the server.

```
ansible-playbook play.yaml --ask-become-pass
```