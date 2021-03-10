# Ansible Titanium Server

Playbook for Titanium-Server.

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

# References

## NGINX Reverse Proxy

https://github.com/linuxserver/reverse-proxy-confs