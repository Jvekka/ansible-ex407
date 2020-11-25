# 11 Download Roles From Ansible Galaxy and Use Them

Use Ansible Galaxy to download and install geerlingguy.haproxy role in ```/home/automation/plays/roles```.

Create a playbook ```/home/automation/plays/haproxy.yml``` that runs on servers in the proxy host group and does the following:

- Use geerlingguy.haproxy role to load balance request between hosts in the webservers host group.
- Use roundrobin load balancing method.
- HAProxy backend servers should be configured for HTTP only (port 80).
- Firewall is configured to allow all incoming traffic on port TCP 80.

If your playbook works, then doing ```curl http://ansible2.hl.local/``` should return output from the web server (see task #10). Running the command again should return output from the other web server.

[how to set up firewalld](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-firewalld-on-centos-7)
[Ansible firewalld](https://docs.ansible.com/ansible/latest/collections/ansible/posix/firewalld_module.html)
