# 02 Ad-Hoc Commands

Generate an SSH keypair on the control node. You can perform this step manually.

Write a script ```/home/automation/plays/adhoc``` that uses Ansible ad-hoc commands to achieve the following:

- User automation is created on all inventory hosts (not the control node).
- SSH key (that you generated) is copied to all inventory hosts for the automation user and stored in ```/home/automation/.ssh/authorized_keys```.
- The automation user is allowed to elevate privileges on all inventory hosts without having to provide a password.

After running the adhoc script, you should be able to SSH into all inventory hosts using the automation user without password, as well as a run all privileged commands.

## Used material

[Use cases for ad-hoc tasks](https://docs.ansible.com/ansible/latest/user_guide/intro_adhoc.html)\
[create user accounts and setup ssh keys](http://minimum-viable-automation.com/ansible/use-ansible-create-user-accounts-setup-ssh-keys/)\
[Turn Your Ansible Playbook into a Bash Command](https://blog.ipspace.net/2017/10/turn-your-ansible-playbook-into-bash.html)\
[Quick bash script](https://gist.github.com/carlessanagustin/ddc06e1b4df1a175cbd3)\
[How to maintain sudoers](https://stackoverflow.com/questions/33359404/ansible-best-practice-for-maintaining-list-of-sudoers)\

[Ansible, lineinfile](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/lineinfile_module.html)\
[Ansible, user](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/user_module.html)\
[Ansible, authorized_key](https://docs.ansible.com/ansible/latest/collections/ansible/posix/authorized_key_module.html)\
