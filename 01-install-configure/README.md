# 01 Ansible Installation and Configuration

Install ansible package on the control node (including any dependencies) and configure the following:

- Create a regular user automation with the password of devops. Use this user for all sample exam tasks and playbooks, unless you are working on the task #2 that requires creating the automation user on inventory hosts. You have root access to all five servers.
- All playbooks and other Ansible configuration that you create for this sample exam should be stored in /home/automation/plays.

## Create a configuration file /home/automation/plays/ansible.cfg to meet the following requirements

- The roles path should include /home/automation/plays/roles, as well as any other path that may be required for the course of the sample exam.
- The inventory file path is /home/automation/plays/inventory.
- Privilege escallation is disabled by default.
- Ansible should be able to manage 10 hosts at a single time.
- Ansible should connect to all managed nodes using the automation user.

## Used material

[create user on centos7](https://www.digitalocean.com/community/tutorials/how-to-add-and-delete-users-on-a-centos-7-server)
[configure your wim](https://link.medium.com/RqfQgHgKlbb )
[a good vimrc](https://dougblack.io/words/a-good-vimrc.html)
