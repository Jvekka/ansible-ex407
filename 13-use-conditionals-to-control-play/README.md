# 13 Use Conditionals to Control Play Execution

Create a playbook ```/home/automation/plays/sysctl.yml``` that runs on all inventory hosts and does the following:

- If a server has more than 2048MB of RAM, then parameter ```vm.swappiness``` is set to ```10```.
- If a server has less than 2048MB of RAM, then the following error message is displayed:

```Server memory less than 2048MB```

[check physical memory](https://stackoverflow.com/questions/43636503/ansible-how-to-check-the-physical-memory-and-free-disk-is-greater-than-some-va)
[ansible and hardware checks](https://stackoverflow.com/questions/38033996/ansible-and-hardware-checks)
