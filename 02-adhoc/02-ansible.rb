# Ensure SSH keys are created
describe file('/home/automation/.ssh/id_rsa') do
  it { should exist }
end

describe file('/home/automation/.ssh/id_rsa.pub') do
  it { should exist }
end

# Adhoc play should exist
# Executable permission is 0100, but it is more in this one.
describe file('/home/automation/plays/adhoc') do
  it { should exist }
  its('mode') { should cmp '0775' }
end
