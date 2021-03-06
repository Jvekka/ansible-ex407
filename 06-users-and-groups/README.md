# 06 Users and Groups

You have been provided with the list of users below.

Use ```/home/automation/plays/vars/user_list.yml``` file to save this content.

```yaml
---
users:
  - username: alice
    uid: 1201
  - username: vincent
    uid: 1202
  - username: sandy
    uid: 2201
  - username: patrick
    uid: 2202
```

Create a playbook ```/home/automation/plays/users.yml``` that uses the vault file ```/home/automation/plays/secret.yml``` to achieve the following:

- Users whose user ID starts with 1 should be created on servers in the webservers host group. User password should be used from the user_password variable.
- Users whose user ID starts with 2 should be created on servers in the database host group. User password should be used from the user_password variable.
- All users should be members of a supplementary group wheel.
- Shell should be set to /bin/bash for all users.
- Account passwords should use the SHA512 hash format.
- Each user should have an SSH key uploaded (use the SSH key that you created previously, see task #2).

After running the playbook, users should be able to SSH into their respective servers without passwords.

[Github, Error with vault value](https://github.com/ansible/ansible/issues/24425)\
[Generate crypted password](https://www.lisenet.com/2019/ansible-generate-crypted-passwords-for-the-user-module/)\
[Startwith in condition](https://serverfault.com/questions/960575/ansible-conditionals-wildcard-match-string)

[Ansible, Vault](https://docs.ansible.com/ansible/latest/user_guide/vault.html)