# 12 Security

Create a playbook ```/home/automation/plays/selinux.yml``` that runs on hosts in the webservers host group and does the following:

- Uses the selinux RHEL system role.
- Enables httpd_can_network_connect SELinux boolean.
- The change must survive system reboot.
