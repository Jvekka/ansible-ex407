# 15 Work with Ansible Facts

Create a playbook ```/home/automation/plays/facts.yml```/ that runs on hosts in the database host group and does the following:

- A custom Ansible fact server_role=mysql is created that can be retrieved from ansible_local.custom.sample_exam when using Ansible setup module.
