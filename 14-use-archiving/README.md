# 14 Use archiving

Create a playbook ```/home/automation/plays/archive.yml``` that runs on hosts in the database host group and does the following:

- A file ```/mnt/mysql_backups/database_list.txt``` is created that contains the following line: dev,test,qa,prod.
- A gzip archive of the file ```/mnt/mysql_backups/database_list.txt``` is created and stored in ```/mnt/mysql_backups/archive.gz.```
