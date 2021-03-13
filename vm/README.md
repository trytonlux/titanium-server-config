# VM

Creates a VM to test the Ansible playbook against.

```
$ make
plan:                          Plan out the infrastructure to build/change
apply:                         Build the infrastructure
destroy:                       Destroy the infrastructure
ssh:                           SSH into the VM
provision:                     Run the Ansible playbook
deploy:                        Build and provision the VM
```