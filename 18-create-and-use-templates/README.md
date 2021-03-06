# 18 Create and Use Templates to Create Customised Configuration Files

Create a playbook ```/home/automation/plays/server_list.yml``` that does the following:

- Playbook uses a Jinja2 template ```server_list.j2``` to create a file ```/etc/server_list.txt``` on hosts in the database host group.
- The file ```/etc/server_list.txt``` is owned by the automation user.
- File permissions are set to 0600.
- SELinux file label should be set to net_conf_t.
- The content of the file is a list of FQDNs of all inventory hosts.

After running the playbook, the content of the file ```/etc/server_list.txt``` should be the following:

```yaml
ansible2.hl.local
ansible3.hl.local
ansible4.hl.local
ansible5.hl.local
```

Note: if the FQDN of any inventory host changes, re-running the playbook should update the file with the new values.
