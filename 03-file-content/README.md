# 03 Manage file content

Create a playbook ```/home/automation/plays/motd.yml``` that runs on all inventory hosts and does the following:

The playbook should replace any existing content of /etc/motd with text. Text depends on the host group.
On hosts in the proxy host group the line should be “Welcome to HAProxy server”.
On hosts in the webservers host group the line should be “Welcome to Apache server”.
On hosts in the database host group the line should be “Welcome to MySQL server”.

## Materials used

[Some fun with playbooks](https://tunnelix.com/some-funs-with-ansible-playbooks/)

[Ansible, Copy](https://docs.ansible.com/ansible/latest/collections/ansible/windows/win_copy_module.html)\
[Ansibile, Template](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/template_module.html)
