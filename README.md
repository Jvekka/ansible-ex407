# Training for Ansible EX407

These are based on Tomas's [Ansible sample exam](https://www.lisenet.com/2019/ansible-sample-exam-for-ex407/).
I have only created the environment for it, instructions and guide materials.

## Run Inspec

Inspec needs to be run from ```C:\opscode\inspec\bin``` to work properly.

Example
```cd C:\opscode\inspec\bin```
```.\inspec exec C:\personal-project\ansible-ex407\01-install-configure\01.rb -t ssh://automation@172.31.65.225 --password 'Password123!'```

## Copy answer files from hosts

```scp -rp automation@172.31.65.225:/home/automation/plays DESTINATION```

## TODO Automatic inventory

Parse ```vagrant ssh-config``` and create Ansible inventory somehow
