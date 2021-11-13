# Titanium Server Config

IaC for Titanium Server

## Storage

Playbook assumes BTRFS pool is created and mounted at /storage.

## Samba

### Adding a User

While logged into server as admin user:

```shell
# add user locally
sudo useradd <username>

# add user to samba group
sudo usermod -a -G samba <username>

# add user to samba and set their smb password
sudo smbpasswd -a <username>

# create their home directory
mkdir /storage/files/<username>
sudo chown <username>:<username> /storage/files/<username>
sudo chmod 700 /storage/files/<username>
```
