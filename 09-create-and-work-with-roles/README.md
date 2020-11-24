# 09 create and work with roles

Create a role called sample-mysql and store it in ```/home/automation/plays/roles```. The role should satisfy the following requirements:

- A primary partition number 1 of size 800MB on device ```/dev/sdb``` is created.
- An LVM volume group called ```vg_database``` is created that uses the primary partition created above.
- An LVM logical volume called ```lv_mysql``` is created of size 512MB in the volume group ```vg_database```.
- An XFS filesystem on the logical volume ```lv_mysql``` is created.
- Logical volume ```lv_mysql``` is permanently mounted on ```/mnt/mysql_backups```.
- mysql-community-server package is installed.
- Firewall is configured to allow all incoming traffic on MySQL port TCP 3306.
- MySQL root user password should be set from the variable database_password (see task #5).
- MySQL server should be started and enabled on boot.
- MySQL server configuration file is generated from the ```my.cnf.j2``` Jinja2 template with the following content:

```yaml
[mysqld]
bind_address = {{ ansible_default_ipv4.address }}
skip_name_resolve
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock

symbolic-links=0
sql_mode=NO_ENGINE_SUBSTITUTION,STRICT_TRANS_TABLES

[mysqld_safe]
log-error=/var/log/mysqld.log
pid-file=/var/run/mysqld/mysqld.pid
```

Create a playbook ```/home/automation/plays/mysql.yml``` that uses the role and runs on hosts in the database host group.

[Ansible parted](https://docs.ansible.com/ansible/latest/collections/community/general/parted_module.html)
[Ansible lvg](https://docs.ansible.com/ansible/latest/collections/community/general/lvg_module.html)
[Ansible lvol](https://docs.ansible.com/ansible/latest/collections/community/general/lvol_module.html)
[Ansible filesystem](https://docs.ansible.com/ansible/latest/collections/community/general/filesystem_module.html)
[Ansible mount](https://docs.ansible.com/ansible/2.9_ja/modules/mount_module.html)
[Ansible package](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/package_module.html)
[Ansible firewalld](https://docs.ansible.com/ansible/2.5/modules/firewalld_module.html)

[change mysql root password](https://dba.stackexchange.com/questions/102066/ansible-how-to-change-mysql-server-root-password-by-reprovisioning-the-server)
[automated mysql server preparation](https://www.continuent.com/resources/blog/automated-mysql-server-preparation-using-ansible)
[create logical volume](https://www.linuxsysadmins.com/creating-logical-volume-using-ansible/)
