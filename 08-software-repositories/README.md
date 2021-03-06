# 08 Software Repositories

Create a playbook ```/home/automation/plays/repository.yml``` that runs on servers in the database host group and does the following:

- A YUM repository file is created.
- The name of the repository is mysql56-community.
- The description of the repository is “MySQL 5.6 YUM Repo”.
- Repository baseurl is http://repo.mysql.com/yum/mysql-5.6-community/el/7/x86_64/.
- Repository GPG key is at http://repo.mysql.com/RPM-GPG-KEY-mysql.
- Repository GPG check is enabled.
- Repository is enabled.

[Ansible YUM repository](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/yum_repository_module.html)
[how to list yum repositories](https://kerneltalks.com/howto/how-to-list-yum-repositories-in-rhel-centos/)