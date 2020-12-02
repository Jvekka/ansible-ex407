#
describe file('/etc/ansible/facts.d/custom.fact') do
  its('content') { should match(/[sample_exam]/) }
  its('content') { should match(/server_role=mysql/) }
end
