# virt-sandbox for virtualization and containerization

# Overrride needed variables ... later

# Run make
make setup

# @TODO

```sh
<network>
  <name>br0-default</name>
  <forward mode='bridge'/>
  <bridge name='br0'/>
</network>

virsh net-define --file br0-default.yml
virsh net-start br0-default
virsh net-autostart br0-default
virsh net-list --all
```
