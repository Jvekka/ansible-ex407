# 04, Configure SSH server

Create a playbook /home/automation/plays/sshd.yml that runs on all inventory hosts and configures SSHD daemon as follows:

- banner is set to /etc/motd
- X11Forwarding is disabled
- MaxAuthTries is set to 3

## Materials used

[uncomment comment](https://www.mydailytutorials.com/uncommentcomment-lines-files-using-ansible/)\
[Install SSH CentOS 7](https://phoenixnap.com/kb/how-to-enable-ssh-centos-7)\

[Ansible, lineinfile](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/lineinfile_module.html)\
[Ansible, handlers](https://docs.ansible.com/ansible/latest/user_guide/playbooks_handlers.html)\
