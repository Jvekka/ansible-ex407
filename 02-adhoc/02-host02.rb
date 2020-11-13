# Test adhoc script results
describe file('/home/automation/.ssh/authorized_keys') do
  it { should exist }
end

describe user('automation') do
  it { should exist }
  its('groups') { should eq ['wheel']}
end

# Check sudoers file for wheel permissions
describe file('/etc/sudoers') do
  it { should exist }
  its('content') { should match (/^%wheel(.*)ALL=\(ALL\)(.*)NOPASSWD:(.*)ALL/) }
end
