# 07 Scheduled Tasks

Create a playbook ```/home/automation/plays/regular_tasks.yml``` that runs on servers in the proxy host group and does the following:

- A root crontab record is created that runs every hour on first (1) minute.
- The cron job appends the file ```/var/log/time.log``` with the output from the date command.

[Ansible cron module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/cron_module.html)
