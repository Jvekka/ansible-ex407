#!/bin/bash
ansible all -i inventory -m group -a "name=devops state=present" --become --ask-pass
ansible all -i inventory -m user -a "name=automation comment='Ansible Automation' groups=devops append=true password={{ 'Salasana123!' | password_hash('sha512') }}" --become --ask-pass
ansible all -i inventory -m copy -a "dest='/etc/sudoers.d/devops' content='%devops ALL=(ALL) NOPASSWD:ALL' mode=0440 validate='visudo -cf %s'" --become --ask-pass