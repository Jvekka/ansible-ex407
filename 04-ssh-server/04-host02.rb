# Check motd message
describe file('/etc/ssh/sshd_config') do
  it { should exist }
  its('content') { should match (/^X11Forwarding(.*)no/) }
  its('content') { should match (/^MaxAuthTries(.*)3/) }
  its('content') { should match (/^Banner(.*).etc.motd/) }
end
