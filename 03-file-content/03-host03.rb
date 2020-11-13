# Check motd message
describe file('/etc/motd') do
  it { should exist }
  its('content') { should match (/Welcome to Apache server/) }
end
