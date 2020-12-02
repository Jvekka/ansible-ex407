#
describe file('/home/automation/plays/sysctl.yml') do
  its('content') { should match(/hosts: all/) }
  its('content') { should match(/ansible_memtotal_mb < 2048/) }
  its('content') { should match(/vm.swappines: 10/) }
end
