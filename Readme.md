# Ansible Laptop Config

Configuration of personal Kubunutu-based laptop in an Ansible playbook.

## Install requirements

```
make ansible requirements
```

## Run playbook

```
ansible-playbook -vv site.yaml
```

Run a specific role only

```
ansible-playbook -vv site.yaml -t vim
```
